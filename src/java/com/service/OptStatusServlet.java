package com.service;

import com.dao.ManDao;
import com.domain.Status;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OptStatusServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String Id=request.getParameter("Id");
        String or=request.getParameter("Origin");
        String eb=request.getParameter("EnterBatch");
        String ay=request.getParameter("AcademicYear");
        String u=request.getParameter("UnifiedId");
        int ui=Integer.parseInt(u);
        String sc=request.getParameter("StatusChange");
        String no=request.getParameter("Notes");
        System.out.println(Id+" "+or+" "+eb+" "+ay+" "+ui+" "+sc+" "+no);
        ManDao md=new ManDao();
        md.optStatus(Id,or,eb,ay,ui,sc,no);
        response.sendRedirect("PCenter3.jsp");
    }
}