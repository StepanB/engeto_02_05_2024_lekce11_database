package cz.engeto;

import java.sql.*;

public class Main {

    private static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/engeto";
    private static final String SELECT_ALL_BOOKS_BY_TITLE = "select * from books b order by title";

    public static void main(String[] args) throws SQLException {

        Connection connection = DriverManager.getConnection(CONNECTION_STRING, "root", "heslo123");

        Statement statement = connection.createStatement();

        ResultSet resultSet = statement.executeQuery(SELECT_ALL_BOOKS_BY_TITLE);

        while (resultSet.next()) {
            String title = resultSet.getString("title");
            String genre = resultSet.getString("genre");

            System.out.println("Kniha: " + title + " patri do zanru: " + genre);
        }

        String genre = "Adventure";

        ResultSet resultSet1 = statement.executeQuery("select * from books where genre = '" + genre + "' order by title");

        while (resultSet1.next()) {
            String title = resultSet1.getString(2);

            System.out.println(title);
        }

    }
}