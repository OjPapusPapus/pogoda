import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class Program {
    public static void main(String[] args) {

        try {
            Document doc = Jsoup.connect("https://pogoda.interia.pl/prognoza-dlugoterminowa-tabela,cId,1202046").get();
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

    }
}
