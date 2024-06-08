/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

import com.servlets.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping(value = "about")
public class AboutController {
    
    @Autowired
    private LoginDAO loginDAO;
    
    @RequestMapping(value = "view", method = RequestMethod.GET)
    public String getAboutPage() {

        return "about";
    }
}
