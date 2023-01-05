package com.domain;

public class Course extends TeaInfo {
    private String CourseId;
    private String CourseName;
    private String TeaId;
    private String Time;
    private String Place;

    @Override
    public String toString() {
        return "Course{" +
                "CourseId='" + CourseId + '\'' +
                ", CourseName='" + CourseName + '\'' +
                ", TeaId='" + TeaId + '\'' +
                ", Time='" + Time + '\'' +
                ", Place='" + Place + '\'' +
                '}';
    }

    public String getTeaId() {
        return TeaId;
    }

    public void setTeaId(String teaId) {
        TeaId = teaId;
    }

    public String getCourseId() {
        return CourseId;
    }

    public void setCourseId(String courseId) {
        CourseId = courseId;
    }

    public String getCourseName() {
        return CourseName;
    }

    public void setCourseName(String courseName) {
        CourseName = courseName;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String getPlace() {
        return Place;
    }

    public void setPlace(String place) {
        Place = place;
    }
}
