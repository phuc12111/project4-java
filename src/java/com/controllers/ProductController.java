/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

// ProductController.java
import com.models.Admins;
import com.models.Product;
import com.servlets.ProductDAO;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.Calendar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.ServletContext;

import java.util.List;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("product")
public class ProductController {

    @Autowired
    private ProductDAO productDAO;

    // Display product details by ID
    @GetMapping("/details/{productID}")
    public String showProductDetails(@PathVariable("productID") int productID, Model model) {
        Product product = productDAO.findById(productID);
        model.addAttribute("product", product);
        return "productDetails";
    }

    // Display product advertisement details by ID
    @GetMapping("/adDetails/{productID}")
    public String showProductAdDetails(@PathVariable("productID") int productID, Model model) {
        Product product = productDAO.findById(productID);
        model.addAttribute("product", product);
        return "productAdDetails";
    }

    // Display all products
    @GetMapping("all")
    public String showAllProducts(Model model) {
        List<Product> products = productDAO.findAll();
        model.addAttribute("products", products);
        return "productad";
    }

    // Show add product form
    @GetMapping("addshow")
    public String showAddProductForm(Model model) {
      
        return "productadAdd";
    }

    // Add a new product
    @PostMapping("/add")
    public String addProduct(@ModelAttribute("product") Product product) {
        productDAO.addProduct(product);
        return "productad";
    }

    // Show update product form
    @GetMapping("update/{productID}")
    public String showUpdateProductForm(@PathVariable("productID") int productID, Model model) {
        Product product = productDAO.findById(productID);
        model.addAttribute("product", product);
        return "productAdupdate";
    }

    

    // Delete a product
    @GetMapping("delete/{productID}")
    public String deleteProduct(@PathVariable("productID") int productID,  ModelMap model) {
        productDAO.deleteProduct(productID);
        List<Product> products = productDAO.findAll();
        model.addAttribute("products", products);
        return "productad";
        
    }
    
     @Autowired
    private ServletContext servletContext;
     
   @RequestMapping(value = "updateProduct", method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("pro") Product pro, @RequestParam("image") MultipartFile file, ModelMap model) {
        try {
            if (!file.isEmpty()) {
                String fileName = file.getOriginalFilename();

                String savedFileName = "img/products/" + fileName;
                String realPath = servletContext.getRealPath("/");
                Path filePath = Paths.get(realPath, savedFileName);
                Files.write(filePath, file.getBytes());

                pro.setPicture(savedFileName);
            }
            productDAO.updateProduct(pro);
            model.addAttribute("success", "Admin updated successfully");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to update admin");
        }
        List<Product> products = productDAO.findAll();
        model.addAttribute("products", products);
        
        return "productad";
    }
    
    
@RequestMapping(value = "addProduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product,
                             @RequestParam("image") MultipartFile file,
                             ModelMap model) {

        product.setCreatedAt(new Timestamp(System.currentTimeMillis()));

        if (!file.isEmpty()) {
            try {
                String fileName = file.getOriginalFilename();
                String savedFileName = "img/products/" + fileName;
                String realPath = servletContext.getRealPath("/");
                Path filePath = Paths.get(realPath, savedFileName);
                Files.write(filePath, file.getBytes());

                product.setPicture(savedFileName);
            } catch (IOException e) {
                model.addAttribute("error", "Failed to upload image: " + e.getMessage());
                return "productad";
            }
        }

        productDAO.addProduct(product);
        List<Product> products = productDAO.findAll();
        model.addAttribute("products", products);

        return "productad";
    }
    
    
    
    
    
    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String searchProduct(@RequestParam("productName") String productName, ModelMap model) {
        List<Product> products = productDAO.searchProductsByProductName(productName);
         model.addAttribute("products", products);
        return "productad";
    }
}

