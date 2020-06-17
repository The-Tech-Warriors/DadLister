package com.codeup.DadLister.controllers;

import com.codeup.DadLister.dao.DaoFactory;
import com.codeup.DadLister.models.Ad;
import com.codeup.DadLister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.AdsServlet", urlPatterns = "/ads/ad")
public class AdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        long ad = parseLong(request.getParameter("dad-ad"));
        Ad id = DaoFactory.getAdsDao().findOne(7);

        request.setAttribute("ad" , id);
        request.getRequestDispatcher("/WEB-INF/ads/ad.jsp").forward(request, response);
    }
}

