/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author admin
 */
public class FeedbackProduct {
    private int feedbackProductID;
    private String content;
    private String createdAt;
    private int numberStars; 
    private String phone;
    private int productID;

    public FeedbackProduct() {
    }

    public FeedbackProduct(int feedbackProductID, String content, String createdAt, int numberStars, String phone, int productID) {
        this.feedbackProductID = feedbackProductID;
        this.content = content;
        this.createdAt = createdAt;
        this.numberStars = numberStars;
        this.phone = phone;
        this.productID = productID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
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
    
    
}
