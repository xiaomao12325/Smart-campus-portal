package com.service;

import com.dao.ManDao;
import com.domain.AdmissionInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchAdmServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ac=request.getParameter("Academy");
        String pr=request.getParameter("Profession");
        ManDao md=new ManDao();
        List<AdmissionInfo> list=md.searchAdmission(ac,pr);
        for (int i=0;i<list.size();i++){
            System.out.println(list.get(i).getFractionalLine());
            System.out.println(list.get(i).getMajorInfo());
        }
        request.setAttribute("ac",ac);
        request.setAttribute("pr",pr);
//        request.setAttribute("adlist",list);
        request.getRequestDispatcher("/admission.jsp").forward(request,response);
    }
}
