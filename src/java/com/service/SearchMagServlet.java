package com.service;

import com.dao.ManDao;
import com.domain.Book;
import com.domain.Magazine;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchMagServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String an = request.getParameter("ArticleName");
        ManDao md = new ManDao();
        List<Magazine> list = md.searchMagazine(an);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getMId());
            System.out.println(list.get(i).getArticleName());
        }
        request.setAttribute("an", an);
        request.getRequestDispatcher("/magazine.jsp").forward(request, response);
    }
}
