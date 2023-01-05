package com.domain;

public class CourseChangeInfo extends Course{
    private String ChangePlace;
    private String ChangeTime;
    private String Notes;

    public String getChangePlace() {
        return ChangePlace;
    }

    public void setChangePlace(String changePlace) {
        ChangePlace = changePlace;
    }

    public String getChangeTime() {
        return ChangeTime;
    }

    public void setChangeTime(String changeTime) {
        ChangeTime = changeTime;
    }

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String notes) {
        Notes = notes;
    }
}
