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
@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/edit-delete")
public class DeleteAdsServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            if (request.getSession().getAttribute("user") == null) {
                response.sendRedirect("/login");
                return;
            }
            request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
                    .forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            long id = Long.parseLong(request.getParameter("daddy_id"));
            DaoFactory.getCategoryDao().deleteAd(id);
            response.sendRedirect("/ads");
        }
    }

