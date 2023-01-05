package com.service;

import com.dao.StuDao;
import com.dao.TeaDao;
import com.domain.StuInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

public class SearchServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        StuDao sd=new StuDao();
        HttpSession session=request.getSession();
        String Id=(String) session.getAttribute("Id");
        System.out.println(Id);
        String keyword=request.getParameter("keyword");
        System.out.println(keyword);
        String url="";
        if(Pattern.matches("^s.*",Id)){
            url="PCenter.jsp";
        }
        if(Pattern.matches("^t.*",Id)){
            url="PCenter2.jsp";
        }
        if("admin".equals(Id)){
            url="PCenter3.jsp";
        }
        if(Pattern.matches(".*个人.*",keyword)||Pattern.matches(".*信息.*",keyword)||
            Pattern.matches(".*成绩.*",keyword)||Pattern.matches(".*课程.*",keyword)||
            Pattern.matches(".*考勤.*",keyword)||Pattern.matches(".*班级.*",keyword)){
            request.getRequestDispatcher(url).forward(request,response);
        }
        else if(Pattern.matches(".*登录.*",keyword)){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else if(Pattern.matches(".*注册.*",keyword)){
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
        else if(Pattern.matches(".*图书.*",keyword)){
            request.getRequestDispatcher("books.jsp").forward(request,response);
        }
        else if(Pattern.matches(".*周刊.*",keyword)){
            request.getRequestDispatcher("magazine.jsp").forward(request,response);
        }
        else if(Pattern.matches(".*分数.*",keyword)){
            request.getRequestDispatcher("admissioninfo.jsp").forward(request,response);
        }
        else {
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
