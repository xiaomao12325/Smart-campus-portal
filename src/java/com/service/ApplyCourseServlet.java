package com.service;

import com.dao.TeaDao;
import com.domain.CourseChangeInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ApplyCourseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String CourseId=request.getParameter("CourseId");
        String CourseName=request.getParameter("CourseName");
        String Id=request.getParameter("Id");
        String Place=request.getParameter("Place");
        String Time=request.getParameter("Time");
        String ChangePlace=request.getParameter("ChangePlace");
        String ChangeTime=request.getParameter("ChangeTime");
        String Notes=request.getParameter("Notes");
        TeaDao td=new TeaDao();
        CourseChangeInfo cci=new CourseChangeInfo();
        cci.setCourseId(CourseId);
        cci.setCourseName(CourseName);
        cci.setId(Id);
        cci.setPlace(Place);
        cci.setTime(Time);
        cci.setChangePlace(ChangePlace);
        cci.setChangeTime(ChangeTime);
        cci.setNotes(Notes);
        td.applyCourse(cci);
        response.sendRedirect("PCenter2.jsp");
    }
}
