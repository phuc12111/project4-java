/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

// ProductController.java

import com.models.Artists;
import com.models.Product;
import com.servlets.AlbumsDAO;
import com.servlets.ArtistDAO;
import com.servlets.CategoryDAO;
import com.servlets.ProductDAO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("product")
public class ProductController {

    @Autowired
    private ProductDAO productDAO;
    
     @Autowired
    private CategoryDAO categoryDAO;
     @Autowired
    private AlbumsDAO albumsDAO;
     
     @Autowired
    private ArtistDAO artistDAO;

    @GetMapping("details/{productID}")
    public String showProductDetails(@PathVariable("productID") int productID, Model mm) {
        Product product = productDAO.findById(productID);
        mm.addAttribute("product", product);
         List<Artists> artists = artistDAO.getAllArtists();
     mm.addAttribute("artists", artists);
     List<com.models.Categories> categories = categoryDAO.findAll();
     mm.addAttribute("cate", categories);
     
        return "product_detail";
    }
}
