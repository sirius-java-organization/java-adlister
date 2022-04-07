package JDBC_UI_PW;

import com.mysql.cj.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/search-quotes")
public class AuthorSearchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Config config = new Config();
        try {
            DriverManager.registerDriver(new Driver());
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );

        Statement stmt = null;
            ArrayList<String> quoteList = new ArrayList<String>();

            stmt = connection.createStatement();

        String searchTerm = req.getParameter("userSearch");

            System.out.println("searchTerm = " + searchTerm);

            String sql = "SELECT * FROM quotes WHERE author LIKE ?";
            String wildcard = "%" + searchTerm + "%";

        PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, wildcard);

        ResultSet rs = preparedStatement.executeQuery();
        while(rs.next()) {
            System.out.println("Match found: " + rs.getString("author") + " said: " + rs.getString("content"));
            quoteList.add(rs.getString("author") + " | " + rs.getString("content"));

        }

            req.setAttribute("searchTerm", searchTerm);
            req.setAttribute("quoteListView", quoteList);
            req.getRequestDispatcher("/WEB-INF/authorQuotes/authorQuotes.jsp").forward(req, resp);



        } catch (SQLException e) {
            e.printStackTrace();
        }



    }
}
