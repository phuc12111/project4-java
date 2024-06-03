/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author admin
 */
public class ReplyFeedbackProduct {
    private int feedbackProductID;
    private String adminID;
    private String content;
    private String createdAt;

    public ReplyFeedbackProduct() {
    }

    public ReplyFeedbackProduct(int feedbackProductID, String adminID, String content, String createdAt) {
        this.feedbackProductID = feedbackProductID;
        this.adminID = adminID;
        this.content = content;
        this.createdAt = createdAt;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public int getFeedbackProductID() {
        return feedbackProductID;
    }

    public void setFeedbackProductID(int feedbackProductID) {
        this.feedbackProductID = feedbackProductID;
    }

    public String getAdminID() {
        return adminID;
    }

    public void setAdminID(String adminID) {
        this.adminID = adminID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    
    
}
