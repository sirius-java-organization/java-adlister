package JDBC;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class CodeRunner {


    public static void main(String[] args) throws SQLException {
        Config config = new Config();
        DriverManager.registerDriver(new Driver());
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        ); //First object as seen earlier - connection obj

        Statement stmt = connection.createStatement(); //From connection obj -> we can instantiate a statement obj

        String exampleQuery = "INSERT INTO quotes (author,content) VALUES ('Ryan Orsinger', 'Trust but verify your code')";

        stmt.executeUpdate(exampleQuery, Statement.RETURN_GENERATED_KEYS); //Ooo - this time we're doing the 'C' of CRUD :o
        //The second argument [Statement.RETURN_GENERATED_KEYS] tells Java "hey, I want the primary key [the id] of what was created plz"
        ResultSet rs = stmt.getGeneratedKeys(); //Gimme dat key!
        if (rs.next()) {
            System.out.println("Inserted a new record! New id: " + rs.getLong(1));
        }
    }


}
