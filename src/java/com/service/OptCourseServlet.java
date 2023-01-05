package com.service;

import com.dao.ManDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OptCourseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String ci=request.getParameter("CourseId");
        String p=request.getParameter("Place");
        String t=request.getParameter("Time");
        String cp=request.getParameter("ChangePlace");
        String ct=request.getParameter("ChangeTime");
        System.out.println(ci+" "+p+" "+t+" "+cp+" "+ct);
        ManDao md=new ManDao();
        md.optCourse(ci,p,t,cp,ct);
        response.sendRedirect("PCenter3.jsp");
    }
}
