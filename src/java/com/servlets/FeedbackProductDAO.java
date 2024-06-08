/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.servlets;

import com.models.FeedbackProduct;
import com.models.FeedbackProductMember;
import com.models.FeedbackProductReport;
import com.models.ReplyFeedbackProduct;
import com.models.ReplyFeedbackProductDetail;
import java.util.List;

/**
 *
 * @author admin
 */
public interface FeedbackProductDAO {

    public List<FeedbackProduct> findAll();

    public void add(FeedbackProduct feedbackProduct);

    public void add(ReplyFeedbackProduct replyFeedbackProduct);

    public void update(FeedbackProduct feedbackProduct);

    public FeedbackProduct get(int id);

    public List<ReplyFeedbackProductDetail> getReplyFeedbackByID(int id);

    public void delete(int id);

    public List<FeedbackProduct> selectAllByID(int albumID);

    public List<FeedbackProductMember> selectAllByProductID(int productID);

    public List<FeedbackProductReport> findAllbyAvg();

}
