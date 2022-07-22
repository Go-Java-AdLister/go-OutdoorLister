package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdDetailsServlet", value = "/details")
public class AdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long adId = Long.parseLong(request.getParameter("id"));
        System.out.println(adId);
//      get all ads from the db with Dao and
        Ads adDao = DaoFactory.getAdsDao();
        Ad ad = adDao.findById(adId);

//      pull the username from users table
        Ads adDao2 = DaoFactory.getAdsDao();
        String username = adDao2.findUsernameById(adId);

//      display targeted ad onto view
        request.setAttribute("ad", ad);
        request.setAttribute("username", username);
        request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
