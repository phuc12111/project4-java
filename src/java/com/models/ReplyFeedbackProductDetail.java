/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author admin
 */
public class ReplyFeedbackProductDetail {
    private int feedbackProductID;
    private String content;
    private String createdAt;
    private int numberStars; 
    private String phone;
    private int productID;
    private String productName;
    private String adminID;
    private String reply;
    private String replyAt;

    public ReplyFeedbackProductDetail() {
    }

    public ReplyFeedbackProductDetail(int feedbackProductID, String content, String createdAt, int numberStars, String phone, int productID, String productName, String adminID, String reply, String replyAt) {
        this.feedbackProductID = feedbackProductID;
        this.content = content;
        this.createdAt = createdAt;
        this.numberStars = numberStars;
        this.phone = phone;
        this.productID = productID;
        this.productName = productName;
        this.adminID = adminID;
        this.reply = reply;
        this.replyAt = replyAt;
    }

    public int getFeedbackProductID() {
        return feedbackProductID;
    }

    public void setFeedbackProductID(int feedbackProductID) {
        this.feedbackProductID = feedbackProductID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public int getNumberStars() {
        return numberStars;
    }

    public void setNumberStars(int numberStars) {
        this.numberStars = numberStars;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getAdminID() {
        return adminID;
    }

    public void setAdminID(String adminID) {
        this.adminID = adminID;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getReplyAt() {
        return replyAt;
    }

    public void setReplyAt(String replyAt) {
        this.replyAt = replyAt;
    }
    
    
}
