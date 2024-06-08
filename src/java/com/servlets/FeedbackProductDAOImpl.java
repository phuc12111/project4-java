/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import com.models.FeedbackProduct;
import com.models.FeedbackProductMember;
import com.models.FeedbackProductReport;
import com.models.ReplyFeedbackProduct;
import com.models.ReplyFeedbackProductDetail;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author admin
 */
public class FeedbackProductDAOImpl implements FeedbackProductDAO {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    @Override
    public void add(FeedbackProduct feedbackProduct) {
        String sql = "INSERT INTO feedbackProducts VALUES (?,?,?,?,?)";
        jdbcTemplate.update(sql, feedbackProduct.getContent(), feedbackProduct.getCreatedAt(), feedbackProduct.getNumberStars(), feedbackProduct.getPhone(), feedbackProduct.getProductID());
    }

    @Override
    public void update(FeedbackProduct feedbackProduct) {

        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public FeedbackProduct get(int id) {
        String sql = "SELECT * FROM feedbackProducts WHERE feedbackProductID = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(FeedbackProduct.class));

//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(int id) {
        String replyFeedbackProducts = "delete from replyFeedbackProducts\n"
                + "where feedbackProductID = ?\n";
        String feedbackProducts = " delete from feedbackProducts\n"
                + "where feedbackProductID = ?\n";
        jdbcTemplate.update(replyFeedbackProducts, id);
        jdbcTemplate.update(feedbackProducts, id);
    }

    @Override
    public List<FeedbackProduct> selectAllByID(int albumID) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<FeedbackProduct> findAll() {
        String sql = "select * from feedbackProducts ORDER BY feedbackProductID DESC";
        List<FeedbackProduct> listFeedbackProduct = new ArrayList<>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);

        for (Map row : rows) {
            FeedbackProduct feedbackProduct = new FeedbackProduct();
            feedbackProduct.setFeedbackProductID((Integer) row.get("feedbackProductID"));
            feedbackProduct.setContent((String) row.get("content"));
            feedbackProduct.setCreatedAt((String) row.get("createdAt").toString());
            feedbackProduct.setNumberStars((Integer) row.get("numberStars"));
            feedbackProduct.setPhone((String) row.get("phone"));
            feedbackProduct.setProductID((Integer) row.get("productID"));

            listFeedbackProduct.add(feedbackProduct);
        }
        return listFeedbackProduct;
    }

    @Override
    public void add(ReplyFeedbackProduct rfp) {
        String sql = "INSERT INTO replyFeedbackProducts VALUES (?,?,?,?)";
        jdbcTemplate.update(sql, rfp.getFeedbackProductID(), rfp.getAdminID(), rfp.getContent(), rfp.getCreatedAt());
    }

    @Override
    public List<ReplyFeedbackProductDetail> getReplyFeedbackByID(int feedbackProductID) {
        String sql = "SELECT rfp1.[feedbackProductID],\n"
                + "                  rfp1.[content],\n"
                + "                  rfp1.[createdAt],\n"
                + "                  rfp1.[numberStars],\n"
                + "                  rfp1.[phone],\n"
                + "                  rfp1.[productID],\n"
                + "                  pro.[productName],\n"
                + "                  rfp2.[adminID],\n"
                + "                  rfp2.[content] AS reply,\n"
                + "                  rfp2.[createdAt] AS replyAt\n"
                + "FROM [dvdStore].[dbo].[feedbackProducts] AS rfp1 INNER JOIN [dvdStore].[dbo].[replyFeedbackProducts] AS rfp2 \n"
                + "ON rfp1.[feedbackProductID] = rfp2.[feedbackProductID]\n"
                + "INNER JOIN [dvdStore].[dbo].[products] AS pro ON rfp1.[productID] = pro.[productID]\n"
                + "WHERE rfp1.[feedbackProductID] = ? ORDER BY replyAt DESC";

        return jdbcTemplate.query(sql, new Object[]{feedbackProductID}, new RowMapper<ReplyFeedbackProductDetail>() {
            @Override
            public ReplyFeedbackProductDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
                ReplyFeedbackProductDetail replyFeedbackProductDetail = new ReplyFeedbackProductDetail();
                replyFeedbackProductDetail.setFeedbackProductID(rs.getInt("feedbackProductID"));
                replyFeedbackProductDetail.setContent(rs.getString("content"));
                replyFeedbackProductDetail.setCreatedAt(rs.getString("createdAt"));
                replyFeedbackProductDetail.setNumberStars(rs.getInt("numberStars"));
                replyFeedbackProductDetail.setPhone(rs.getString("phone"));
                replyFeedbackProductDetail.setProductID(rs.getInt("productID"));
                replyFeedbackProductDetail.setProductName(rs.getString("productName"));
                replyFeedbackProductDetail.setAdminID(rs.getString("adminID"));
                replyFeedbackProductDetail.setReply(rs.getString("reply"));
                replyFeedbackProductDetail.setReplyAt(rs.getString("replyAt"));

                return replyFeedbackProductDetail;
            }
        });
    }

    @Override
    public List<FeedbackProductMember> selectAllByProductID(int productID) {
        String sql = "SELECT \n"
                + "    f.feedbackProductID,\n"
                + "    f.content,\n"
                + "    f.createdAt,\n"
                + "    f.numberStars,\n"
                + "    f.phone,\n"
                + "    f.productID,\n"
                + "    m.memberName\n"
                + "FROM [dvdStore].[dbo].[members] m\n"
                + "INNER JOIN [dvdStore].[dbo].[feedbackProducts] f ON m.phone = f.phone\n"
                + "where f.productID = ?";

        return jdbcTemplate.query(sql, new Object[]{productID}, new RowMapper<FeedbackProductMember>() {
            @Override
            public FeedbackProductMember mapRow(ResultSet rs, int rowNum) throws SQLException {

                FeedbackProductMember feedbackProductMember = new FeedbackProductMember();
                feedbackProductMember.setFeedbackProductID(rs.getInt("feedbackProductID"));
                feedbackProductMember.setContent(rs.getString("content"));
                feedbackProductMember.setCreatedAt(rs.getString("createdAt"));
                feedbackProductMember.setNumberStars(rs.getInt("numberStars"));
                feedbackProductMember.setPhone(rs.getString("phone"));
                feedbackProductMember.setProductID(rs.getInt("productID"));
                feedbackProductMember.setMemberName(rs.getString("memberName"));

                return feedbackProductMember;
            }
        });
    }

    @Override
    public List<FeedbackProductReport> findAllbyAvg() {
        String sql = "SELECT p.productName,\n"
                + "       AVG(CAST(fp.numberStars AS FLOAT)) AS averageNumberStars\n"
                + "FROM [dvdStore].[dbo].[feedbackProducts] fp\n"
                + "Inner JOIN [dvdStore].[dbo].[products] p ON p.productID = fp.productID\n"
                + "GROUP BY p.productName\n"
                + "ORDER BY averageNumberStars DESC";
        List<FeedbackProductReport> listFeedbackPageReport = new ArrayList<>();
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);

        for (Map row : rows) {
            FeedbackProductReport feedbackPageReport = new FeedbackProductReport();
            feedbackPageReport.setProductName((String) row.get("productName"));
            feedbackPageReport.setAverageNumberStars((Double) row.get("averageNumberStars"));
            listFeedbackPageReport.add(feedbackPageReport);
        }
        return listFeedbackPageReport;
    }
}
