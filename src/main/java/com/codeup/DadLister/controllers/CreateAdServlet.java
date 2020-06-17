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
import java.io.IOException;
import java.lang.*;

import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description")

        );
        long category = parseLong(request.getParameter("category"));
        long test = DaoFactory.getAdsDao().insert(ad);
        DaoFactory.getCategoryDao().insert(test, category);
        response.sendRedirect("/ads");
    }
}
