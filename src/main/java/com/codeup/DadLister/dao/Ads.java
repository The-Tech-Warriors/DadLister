package com.codeup.DadLister.dao;

import com.codeup.DadLister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    Ad findOne(long id);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad deleteAd(long id);

    List<Ad> adByID(long id);

//    void update(Ad ad); // update an existing record
//    void destroy(Ad ad); // remove a record
}
