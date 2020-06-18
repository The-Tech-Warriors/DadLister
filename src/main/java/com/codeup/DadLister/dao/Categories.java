package com.codeup.DadLister.dao;

import com.codeup.DadLister.models.Category;

import java.util.List;

public interface Categories {

    List<Category> All();

    Long insert(Long ads_id, Long category_id);
}
