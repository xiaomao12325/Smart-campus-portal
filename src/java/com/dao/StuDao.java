package com.dao;
import com.domain.*;
import com.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StuDao {
    public boolean register(StuInfo stuInfo){
        boolean flag=false;
        DBUtil.init();
        int i=DBUtil.addUpdDel("insert into student (Id,Name,Password,Sex,ClassId,Profession,Academy)values('"
                                     +stuInfo.getId()+
                                "','"+stuInfo.getName()+
                                "','"+stuInfo.getPassword()+
                                "','"+stuInfo.getSex()+
                                "','"+stuInfo.getClassId()+
                                "','"+stuInfo.getProfession()+
                                "','"+stuInfo.getAcademy()+
                                "')");
        if(i>0){flag=true;}
        DBUtil.closeConn();
        return flag;
    }
    public boolean login(String Id,String Password){
        boolean flag=false;
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from student where Id='"+Id+
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
        String[] Stu=new String[6];
        try {
            DBUtil.init();
            ResultSet rs = DBUtil.selectSql("select * from student where Id='"+Id+"'");
            while (rs.next()){
                StuInfo stuInfo=new StuInfo();
                stuInfo.setId(rs.getString("Id"));
                stuInfo.setName(rs.getString("Name"));
                stuInfo.setSex(rs.getString("Sex"));
                stuInfo.setClassId(rs.getString("ClassId"));
                stuInfo.setProfession(rs.getString("Profession"));
                stuInfo.setAcademy(rs.getString("Academy"));
                Stu[0]=stuInfo.getId();
                Stu[1]=stuInfo.getName();
                Stu[2]=stuInfo.getSex();
                Stu[3]=stuInfo.getClassId();
                Stu[4]=stuInfo.getProfession();
                Stu[5]=stuInfo.getAcademy();
            }
            DBUtil.closeConn();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return Stu;
    }
    public boolean update(String Name,String Sex,String Id){
        boolean flag=false;
        DBUtil.init();
        String sql="update student set Name='"+Name+"',Sex='"+Sex+"'where Id='"+Id+"'";
        int i=DBUtil.addUpdDel(sql);
        if(i>0){
            System.out.println("success to update");
            flag=true;
        }
        DBUtil.closeConn();
        return flag;
    }
    public List<StuInfo> getStuAll(String Id){
        List<StuInfo> list = new ArrayList<StuInfo>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select Name,Sex,Id,Profession,Academy from student where ClassId in(select ClassId from student where Id='"+Id+"')");
            while (rs.next()){
                StuInfo stuInfo=new StuInfo();
                stuInfo.setId(rs.getString("Id"));
                stuInfo.setName(rs.getString("Name"));
                stuInfo.setSex(rs.getString("Sex"));
                stuInfo.setProfession(rs.getString("Profession"));
                stuInfo.setAcademy(rs.getString("Academy"));
                list.add(stuInfo);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public List<StuInfo> searchClass(String ClassId){
        List<StuInfo> list=new ArrayList<StuInfo>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select Name,Sex,Id from student where ClassId ='"+ClassId+"'");
            while (rs.next()){
                StuInfo stuInfo=new StuInfo();
                stuInfo.setId(rs.getString("Id"));
                stuInfo.setName(rs.getString("Name"));
                stuInfo.setSex(rs.getString("Sex"));
                stuInfo.setClassId(rs.getString("ClassId"));
                stuInfo.setProfession(rs.getString("Profession"));
                stuInfo.setAcademy(rs.getString("Academy"));
                list.add(stuInfo);
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
            ResultSet rs=DBUtil.selectSql("select course.CourseId,course.CourseName,teacher.Name,course.Time,course.Place from course as course inner join teacher as teacher on course.TeaId=teacher.Id inner join student as student on course.ClassId=(select student.ClassId from student where Id='"+Id+"')");
            System.out.println(Id);
            while (rs.next()){
                Course course=new Course();
                course.setCourseId(rs.getString("CourseId"));
                course.setCourseName(rs.getString("CourseName"));
                course.setName(rs.getString("Name"));
                course.setTime(rs.getString("Time"));
                course.setPlace(rs.getString("Place"));
                if("星期一 1-2节".equals(course.getTime())){
                    courses[0][0]=course.getCourseId();
                    courses[0][1]=course.getCourseName();
                    courses[0][2]=course.getName();
                    courses[0][3]=course.getTime();
                    courses[0][4]=course.getPlace();
                }

                if("星期一 3-4节".equals(course.getTime())){
                    courses[1][0]=course.getCourseId();
                    courses[1][1]=course.getCourseName();
                    courses[1][2]=course.getName();
                    courses[1][3]=course.getTime();
                    courses[1][4]=course.getPlace();
                }

                if("星期一 5-6节".equals(course.getTime())){
                    courses[2][0]=course.getCourseId();
                    courses[2][1]=course.getCourseName();
                    courses[2][2]=course.getName();
                    courses[2][3]=course.getTime();
                    courses[2][4]=course.getPlace();
                }

                if("星期一 7-8节".equals(course.getTime())){
                    courses[3][0]=course.getCourseId();
                    courses[3][1]=course.getCourseName();
                    courses[3][2]=course.getName();
                    courses[3][3]=course.getTime();
                    courses[3][4]=course.getPlace();
                }

                if("星期一 9-10节".equals(course.getTime())){
                    courses[4][0]=course.getCourseId();
                    courses[4][1]=course.getCourseName();
                    courses[4][2]=course.getName();
                    courses[4][3]=course.getTime();
                    courses[4][4]=course.getPlace();
                }

                if("星期一 11-12节".equals(course.getTime())){
                    courses[5][0]=course.getCourseId();
                    courses[5][1]=course.getCourseName();
                    courses[5][2]=course.getName();
                    courses[5][3]=course.getTime();
                    courses[5][4]=course.getPlace();
                }

                if("星期二 1-2节".equals(course.getTime())){
                    courses[6][0]=course.getCourseId();
                    courses[6][1]=course.getCourseName();
                    courses[6][2]=course.getName();
                    courses[6][3]=course.getTime();
                    courses[6][4]=course.getPlace();
                }

                if("星期二 3-4节".equals(course.getTime())){
                    courses[7][0]=course.getCourseId();
                    courses[7][1]=course.getCourseName();
                    courses[7][2]=course.getName();
                    courses[7][3]=course.getTime();
                    courses[7][4]=course.getPlace();
                }

                if("星期二 5-6节".equals(course.getTime())){
                    courses[8][0]=course.getCourseId();
                    courses[8][1]=course.getCourseName();
                    courses[8][2]=course.getName();
                    courses[8][3]=course.getTime();
                    courses[8][4]=course.getPlace();
                }

                if("星期二 7-8节".equals(course.getTime())){
                    courses[9][0]=course.getCourseId();
                    courses[9][1]=course.getCourseName();
                    courses[9][2]=course.getName();
                    courses[9][3]=course.getTime();
                    courses[9][4]=course.getPlace();
                }

                if("星期二 9-10节".equals(course.getTime())){
                    courses[10][0]=course.getCourseId();
                    courses[10][1]=course.getCourseName();
                    courses[10][2]=course.getName();
                    courses[10][3]=course.getTime();
                    courses[10][4]=course.getPlace();
                }

                if("星期二 11-12节".equals(course.getTime())){
                    courses[11][0]=course.getCourseId();
                    courses[11][1]=course.getCourseName();
                    courses[11][2]=course.getName();
                    courses[11][3]=course.getTime();
                    courses[11][4]=course.getPlace();
                }

                if("星期三 1-2节".equals(course.getTime())){
                    courses[12][0]=course.getCourseId();
                    courses[12][1]=course.getCourseName();
                    courses[12][2]=course.getName();
                    courses[12][3]=course.getTime();
                    courses[12][4]=course.getPlace();
                }

                if("星期三 3-4节".equals(course.getTime())){
                    courses[13][0]=course.getCourseId();
                    courses[13][1]=course.getCourseName();
                    courses[13][2]=course.getName();
                    courses[13][3]=course.getTime();
                    courses[13][4]=course.getPlace();
                }

                if("星期三 5-6节".equals(course.getTime())){
                    courses[14][0]=course.getCourseId();
                    courses[14][1]=course.getCourseName();
                    courses[14][2]=course.getName();
                    courses[14][3]=course.getTime();
                    courses[14][4]=course.getPlace();
                }

                if("星期三 7-8节".equals(course.getTime())){
                    courses[15][0]=course.getCourseId();
                    courses[15][1]=course.getCourseName();
                    courses[15][2]=course.getName();
                    courses[15][3]=course.getTime();
                    courses[15][4]=course.getPlace();
                }

                if("星期三 9-10节".equals(course.getTime())){
                    courses[16][0]=course.getCourseId();
                    courses[16][1]=course.getCourseName();
                    courses[16][2]=course.getName();
                    courses[16][3]=course.getTime();
                    courses[16][4]=course.getPlace();
                }

                if("星期三 11-12节".equals(course.getTime())){
                    courses[17][0]=course.getCourseId();
                    courses[17][1]=course.getCourseName();
                    courses[17][2]=course.getName();
                    courses[17][3]=course.getTime();
                    courses[17][4]=course.getPlace();
                }

                if("星期四 1-2节".equals(course.getTime())){
                    courses[18][0]=course.getCourseId();
                    courses[18][1]=course.getCourseName();
                    courses[18][2]=course.getName();
                    courses[18][3]=course.getTime();
                    courses[18][4]=course.getPlace();
                }

                if("星期四 3-4节".equals(course.getTime())){
                    courses[19][0]=course.getCourseId();
                    courses[19][1]=course.getCourseName();
                    courses[19][2]=course.getName();
                    courses[19][3]=course.getTime();
                    courses[19][4]=course.getPlace();
                }

                if("星期四 5-6节".equals(course.getTime())){
                    courses[20][0]=course.getCourseId();
                    courses[20][1]=course.getCourseName();
                    courses[20][2]=course.getName();
                    courses[20][3]=course.getTime();
                    courses[20][4]=course.getPlace();
                }

                if("星期四 7-8节".equals(course.getTime())){
                    courses[21][0]=course.getCourseId();
                    courses[21][1]=course.getCourseName();
                    courses[21][2]=course.getName();
                    courses[21][3]=course.getTime();
                    courses[21][4]=course.getPlace();
                }

                if("星期四 9-10节".equals(course.getTime())){
                    courses[22][0]=course.getCourseId();
                    courses[22][1]=course.getCourseName();
                    courses[22][2]=course.getName();
                    courses[22][3]=course.getTime();
                    courses[22][4]=course.getPlace();
                }

                if("星期四 11-12节".equals(course.getTime())){
                    courses[23][0]=course.getCourseId();
                    courses[23][1]=course.getCourseName();
                    courses[23][2]=course.getName();
                    courses[23][3]=course.getTime();
                    courses[23][4]=course.getPlace();
                }

                if("星期五 1-2节".equals(course.getTime())){
                    courses[24][0]=course.getCourseId();
                    courses[24][1]=course.getCourseName();
                    courses[24][2]=course.getName();
                    courses[24][3]=course.getTime();
                    courses[24][4]=course.getPlace();
                }

                if("星期五 3-4节".equals(course.getTime())){
                    courses[25][0]=course.getCourseId();
                    courses[25][1]=course.getCourseName();
                    courses[25][2]=course.getName();
                    courses[25][3]=course.getTime();
                    courses[25][4]=course.getPlace();
                }

                if("星期五 5-6节".equals(course.getTime())){
                    courses[26][0]=course.getCourseId();
                    courses[26][1]=course.getCourseName();
                    courses[26][2]=course.getName();
                    courses[26][3]=course.getTime();
                    courses[26][4]=course.getPlace();
                }

                if("星期五 7-8节".equals(course.getTime())){
                    courses[27][0]=course.getCourseId();
                    courses[27][1]=course.getCourseName();
                    courses[27][2]=course.getName();
                    courses[27][3]=course.getTime();
                    courses[27][4]=course.getPlace();
                }

                if("星期五 9-10节".equals(course.getTime())){
                    courses[28][0]=course.getCourseId();
                    courses[28][1]=course.getCourseName();
                    courses[28][2]=course.getName();
                    courses[28][3]=course.getTime();
                    courses[28][4]=course.getPlace();
                }

                if("星期五 11-12节".equals(course.getTime())){
                    courses[29][0]=course.getCourseId();
                    courses[29][1]=course.getCourseName();
                    courses[29][2]=course.getName();
                    courses[29][3]=course.getTime();
                    courses[29][4]=course.getPlace();
                }

            }
            DBUtil.closeConn();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return courses;
    }
    public List<StuGrade> searchGrade(String Id){
        List<StuGrade> list=new ArrayList<StuGrade>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select AcademicYear,CourseID,CourseName,Score from gradedetails where Id in("+
                    "select Id from student where Id='"+Id+"')");
            while (rs.next()){
                StuGrade stuGrade=new StuGrade();
                stuGrade.setAcademicYear(rs.getString("AcademicYear"));
                stuGrade.setCourseId(rs.getString("CourseId"));
                stuGrade.setCourseName(rs.getString("CourseName"));
                stuGrade.setScore(rs.getInt("Score"));
                list.add(stuGrade);
            }
            DBUtil.closeConn();
            return list;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public boolean addAttendance(String Id, String Time, String Notes){
        boolean flag=false;
            DBUtil.init();
        int i=DBUtil.addUpdDel("insert into stuattendance (Id,Time,Notes)values('"
                +Id+ "','"+Time+ "','"+Notes+"')");
        if(i>0){flag=true;}
        DBUtil.closeConn();
        return flag;
    }
    public List<StuAttendance> searchStuAtt(String Id){
        List<StuAttendance> list=new ArrayList<StuAttendance>();
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from stuattendance where Id ='"+Id+"'");
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
    public String[] searchStatus(String Id){
        String[] statusstr=new String[6];
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from stustatus where Id='"+Id+"'");
            while (rs.next()){
                Status status=new Status();
                status.setOrigin(rs.getString("Origin"));
                status.setEnterBatch(rs.getString("EnterBatch"));
                status.setAdmissionDate(rs.getString("AdmissionDate"));
                status.setUnifiedId(rs.getString("UnifiedId"));
                status.setStatusChange(rs.getString("StatusChange"));
                status.setNotes(rs.getString("Notes"));
                statusstr[0]=status.getOrigin();
                statusstr[1]=status.getEnterBatch();
                statusstr[2]=status.getAdmissionDate();
                statusstr[3]=status.getUnifiedId();
                statusstr[4]=status.getStatusChange();
                statusstr[5]=status.getNotes();
            }
            DBUtil.closeConn();
            return statusstr;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
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
    public boolean searchMagazine(String MagazineName){
        boolean flag=false;
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from academicmagazine where MagazineName like'"+MagazineName+"'");
            while (rs.next()){
                if(rs.getString("MagazineName").equals(MagazineName)){
                    flag=true;
                }
            }
            DBUtil.closeConn();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
    public boolean searchBook(String BookName){
        boolean flag=false;
        try{
            DBUtil.init();
            ResultSet rs=DBUtil.selectSql("select * from stustatus where BookName like'"+BookName+"'");
            while (rs.next()){
                if(rs.getString("BookName").equals(BookName)){
                    flag=true;
                }
            }
            DBUtil.closeConn();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
}
