package com.codeup.DadLister.dao;

import com.codeup.DadLister.models.Category;

public class DaoFactory {
    private static Categories categoryDao;
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Categories getCategoryDao() {
        if(categoryDao == null) {
            categoryDao = new CategoryDao(config);
        }
        return categoryDao;
    }
}
