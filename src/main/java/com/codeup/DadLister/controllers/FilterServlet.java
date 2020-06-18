package com.codeup.DadLister.controllers;

import com.codeup.DadLister.dao.DaoFactory;
import com.codeup.DadLister.models.Ad;
import com.codeup.DadLister.models.Category;
import com.codeup.DadLister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.FilterServlet", urlPatterns = "/filter")
public class FilterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long cat = parseLong(request.getParameter("category"));
        System.out.println(cat);

        List<Ad> category = DaoFactory.getAdsDao().category(cat);
        request.setAttribute("category", category);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
