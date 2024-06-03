/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.servlets;

import com.models.Albumdetails;
import com.models.Product;
import java.util.List;

/**
 *
 * @author asus
 */
public interface ProductDAO {

    public List<Product> findAll();

    public Product findById(int productID);

    public List<Albumdetails> getProductDetails(int albumID);
}
