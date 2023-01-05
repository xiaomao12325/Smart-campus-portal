package com.service;

import com.dao.TeaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class CheckACServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TeaDao td=new TeaDao();
        String ClassId=request.getParameter("ClassId");
        List list1=td.getStuAll(ClassId);
        List list2=td.searchAtt(ClassId);
        PrintWriter out=response.getWriter();
        out.println("{\"code\":200,\"kcount\":"+list1.size()+",\"kyes\":"+list2.size()+",\"kno\":"+(list1.size()-list2.size())+"}");
        out.flush();
    }
}
