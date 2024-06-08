/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.servlets;

import com.models.Orders;
import com.models.PurchasingInvoices;
import com.models.StatisticalOrder;
import java.util.List;

/**
 *
 * @author asus
 */
public interface CheckoutDAO {

    public int createOrder(Orders order);

    public void createOrderDetails(List<PurchasingInvoices> PurchasingInvoices, int orderId);

    public List<StatisticalOrder> getOrderStatisticsByMonth();
}
