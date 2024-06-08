package com.models;

public class StatisticalOrder {

    private int month;
    private long orderCount;

    public StatisticalOrder(int month, long orderCount) {
        this.month = month;
        this.orderCount = orderCount;
    }

    public StatisticalOrder() {
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public long getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(long orderCount) {
        this.orderCount = orderCount;
    }
}
