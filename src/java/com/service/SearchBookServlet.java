package com.service;

import com.dao.ManDao;
import com.domain.AdmissionInfo;
import com.domain.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchBookServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String bn=request.getParameter("BookName");
        ManDao md=new ManDao();
        List<Book> list=md.searchBook(bn);
        for (int i=0;i<list.size();i++){
            System.out.println(list.get(i).getBookId());
            System.out.println(list.get(i).getBookName());
        }
        request.setAttribute("bn",bn);
        request.getRequestDispatcher("/books.jsp").forward(request,response);
    }
}
