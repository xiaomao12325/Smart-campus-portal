package com.dao;

import com.domain.AdmissionInfo;
import com.domain.Book;
import com.domain.CourseChangeInfo;
import com.domain.Magazine;
import com.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManDao {
    public boolean login(String Id,String Password){
        boolean flag=false;
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from manager where Id='"+Id+
                    "' and Password='" +Password+"'");
            while (rs.next()){
                if(rs.getString("Id").equals(Id)&&
                        rs.getString("Password").equals(Password)){
                    flag=true;
                }
            }
            DBUtil.closeConn();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
    public List<CourseChangeInfo> CheckAC() {
        List<CourseChangeInfo> list = new ArrayList<CourseChangeInfo>();
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from coursechangeinfo");
            while (rs.next()) {
                CourseChangeInfo cci=new CourseChangeInfo();
                cci.setCourseId(rs.getString("CourseId"));
                cci.setCourseName(rs.getString("CourseName"));
                cci.setId(rs.getString("Id"));
                cci.setPlace(rs.getString("Place"));
                cci.setTime(rs.getString("Time"));
                cci.setChangePlace(rs.getString("ChangePlace"));
                cci.setChangeTime(rs.getString("ChangeTime"));
                cci.setNotes(rs.getString("Notes"));
                list.add(cci);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean optCourse(String CourseId,String Place,String Time,String CPlace,String CTime){
        boolean flag=false;
        DBUtil.init();
        String sql="update course set Place='"+CPlace+"',Time='"+CTime+"'where CourseId='"+CourseId+"'and Place='"+Place+"'and Time='"+Time+"'";
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to update");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }
    public boolean optStatus(String Id,String or,String eb,String ay,int ui,String sc,String no){
        boolean flag=false;
        DBUtil.init();
        String sql="update stustatus set Origin='"+or+
                "',EnterBatch='"+eb+
                "',AdmissionDate='"+ay+
                "',UnifiedId="+ui+
                ",StatusChange='"+sc+
                "',Notes='"+no+
                "'where Id='"+Id+"'";
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to update");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }
    public List<AdmissionInfo> searchAdmission(String Academy, String Profession){
        List<AdmissionInfo> list=new ArrayList<AdmissionInfo>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from admissioninfo where Academy='"+Academy+
                    "'and Profession='"+Profession+"'");
            while (rs.next()){
                AdmissionInfo ai=new AdmissionInfo();
                ai.setNk(rs.getInt("Nk"));
                ai.setAcademy(rs.getString("Academy"));
                ai.setProfession(rs.getString("Profession"));
                ai.setFractionalLine(rs.getString("FractionalLine"));
                ai.setMajorInfo(rs.getString("MajorInfo"));
                list.add(ai);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public List<Book> searchBook(String BookName){
        List<Book> list=new ArrayList<Book>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from book where BookName like'%"+BookName+"%'");
            while (rs.next()){
                Book book=new Book();
                book.setBookId(rs.getString("BookId"));
                book.setBookName(rs.getString("BookName"));
                book.setAuthor(rs.getString("BookAuthor"));
                book.setBookType(rs.getString("BookType"));
                book.setBookLink(rs.getString("BookLink"));
                book.setPublisher(rs.getString("Publisher"));
                book.setPublishTime(rs.getString("PublishTime"));
                list.add(book);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public List<Magazine> searchMagazine(String ArticleName){
        List<Magazine> list=new ArrayList<Magazine>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from magazine where ArticleName like'%"+ArticleName+"%'");
            while (rs.next()){
                Magazine ma=new Magazine();
                ma.setMId(rs.getString("MagazineId"));
                ma.setMName(rs.getString("MagazineName"));
                ma.setMType(rs.getString("Type"));
                ma.setPublishDate(rs.getString("PublishDate"));
                ma.setAuthor(rs.getString("AuthorName"));
                ma.setPublisher(rs.getString("Publisher"));
                ma.setLevel(rs.getString("Level"));
                ma.setArticleName(rs.getString("ArticleName"));
                ma.setLink(rs.getString("Link"));
                list.add(ma);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean addAdm(String ac,String pr,String fl,String mi){
        boolean flag=false;
        DBUtil.init();
        String sql="insert into admissioninfo (Academy,Profession,FractionalLine,MajorInfo) values ('"+ac+"','"+pr+"','"+fl+"','"+mi+"')";
        System.out.println(sql);
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to add");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }
    public boolean optAdm(int Nk,String ac,String pr,String fl,String mi){
        boolean flag=false;
        DBUtil.init();
        String sql="update admissioninfo set Academy='"+ac+"',Profession='"+pr+"',FractionalLine='"+fl+"',MajorInfo='"+mi+"' where Nk="+Nk+"";
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to update");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }

}
