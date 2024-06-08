/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author asus
 */
public class StatisticsDeliveries {

    private String shipperName;
    private int totalShipper;

      public String getShipperName() {
        return shipperName;
    }

    public void setShipperName(String shipperName) {
        this.shipperName = shipperName;
    }

    public int getTotalShipper() {
        return totalShipper;
    }

    public void setTotalShipper(int totalShipper) {
        this.totalShipper = totalShipper;
    }

    public StatisticsDeliveries(String shipperName, int totalShipper) {
        this.shipperName = shipperName;
        this.totalShipper = totalShipper;
    }

    public StatisticsDeliveries() {
    }

}
