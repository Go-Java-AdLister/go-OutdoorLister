package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ads/search")
public class SearchTypeAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        if (request.getParameter("button1") != null) {
//            Ads adDao = DaoFactory.getAdsDao();
//            adDao.search("camping");
            request.setAttribute("ads", DaoFactory.getAdsDao().search("camping"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button2") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("fishing"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button3") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("hiking"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button4") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("misc"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button5") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("hunting"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button6") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("sports"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else if (request.getParameter("button7") != null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().search("parks&rec"));
            request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
        } else {
            PrintWriter out = response.getWriter();
            out.println("Hi");
        }

        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }
}