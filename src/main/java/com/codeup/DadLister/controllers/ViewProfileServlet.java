package com.codeup.DadLister.controllers;

import com.codeup.DadLister.dao.DaoFactory;
import com.codeup.DadLister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //extracted the session from the conditional and placed into its own variable and then use the User object to retrieve the id number which we
        //will use to add as a parameter to grab the ads from the User
        User profile = (User) request.getSession().getAttribute("user");
        if ( profile == null) {
            response.sendRedirect("/login");
            return;
        }

        long profileId = profile.getId();

        //need a dao method to access the database with user ID
        request.setAttribute("ads", DaoFactory.getAdsDao(). //method acces to DB with (profileId)
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}
