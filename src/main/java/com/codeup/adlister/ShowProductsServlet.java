package com.codeup.adlister;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ShowProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

        // Use the factory to get the dao object [which holds all of our method implementations]
        Products productsDao = DaoFactory.getProductsDao();

        // Now, we can use the methods from our implementation - for example, calling ALL the products
        List<Product> products = productsDao.all();


        // Pass the data to the jsp
        request.setAttribute("products", products);
        request.getRequestDispatcher("/WEB-INF/products/index.jsp").forward(request, resp);
    }
}
