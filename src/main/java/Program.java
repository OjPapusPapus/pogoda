import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class Program {
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
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

    }
}
