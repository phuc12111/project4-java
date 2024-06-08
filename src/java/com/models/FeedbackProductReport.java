/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author admin
 */
public class FeedbackProductReport {
    private String productName;
    private double averageNumberStars;

    public FeedbackProductReport() {
    }

    public FeedbackProductReport(String productName, double averageNumberStars) {
        this.productName = productName;
        this.averageNumberStars = averageNumberStars;
    }

    public double getAverageNumberStars() {
        return averageNumberStars;
    }

    public void setAverageNumberStars(double averageNumberStars) {
        this.averageNumberStars = averageNumberStars;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    
}
