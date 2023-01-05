package com.domain;

public class Status extends StuInfo{
    private String Origin;
    private String EnterBatch;
    private String AdmissionDate;
    private String UnifiedId;
    private String StatusChange;
    private String Notes;

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String notes) {
        Notes = notes;
    }

    public String getOrigin() {
        return Origin;
    }

    public void setOrigin(String origin) {
        Origin = origin;
    }

    public String getEnterBatch() {
        return EnterBatch;
    }

    public void setEnterBatch(String enterBatch) {
        EnterBatch = enterBatch;
    }

    public String getAdmissionDate() {
        return AdmissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        AdmissionDate = admissionDate;
    }

    public String getUnifiedId() {
        return UnifiedId;
    }

    public void setUnifiedId(String unifiedId) {
        UnifiedId = unifiedId;
    }

    public String getStatusChange() {
        return StatusChange;
    }

    public void setStatusChange(String statusChange) {
        StatusChange = statusChange;
    }
}
