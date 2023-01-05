package com.service;

import com.dao.StuDao;
import com.dao.TeaDao;
import com.domain.StuAttendance;
import com.domain.StuInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchAttServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TeaDao td=new TeaDao();
        String ClassId=request.getParameter("k");
        System.out.println(ClassId);
        List list1=td.getStuAll(ClassId);
        List<StuAttendance> list2=td.searchAtt(ClassId);
        request.setAttribute("ci",ClassId);
        System.out.println(list1.size());
        System.out.println(list2.size());
        PrintWriter out=response.getWriter();
        out.println("{\"code\":200,\"kcount\":"+list1.size()+",\"kyes\":"+list2.size()+",\"kno\":"+(list1.size()-list2.size())+"}");
        out.flush();
    }
}
