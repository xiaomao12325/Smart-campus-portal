package com.service;

import com.dao.ManDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OptAdmServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String NkStr=request.getParameter("Nk");
        int Nk=Integer.parseInt(NkStr);
        String ac=request.getParameter("Academy");
        String pr=request.getParameter("Profession");
        String fl=request.getParameter("FractionalLine");
        String mi=request.getParameter("MajorInfo");
        ManDao md=new ManDao();
        md.optAdm(Nk,ac,pr,fl,mi);
        response.sendRedirect("admission.jsp");
    }
}
