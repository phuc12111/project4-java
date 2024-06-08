/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.servlets;

import com.models.Categories;
import com.models.Payment;
import com.models.Product;
import java.util.List;

/**
 *
 * @author asus
 */
public interface CategoryDAO {

    public List<Categories> findAll();

    public List<Product> findAllpro(int categoryID);

    public Categories findById(int categoryID);

    public Categories findCategoryById(int categoryID);

    public List<Categories> searchCategorysByCategoryName(String categoryName);

    public void addCategory(Categories cate);

    
    public Categories getCategoryByID(int categoryID);

     public void updateCategory(Categories category);
    public List<Categories> getAllCategories();
     public void deleteCategory(int categoryID);
}
