package com.service;
import com.dao.ManDao;
import com.dao.StuDao;
import com.dao.TeaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String Id=request.getParameter("Id");
        String Password=request.getParameter("Password");
        StuDao sd = new StuDao();
        TeaDao td = new TeaDao();
        ManDao md = new ManDao();
        HttpSession session=request.getSession();
        session.setAttribute("Id",Id);
        if(sd.login(Id,Password)){
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else if(td.login(Id,Password)){
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else if(md.login(Id,Password)){
            request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        else {
            response.sendRedirect("login.jsp");
        }
    }
}
