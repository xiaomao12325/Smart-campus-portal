package com.service;

import com.dao.StuDao;
import com.dao.TeaDao;
import com.domain.StuInfo;
import com.domain.TeaInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String Identity=request.getParameter("Identity");
        String Name=request.getParameter("Name");
        String Id=request.getParameter("Id");
        String Sex=request.getParameter("Sex");
        String ClassId=request.getParameter("ClassId");
        String Profession=request.getParameter("Profession");
        String Academy=request.getParameter("Academy");
        String Password=request.getParameter("Password");
        StuDao sd = new StuDao();
        StuInfo stuInfo=new StuInfo();
        TeaDao td = new TeaDao();
        TeaInfo teaInfo = new TeaInfo();
       if(Identity.equals("stu")){
           stuInfo.setName(Name);
           stuInfo.setId(Id);
           stuInfo.setPassword(Password);
           stuInfo.setClassId(ClassId);
           stuInfo.setSex(Sex);
           stuInfo.setProfession(Profession);
           stuInfo.setAcademy(Academy);
           sd.register(stuInfo);
           response.sendRedirect("login.jsp");
       }else if(Identity.equals("tea")){
           teaInfo.setName(Name);
           teaInfo.setId(Id);
           teaInfo.setPassword(Password);
           teaInfo.setSex(Sex);
           teaInfo.setAcademy(Academy);
           System.out.println(teaInfo.toString());
           td.register(teaInfo);
           response.sendRedirect("login.jsp");
       }else {
           response.sendRedirect("register.jsp");
       }
    }
}
