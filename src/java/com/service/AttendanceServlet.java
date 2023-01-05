package com.service;

import com.dao.StuDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AttendanceServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StuDao sd=new StuDao();
        HttpSession session=request.getSession();
        String Id=(String) session.getAttribute("Id");
        String Time=request.getParameter("time");
        String Notes=request.getParameter("reason");
        sd.addAttendance(Id,Time,Notes);
        response.sendRedirect("PCenter.jsp");
    }
}
