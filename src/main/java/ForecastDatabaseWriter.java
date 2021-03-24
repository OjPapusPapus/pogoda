import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ForecastDatabaseWriter {
    private static Connection connection;

    public static void initialize() {
        String url = "jdbc:mysql://localhost:3306/pogoda";
        String user = "root";
        try {
            connection = DriverManager.getConnection(url, user, "");


        } catch (SQLException se) {
            se.printStackTrace();
        }
    }

    public static void clearEventDataFromDatabase() {
        if (connection != null) {
            try {
                Statement myStmt = connection.createStatement();
                myStmt.executeUpdate("DELETE FROM prognozapogody WHERE 1;");
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
    public static void saveToDatabase(ArrayList<Forecast> forecasts){
        if (connection != null) {
            for (Forecast f : forecasts) {
                try {
                    Statement myStmt = connection.createStatement();
                    myStmt.executeUpdate("INSERT INTO prognozapogody (date,temp,lowtemp,sun) VALUES ('"+f.date + "','" + f.temp + "','" + f.tempLow + "','" + f.sun +"');");
                } catch (SQLException se) {
                    se.printStackTrace();
                }
            }
        }
    }

}