package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long adId = Long.parseLong(request.getParameter("id"));
        request.setAttribute("id", adId);
        if(request.getParameter("column") != null){
            String column = request.getParameter("column");
            request.setAttribute("column", column);
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String column = request.getParameter("column");

        long adId = Long.parseLong(request.getParameter("id"));
        Ads adDao = DaoFactory.getAdsDao();
        Ad ad = adDao.findById(adId);

        if(request.getParameter("value") != null){

                Ad newAd = adDao.editById(column ,adId, request.getParameter("value"));

             response.sendRedirect("/profile");
            return;
          }




        if(column.equals("description")){
//
            response.sendRedirect("/edit?column=description&id="+adId);
        }
        else if(column.equals("title")){

            response.sendRedirect("/edit?column=title&id="+adId);
        } else if(column.equals("field")){

            response.sendRedirect("/edit?column=field&id="+adId);
        }


    }
}
