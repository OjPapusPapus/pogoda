import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.io.FileWriter;
import java.util.ArrayList;

public class Program {

    private static ArrayList<Forecast> forecasts = new ArrayList<Forecast>();

    public static void main(String[] args) {

        try {
            Document doc = Jsoup.connect("https://pogoda.interia.pl/prognoza-dlugoterminowa-tabela,cId,1202046").get();


            Elements rows = doc.getElementsByClass("weather-forecast-longterm-list-entry");

            for (Element row : rows) {
                Elements spans = row.getElementsByClass("weather-forecast-longterm-list-entry-hour").first().getElementsByTag("span");
                String date = spans.get(0).text() + " " + spans.get(1).text();
                String temp = row.getElementsByClass("weather-forecast-longterm-list-entry-forecast-temp").first().text();
                String lowTemp = row.getElementsByClass("weather-forecast-longterm-list-entry-forecast-lowtemp").first().text();
                String sun = row.getElementsByClass("weather-forecast-longterm-list-entry-forecast-phrase").first().getAllElements().first().text();

                System.out.println(date + ", " + temp + " : " + lowTemp + ", " + sun);
                forecasts.add( new Forecast(date, temp, lowTemp, sun) );
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

        String fileText = "Data,Temperatura,Najniższa Temperatura,Zachmurzenie\n";
        for(Forecast o : forecasts) {
            fileText += o.date + "," + o.temp + "," + o.tempLow + "," + o.sun + '\n';
        }

        try {
            FileWriter myWriter = new FileWriter("prognoza.txt");
            myWriter.write(fileText);
            myWriter.close();
        } catch (IOException e) {  e.printStackTrace(); }

        ForecastDatabaseWriter.initialize();
        ForecastDatabaseWriter.clearEventDataFromDatabase();
        ForecastDatabaseWriter.saveToDatabase(forecasts);
    }
}
