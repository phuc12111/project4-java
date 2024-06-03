/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

import com.models.FeedbackProduct;
import com.models.ReplyFeedbackProduct;
import com.models.ReplyFeedbackProductDetail;
import com.servlets.FeedbackProductDAO;
import com.servlets.LoginDAO;
import java.sql.Timestamp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping(value = "feedback_product")
public class FeebackProductController {

    @Autowired
    private FeedbackProductDAO feedbackProductDAO;

    @Autowired
    private LoginDAO loginDAO;

    @RequestMapping(value = "view", method = RequestMethod.GET)
    public String viewFeebackProductAd(ModelMap model) {
        List<FeedbackProduct> listFeedbackProduct = feedbackProductDAO.findAll();
        model.addAttribute("listFeedbackProduct", listFeedbackProduct);
        return "feedback_product_viewad";
    }

    @RequestMapping(value = "reply/{feedbackProductID}", method = RequestMethod.GET)
    public String showFormreplyFeedbackProduct(@PathVariable("feedbackProductID") int feedbackProductID, ModelMap model) {
        FeedbackProduct feedbackProduct = feedbackProductDAO.get(feedbackProductID);

        model.addAttribute("feedbackProductByID", feedbackProduct);
        return "feedback_product_replyad";
    }

    @RequestMapping(value = "reply", method = RequestMethod.POST)
    public String replyFeedbackProduct(@ModelAttribute("replyFeedbackProduct") ReplyFeedbackProduct replyFeedbackProduct,
            @RequestParam("feedbackProductID") int feedbackProductID,
            @RequestParam("adminID") String adminID,
            ModelMap model) {

        Timestamp tms = new Timestamp(System.currentTimeMillis());
        replyFeedbackProduct.setCreatedAt(tms.toString());

        feedbackProductDAO.add(replyFeedbackProduct);

        List<FeedbackProduct> listFeedbackProduct = feedbackProductDAO.findAll();
        model.addAttribute("listFeedbackProduct", listFeedbackProduct);
        return "feedback_product_viewad";
    }

    @RequestMapping(value = "view_reply/{feedbackProductID}", method = RequestMethod.GET)
    public String showViewReplyFeedbackProduct(@PathVariable("feedbackProductID") int feedbackProductID, ModelMap model) {
        List<ReplyFeedbackProductDetail> listReplyFeedbackProductDetail = feedbackProductDAO.getReplyFeedbackByID(feedbackProductID);
        model.addAttribute("listReplyFeedbackProductDetail", listReplyFeedbackProductDetail);
        return "feedback_product_view_replyad";
    }

    @RequestMapping(value = "delete/{feedbackProductID}", method = RequestMethod.GET)
    public String deleteFeedbackProduct(@PathVariable("feedbackProductID") int feedbackProductID, ModelMap model) {
        feedbackProductDAO.delete(feedbackProductID);

        List<FeedbackProduct> listFeedbackProduct = feedbackProductDAO.findAll();
        model.addAttribute("listFeedbackProduct", listFeedbackProduct);
        return "feedback_product_viewad";
    }
}
