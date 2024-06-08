/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

import com.models.FeedbackPage;
import com.servlets.FeedbackPageDAO;
import com.servlets.LoginDAO;
import java.sql.Timestamp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping(value = "feedback_page")
public class FeedbackPageController {
    
    @Autowired
    private LoginDAO loginDAO;
    
    @Autowired
    private FeedbackPageDAO feedbackPageDAO;
    
    @RequestMapping(value = "view", method = RequestMethod.GET)
    public String getFormFeedbackPage(@ModelAttribute("feedbackPage") FeedbackPage feedbackPage) {

        return "contacts";
    }
    
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addFeedbackPage(@ModelAttribute("feedbackPage") FeedbackPage feedbackPage,
            ModelMap model, @RequestParam("phone") String phone){
        
//        com.models.Login user = loginDAO.findByUser(phone);

        feedbackPage.setPhone(phone);
        feedbackPage.setContent(feedbackPage.getContent());
        Timestamp tms = new Timestamp(System.currentTimeMillis());
        feedbackPage.setCreatedAt(tms.toString());
        feedbackPageDAO.addFeedbackPage(feedbackPage);
        return "contacts";
    }
    
    @RequestMapping(value = "view_all", method = RequestMethod.GET)
    public String getAllFeedbackPage(ModelMap model) {
        List<FeedbackPage> listFeedbackPage = feedbackPageDAO.findAll();
        model.addAttribute("listFeedbackPage", listFeedbackPage);
        return "feedback_page_viewad";
    }
    
}