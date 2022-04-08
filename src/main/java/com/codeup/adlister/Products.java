package com.codeup.adlister;

import java.util.List;

public interface Products {
    List<Product> all(); //get me all the products and return it as a 'List' [can poly into an arraylist]

    void insert(Product productToInsert);//insert a product
}
