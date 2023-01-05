package com.dao;

import com.domain.*;
import com.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

public class TeaDao {
    public boolean register(TeaInfo teaInfo){
        boolean flag=false;
        DBUtil.init();
        int i=DBUtil.addUpdDel("insert into teacher (Id,Name,Password,Sex,Academy)"+
                "values('"+teaInfo.getId()+
                "','"+teaInfo.getName()+
                "','"+teaInfo.getPassword()+
                "','"+teaInfo.getSex()+
                "','"+teaInfo.getAcademy()+
                "')");
        if(i>0){flag=true;}
        DBUtil.closeConn();
        return flag;
    }
    public boolean login(String Id,String Password){
        boolean flag=false;
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from teacher where Id='"+Id+
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
    public String[] get(String Id){
        String[] Tea=new String[3];
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from teacher where Id='"+Id+"'");
            while (rs.next()){
                TeaInfo teaInfo=new TeaInfo();
                teaInfo.setName(rs.getString("Name"));
                teaInfo.setSex(rs.getString("Sex"));
                teaInfo.setAcademy(rs.getString("Academy"));
                Tea[0]=teaInfo.getName();
                Tea[1]=teaInfo.getSex();
                Tea[2]=teaInfo.getAcademy();
            }
            DBUtil.closeConn();
            return Tea;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean update(String Name,String Sex,String Id){
        boolean flag=false;
        DBUtil.init();
        String sql="update teacher set Name='"+Name+"',Sex='"+Sex+"'where Id='"+Id+"'";
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to update");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }
    public List getStuAll(String ClassId){
        List list = new ArrayList<>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select Id,Name,Sex from student where ClassId='"+ClassId+"'");
            while (rs.next()){
                StuInfo stuInfo=new StuInfo();
                stuInfo.setId(rs.getString("Id"));
                stuInfo.setName(rs.getString("Name"));
                stuInfo.setSex(rs.getString("Sex"));
                String[] si={stuInfo.getId(),stuInfo.getName(),stuInfo.getSex()};
                list.add(si);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public String[][] searchCourse(String Id){
        String[][] courses=new String[30][5];
        for(int i=0;i<30;i++){
            for(int j=0;j<5;j++){
                courses[i][j]="";
            }
        }
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select CourseId,CourseName,TeaId,Time,Place from course where TeaId='"+Id+"'");
            while (rs.next()){
                Course course=new Course();
                course.setCourseId(rs.getString("CourseId"));
                course.setCourseName(rs.getString("CourseName"));
                course.setName(rs.getString("TeaId"));
                course.setTime(rs.getString("Time"));
                course.setPlace(rs.getString("Place"));
                if("星期一 1-2节".equals(course.getTime())){
                    courses[0][0]=course.getCourseId();
                    courses[0][1]=course.getCourseName();
                    courses[0][2]=course.getTeaId();
                    courses[0][3]=course.getTime();
                    courses[0][4]=course.getPlace();
                }

                if("星期一 3-4节".equals(course.getTime())){
                    courses[1][0]=course.getCourseId();
                    courses[1][1]=course.getCourseName();
                    courses[1][2]=course.getTeaId();
                    courses[1][3]=course.getTime();
                    courses[1][4]=course.getPlace();
                }

                if("星期一 5-6节".equals(course.getTime())){
                    courses[2][0]=course.getCourseId();
                    courses[2][1]=course.getCourseName();
                    courses[2][2]=course.getTeaId();
                    courses[2][3]=course.getTime();
                    courses[2][4]=course.getPlace();
                }

                if("星期一 7-8节".equals(course.getTime())){
                    courses[3][0]=course.getCourseId();
                    courses[3][1]=course.getCourseName();
                    courses[3][2]=course.getTeaId();
                    courses[3][3]=course.getTime();
                    courses[3][4]=course.getPlace();
                }

                if("星期一 9-10节".equals(course.getTime())){
                    courses[4][0]=course.getCourseId();
                    courses[4][1]=course.getCourseName();
                    courses[4][2]=course.getTeaId();
                    courses[4][3]=course.getTime();
                    courses[4][4]=course.getPlace();
                }

                if("星期一 11-12节".equals(course.getTime())){
                    courses[5][0]=course.getCourseId();
                    courses[5][1]=course.getCourseName();
                    courses[5][2]=course.getTeaId();
                    courses[5][3]=course.getTime();
                    courses[5][4]=course.getPlace();
                }

                if("星期二 1-2节".equals(course.getTime())){
                    courses[6][0]=course.getCourseId();
                    courses[6][1]=course.getCourseName();
                    courses[6][2]=course.getTeaId();
                    courses[6][3]=course.getTime();
                    courses[6][4]=course.getPlace();
                }

                if("星期二 3-4节".equals(course.getTime())){
                    courses[7][0]=course.getCourseId();
                    courses[7][1]=course.getCourseName();
                    courses[7][2]=course.getTeaId();
                    courses[7][3]=course.getTime();
                    courses[7][4]=course.getPlace();
                }

                if("星期二 5-6节".equals(course.getTime())){
                    courses[8][0]=course.getCourseId();
                    courses[8][1]=course.getCourseName();
                    courses[8][2]=course.getTeaId();
                    courses[8][3]=course.getTime();
                    courses[8][4]=course.getPlace();
                }

                if("星期二 7-8节".equals(course.getTime())){
                    courses[9][0]=course.getCourseId();
                    courses[9][1]=course.getCourseName();
                    courses[9][2]=course.getTeaId();
                    courses[9][3]=course.getTime();
                    courses[9][4]=course.getPlace();
                }

                if("星期二 9-10节".equals(course.getTime())){
                    courses[10][0]=course.getCourseId();
                    courses[10][1]=course.getCourseName();
                    courses[10][2]=course.getTeaId();
                    courses[10][3]=course.getTime();
                    courses[10][4]=course.getPlace();
                }

                if("星期二 11-12节".equals(course.getTime())){
                    courses[11][0]=course.getCourseId();
                    courses[11][1]=course.getCourseName();
                    courses[11][2]=course.getTeaId();
                    courses[11][3]=course.getTime();
                    courses[11][4]=course.getPlace();
                }

                if("星期三 1-2节".equals(course.getTime())){
                    courses[12][0]=course.getCourseId();
                    courses[12][1]=course.getCourseName();
                    courses[12][2]=course.getTeaId();
                    courses[12][3]=course.getTime();
                    courses[12][4]=course.getPlace();
                }

                if("星期三 3-4节".equals(course.getTime())){
                    courses[13][0]=course.getCourseId();
                    courses[13][1]=course.getCourseName();
                    courses[13][2]=course.getTeaId();
                    courses[13][3]=course.getTime();
                    courses[13][4]=course.getPlace();
                }

                if("星期三 5-6节".equals(course.getTime())){
                    courses[14][0]=course.getCourseId();
                    courses[14][1]=course.getCourseName();
                    courses[14][2]=course.getTeaId();
                    courses[14][3]=course.getTime();
                    courses[14][4]=course.getPlace();
                }

                if("星期三 7-8节".equals(course.getTime())){
                    courses[15][0]=course.getCourseId();
                    courses[15][1]=course.getCourseName();
                    courses[15][2]=course.getTeaId();
                    courses[15][3]=course.getTime();
                    courses[15][4]=course.getPlace();
                }

                if("星期三 9-10节".equals(course.getTime())){
                    courses[16][0]=course.getCourseId();
                    courses[16][1]=course.getCourseName();
                    courses[16][2]=course.getTeaId();
                    courses[16][3]=course.getTime();
                    courses[16][4]=course.getPlace();
                }

                if("星期三 11-12节".equals(course.getTime())){
                    courses[17][0]=course.getCourseId();
                    courses[17][1]=course.getCourseName();
                    courses[17][2]=course.getTeaId();
                    courses[17][3]=course.getTime();
                    courses[17][4]=course.getPlace();
                }

                if("星期四 1-2节".equals(course.getTime())){
                    courses[18][0]=course.getCourseId();
                    courses[18][1]=course.getCourseName();
                    courses[18][2]=course.getTeaId();
                    courses[18][3]=course.getTime();
                    courses[18][4]=course.getPlace();
                }

                if("星期四 3-4节".equals(course.getTime())){
                    courses[19][0]=course.getCourseId();
                    courses[19][1]=course.getCourseName();
                    courses[19][2]=course.getTeaId();
                    courses[19][3]=course.getTime();
                    courses[19][4]=course.getPlace();
                }

                if("星期四 5-6节".equals(course.getTime())){
                    courses[20][0]=course.getCourseId();
                    courses[20][1]=course.getCourseName();
                    courses[20][2]=course.getTeaId();
                    courses[20][3]=course.getTime();
                    courses[20][4]=course.getPlace();
                }

                if("星期四 7-8节".equals(course.getTime())){
                    courses[21][0]=course.getCourseId();
                    courses[21][1]=course.getCourseName();
                    courses[21][2]=course.getTeaId();
                    courses[21][3]=course.getTime();
                    courses[21][4]=course.getPlace();
                }

                if("星期四 9-10节".equals(course.getTime())){
                    courses[22][0]=course.getCourseId();
                    courses[22][1]=course.getCourseName();
                    courses[22][2]=course.getTeaId();
                    courses[22][3]=course.getTime();
                    courses[22][4]=course.getPlace();
                }

                if("星期四 11-12节".equals(course.getTime())){
                    courses[23][0]=course.getCourseId();
                    courses[23][1]=course.getCourseName();
                    courses[23][2]=course.getTeaId();
                    courses[23][3]=course.getTime();
                    courses[23][4]=course.getPlace();
                }

                if("星期五 1-2节".equals(course.getTime())){
                    courses[24][0]=course.getCourseId();
                    courses[24][1]=course.getCourseName();
                    courses[24][2]=course.getTeaId();
                    courses[24][3]=course.getTime();
                    courses[24][4]=course.getPlace();
                }

                if("星期五 3-4节".equals(course.getTime())){
                    courses[25][0]=course.getCourseId();
                    courses[25][1]=course.getCourseName();
                    courses[25][2]=course.getTeaId();
                    courses[25][3]=course.getTime();
                    courses[25][4]=course.getPlace();
                }

                if("星期五 5-6节".equals(course.getTime())){
                    courses[26][0]=course.getCourseId();
                    courses[26][1]=course.getCourseName();
                    courses[26][2]=course.getTeaId();
                    courses[26][3]=course.getTime();
                    courses[26][4]=course.getPlace();
                }

                if("星期五 7-8节".equals(course.getTime())){
                    courses[27][0]=course.getCourseId();
                    courses[27][1]=course.getCourseName();
                    courses[27][2]=course.getTeaId();
                    courses[27][3]=course.getTime();
                    courses[27][4]=course.getPlace();
                }

                if("星期五 9-10节".equals(course.getTime())){
                    courses[28][0]=course.getCourseId();
                    courses[28][1]=course.getCourseName();
                    courses[28][2]=course.getTeaId();
                    courses[28][3]=course.getTime();
                    courses[28][4]=course.getPlace();
                }

                if("星期五 11-12节".equals(course.getTime())){
                    courses[29][0]=course.getCourseId();
                    courses[29][1]=course.getCourseName();
                    courses[29][2]=course.getTeaId();
                    courses[29][3]=course.getTime();
                    courses[29][4]=course.getPlace();
                }
            }
            DBUtil.closeConn();
            return courses;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean applyCourse(CourseChangeInfo cci){
        boolean flag=false;
        DBUtil.init();
        int i=DBUtil.addUpdDel("insert into coursechangeinfo (CourseId,CourseName,Id,Place,Time,ChangePlace,ChangeTime,Notes)"+
                    "values('"+cci.getCourseId()+
                    "','"+cci.getCourseName()+
                    "','"+cci.getId()+
                    "','"+cci.getPlace()+
                    "','"+cci.getTime()+
                    "','"+cci.getChangePlace()+
                    "','"+cci.getChangeTime()+
                    "','"+cci.getNotes()+
                    "')");
        if(i>0){flag=true;}
        DBUtil.closeConn();
        return flag;
    }
    public List<CourseChangeInfo> CheckAC(String Id) {
        List<CourseChangeInfo> list = new ArrayList<CourseChangeInfo>();
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from coursechangeinfo where Id='" + Id + "'");
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
    public List<StuAttendance> searchAtt(String ClassId){
        List<StuAttendance> list=new ArrayList<StuAttendance>();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        String time=sdf.format(date);
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select stuattendance.Id,stuattendance.Time,stuattendance.Notes from stuattendance,student where stuattendance.Time like '"+time+"%' and student.ClassId='"+ClassId+"' group by Id");
            while (rs.next()){
                StuAttendance stuAttendance=new StuAttendance();
                stuAttendance.setId(rs.getString("Id"));
                stuAttendance.setTime(rs.getString("Time"));
                stuAttendance.setNotes(rs.getString("Notes"));
                list.add(stuAttendance);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public List attInfo(String ClassId){
        List list=new ArrayList<>();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        String time=sdf.format(date);
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select student.Id,student.Name,stuattendance.Time,stuattendance.Notes from stuattendance as stuattendance inner join student as student on student.Id=stuattendance.Id and student.ClassId='"+ClassId+"' and stuattendance.Time like'"+time+"' group by stuattendance.Id");
            while (rs.next()){
                StuAttendance stuAttendance=new StuAttendance();
                stuAttendance.setName(rs.getString("Name"));
                stuAttendance.setId(rs.getString("Id"));
                stuAttendance.setTime(rs.getString("Time"));
                stuAttendance.setNotes(rs.getString("Notes"));
                String[] att={stuAttendance.getId(),stuAttendance.getName(),stuAttendance.getTime(),stuAttendance.getNotes()};
                list.add(att);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public String[] searchSta(String Id){
       String[] statusStr=new String[6];
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from stustatus where Id='"+Id+"'");
            while (rs.next()){
                Status status=new Status();
                status.setOrigin(rs.getString("Origin"));
                status.setEnterBatch(rs.getString("EnterBatch"));
                status.setUnifiedId(rs.getString("UnifiedId"));
                status.setAdmissionDate(rs.getString("AdmissionDate"));
                status.setStatusChange(rs.getString("StatusChange"));
                status.setNotes(rs.getString("Notes"));
                statusStr[0]=status.getOrigin();
                statusStr[1]=status.getEnterBatch();
                statusStr[2]=status.getAdmissionDate();
                statusStr[3]=status.getUnifiedId();
                statusStr[4]=status.getStatusChange();
                statusStr[5]=status.getNotes();
            }
            DBUtil.closeConn();
//            for(int i=0;i<statusStr.length;i++){
//                System.out.println(statusStr[i]);
//            }
            return statusStr;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public List searchScore(String CourseId){
        List list = new ArrayList<>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql(" select student.Name,gradedetails.AcademicYear,gradedetails.CourseId,gradedetails.CourseName,gradedetails.Score,gradedetails.kKey from gradedetails as gradedetails inner join student as student on student.Id=gradedetails.Id and gradedetails.CourseId='"+CourseId+"'");
            while (rs.next()){
                StuGrade sg=new StuGrade();
                sg.setName(rs.getString("Name"));
                sg.setAcademicYear(rs.getString("AcademicYear"));
                sg.setCourseId(rs.getString("CourseId"));
                sg.setCourseName(rs.getString("CourseName"));
                sg.setScore(rs.getInt("Score"));
                sg.setKey(rs.getInt("kKey"));
                String[] si={sg.getName(),sg.getAcademicYear(),sg.getCourseId(),sg.getCourseName(),sg.getScore()+"",sg.getKey()+""};
                list.add(si);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean insertScore(int Score,int Key){
        boolean flag=false;
        DBUtil.init();
        String sql="update gradedetails set Score="+Score+" where kKey="+Key;
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
}

