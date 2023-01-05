package com.service;

import com.dao.TeaDao;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchScoreServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String CourseId=request.getParameter("IS");
        TeaDao td=new TeaDao();
        List list=td.searchScore(CourseId);
        for(int i=0;i<list.size();i++){
            System.out.println(list.get(i));
        }
        ObjectMapper om=new ObjectMapper();
        String json=om.writeValueAsString(list);
        System.out.println(json);
        PrintWriter out=response.getWriter();
        out.println(json);
        out.flush();
    }
}
