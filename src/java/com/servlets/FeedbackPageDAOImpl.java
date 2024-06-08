/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import com.models.FeedbackPage;
import com.models.FeedbackProductReport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author admin
 */
public class FeedbackPageDAOImpl implements FeedbackPageDAO {

    private JdbcTemplate jdbcTemplate;

    @Override
    public List<FeedbackPage> findAll() {
        String sql = "select * from feedbackPages ORDER BY createdAt DESC";
        List<FeedbackPage> listFeedbackPage = new ArrayList<>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);

        for (Map row : rows) {
            FeedbackPage feedbackPage = new FeedbackPage();
            feedbackPage.setFeedbackPageID((Integer) row.get("feedbackPageID"));
            feedbackPage.setPhone((String) row.get("phone"));
            feedbackPage.setCreatedAt((String) row.get("createdAt").toString());
            feedbackPage.setContent((String) row.get("content"));

            listFeedbackPage.add(feedbackPage);
        }
        return listFeedbackPage;
    }

    @Override
    public List<FeedbackPage> find(String keyword) {
        return null;
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void addFeedbackPage(FeedbackPage feedbackPage) {
        String sql = "insert into feedbackPages (phone,createdAt,content) values (?,?,?)";
        jdbcTemplate.update(sql, feedbackPage.getPhone(), feedbackPage.getCreatedAt(), feedbackPage.getContent());
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    
}
