package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findById(long id);

    String findUsernameById(long id);


    List<Ad> getUserAds(User user);

    void deleteAdById(long id);


    Ad editById(String column ,long id, String columnValue);

    public List<Ad> search(String field);


}
