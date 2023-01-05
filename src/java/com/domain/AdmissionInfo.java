package com.domain;

public class AdmissionInfo extends AcademyInfo{
    private String FractionalLine;
    private String MajorInfo;
    private int Nk;

    public int getNk() {
        return Nk;
    }

    public void setNk(int nk) {
        Nk = nk;
    }

    public String getFractionalLine() {
        return FractionalLine;
    }

    public void setFractionalLine(String fractionalLine) {
        FractionalLine = fractionalLine;
    }

    public String getMajorInfo() {
        return MajorInfo;
    }

    public void setMajorInfo(String majorInfo) {
        MajorInfo = majorInfo;
    }

}
