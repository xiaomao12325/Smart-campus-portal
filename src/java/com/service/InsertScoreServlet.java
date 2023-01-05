package com.service;

import com.dao.TeaDao;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertScoreServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String scorestr=request.getParameter("Score");
        String keystr=request.getParameter("Key");
        int score=Integer.parseInt(scorestr);
        int key=Integer.parseInt(keystr);
        System.out.println(key+"-"+score);
        TeaDao td=new TeaDao();
        td.insertScore(score,key);
    }
}
