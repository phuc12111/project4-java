/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author admin
 */
public class FeedbackPage {
    private int feedbackPageID;
    private String phone;
    private String createdAt;
    private String content;

    public FeedbackPage() {
    }

    public FeedbackPage(int feedbackPageID, String phone, String createdAt, String content) {
        this.feedbackPageID = feedbackPageID;
        this.phone = phone;
        this.createdAt = createdAt;
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getFeedbackPageID() {
        return feedbackPageID;
    }

    public void setFeedbackPageID(int feedbackPageID) {
        this.feedbackPageID = feedbackPageID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
    
    
}
