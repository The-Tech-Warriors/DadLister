package com.codeup.DadLister.dao;

import com.codeup.DadLister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> category(long id) {
        PreparedStatement stmt = null;
        long catId = id;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads\n" +
                    "    left join users u on ads.user_id = u.id\n" +
                    "    left join ads_category ac on ads.id = ac.ads_id\n" +
                    "    left join category c on ac.category_id = c.id\n" +
                    "    WHERE category_id = ?");
            stmt.setLong(1, catId);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error filtering Category.", e);
        }
    }

    @Override
    public Ad findOne(long id) {
        PreparedStatement stmt = null;
        long adId = id;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE id = ?");
            stmt.setLong(1, adId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return new Ad(
                    rs.getLong("id"),
                    rs.getLong("user_id"),
                    rs.getString("title"),
                    rs.getString("description")
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the ad.", e);
        }
    }

    //This is how we extract ads for the profile ads
    public List<Ad> findAdsForProfileByUserId(long id) {
        PreparedStatement stmt = null;
        String query = "SELECT * FROM ads " +
                " LEFT JOIN users AS s ON ads.user_id = s.id" +
                " LEFT JOIN ads_category AS ac ON ac.ads_id = ads.id" +
                " LEFT JOIN category AS cat ON ac.category_id = cat.id" +
                " WHERE ads.user_id = ?";
        try {
            stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

//    Delete Ad function

    @Override
    public Ad deleteAd(long id) {
        try {
            long deleteID = Long.parseLong("daddy_id");
            String deleteQuery = "delete from ads_category where id = ?";

            PreparedStatement stmt = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);

            stmt.setLong(1, id);

            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Unable to delete ad");
        }

//        try {
//            stmt = connection.prepareStatement("DELETE FROM ads WHERE id = ?");
//            stmt.setLong(1, adId);
//            ResultSet rs = stmt.executeQuery();
//            rs.next();
//            return new Ad(
//                    rs.getLong("id"),
//                    rs.getLong("user_id"),
//                    rs.getString("title"),
//                    rs.getString("description")
//            );
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving the ad.", e);
//        }
        return null;
    }

    @Override
    public List<Ad> adByID(long id) {
        return null;
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
