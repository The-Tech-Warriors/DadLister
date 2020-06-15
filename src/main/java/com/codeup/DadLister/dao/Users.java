package com.codeup.DadLister.dao;

import com.codeup.DadLister.models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
}
