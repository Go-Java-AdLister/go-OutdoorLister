package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findById(long id);

    String findUsernameById(long id);

    void deleteAdById(long id);

    Ad editById(long id, Ad ad);

    public List<Ad> search(String field);



}
