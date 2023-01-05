package com.service;

import com.dao.StuDao;
import com.dao.TeaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Pattern;

public class UpdateServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        StuDao sd=new StuDao();
        TeaDao td=new TeaDao();
        HttpSession session=request.getSession();
        String Id=(String) session.getAttribute("Id");
        if(Pattern.matches("^s.*",Id)){
            String Name=request.getParameter("Name");
            String Sex=request.getParameter("Sex");
            sd.update(Name,Sex,Id);
            response.sendRedirect("PCenter.jsp");
        }
        if(Pattern.matches("^t.*",Id)){
            System.out.println(Id);
            String Name=request.getParameter("Name");
            String Sex=request.getParameter("Sex");
            td.update(Name,Sex,Id);
            response.sendRedirect("PCenter2.jsp");
        }
    }
}
