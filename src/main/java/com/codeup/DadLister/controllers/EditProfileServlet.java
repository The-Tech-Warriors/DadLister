package com.codeup.DadLister.controllers;

import com.codeup.DadLister.dao.DaoFactory;
import com.codeup.DadLister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Long.parseLong;

@WebServlet(name = "EditProfileServlet", urlPatterns = "/update-profile")
public class EditProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/profile-update.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        long id = parseLong(request.getParameter("id"));

        // create and save a new user
        System.out.println(username);
        System.out.println(email);
        System.out.println(id);
        DaoFactory.getUsersDao().findByUserIdToUpdate(id, username, email);
        response.sendRedirect("/profile");
    }

}
