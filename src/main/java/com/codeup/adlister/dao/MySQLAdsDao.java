package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
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
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, createdOn, field, description) VALUES ( ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getCreatedOn());
            stmt.setString(4, ad.getField());
            stmt.setString(5, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public Ad findById(long id) {
        Ad ad = null;
        try {
            String insertQuery = "SELECT * FROM odlister_db.ads Where id = ?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery );
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            ad = new Ad(rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("createdOn"),
                        rs.getString("field"),
                        rs.getString("description")
                                    );
        } catch (SQLException e) {
            throw new RuntimeException("error finding by id", e);
        }
        return ad;
    }

    @Override
    public String findUsernameById(long id) {

        try{
            String insertQuery = "SELECT username FROM odlister_db.users u JOIN ads a ON u.id = a.user_id WHERE a.id = ?";
            PreparedStatement stmt = connection.prepareStatement(insertQuery);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return rs.getString(1);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("createdOn"),
            rs.getString("field"),
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


    @Override
    public List<Ad> getUserAds(User user){
        Ads adsDao = DaoFactory.getAdsDao();
        List<Ad> ads = adsDao.all();
        List<Ad> newAds = new ArrayList<>();
        for(Ad ad: ads){
            if(ad.getUserId() == user.getId()){
                newAds.add(ad);
            }
        }
        return newAds;
    }





    @Override
    public void deleteAdById(long id) {

        String query = "DELETE FROM ads WHERE id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch(SQLException e){
            throw new RuntimeException("Error deleting ad by id", e);
        }

    }

    @Override
    public Ad editById(long id, Ad ad) {
        String query = "UPDATE ads SET description = ?  WHERE id = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(2, id);
            stmt.setString(1, ad.getDescription());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error Error Error ",e);
        }
        return ad;
    }

    @Override
    public List<Ad> search(String field) {
        String query = "SELECT * FROM odlister_db.ads Where field = ?";
        try{
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, field);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error in search method", e);
        }
    }

    public static void main(String[] args) {
        Ads adDao = DaoFactory.getAdsDao();

        adDao.deleteAdById(2);
        Ad ad = new Ad("Cookie is the name of my pet iguana");

        adDao.editById(2, ad);
    }
}









