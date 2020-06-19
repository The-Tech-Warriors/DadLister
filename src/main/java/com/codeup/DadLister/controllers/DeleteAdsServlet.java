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
import java.util.List;
import static java.lang.Long.parseLong;


@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/edit-delete")
public class DeleteAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            if (request.getSession().getAttribute("user") == null) {
                response.sendRedirect("/login");
                return;
            }
        long ad = parseLong(request.getParameter("daddy_id"));
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.setAttribute("ad",DaoFactory.getAdsDao().findOne(ad));
        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp").forward(request, response);

            request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
                    .forward(request, response);
        }


        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            long daddy_id = Long.parseLong(request.getParameter("id"));
            DaoFactory.getAdsDao().deleteAd(daddy_id);
            response.sendRedirect("/ads");
        }


    }

