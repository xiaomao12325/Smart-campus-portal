package com.service;

import com.dao.TeaDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SearchStaServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String Id=request.getParameter("StuId");
        TeaDao td=new TeaDao();
        String[] status=td.searchSta(Id);
        PrintWriter out=response.getWriter();
        out.println("{\"code\":200,\"Origin\":\""+status[0]+"\",\"EB\":\""+status[1]+"\",\"AD\":\""+status[2]+"\",\"UI\":\""+status[3]+"\",\"CS\":\""+status[4]+"\",\"Note\":\""+status[5]+"\"}");
        out.flush();
    }
}
