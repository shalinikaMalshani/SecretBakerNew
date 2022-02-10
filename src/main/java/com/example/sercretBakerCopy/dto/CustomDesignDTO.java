package com.example.sercretBakerCopy.dto;

import java.sql.Blob;
import java.time.LocalDate;

public class CustomDesignDTO {
    private int customDesignId;
    private String cusDesName;
    private String cusDesemail;
    private String cusDescontact;
    private String cusDescakeType;
    private String cusDescakeSize;
    private LocalDate cusDesdate;
    private String cusDesimage;
    private String cusDesdes;
    private String dataValueCustomDes;
    private int cusDescustomer;

    public CustomDesignDTO() {
    }

    public CustomDesignDTO(int customDesignId, String cusDesName,String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesimage, String cusDesdes, String dataValueCustomDes, int cusDescustomer) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDesemail = cusDesemail;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesimage = cusDesimage;
        this.cusDesdes = cusDesdes;
        this.dataValueCustomDes = dataValueCustomDes;
        this.cusDescustomer = cusDescustomer;
    }

    public CustomDesignDTO(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesimage, String cusDesdes) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesimage = cusDesimage;
        this.cusDesdes = cusDesdes;
    }

    public CustomDesignDTO(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesimage, String cusDesdes, String dataValueCustomDes) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDesemail = cusDesemail;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesimage = cusDesimage;
        this.cusDesdes = cusDesdes;
        this.dataValueCustomDes = dataValueCustomDes;
    }

    public CustomDesignDTO(LocalDate cusDesdate) {
        this.cusDesdate = cusDesdate;
    }

    public CustomDesignDTO(int customDesignId) {
        this.customDesignId = customDesignId;
    }

    public int getCustomDesignId() {
        return customDesignId;
    }

    public void setCustomDesignId(int customDesignId) {
        this.customDesignId = customDesignId;
    }

    public String getCusDesName() {
        return cusDesName;
    }

    public void setCusDesName(String cusDesName) {
        this.cusDesName = cusDesName;
    }


    public String getCusDesemail() {
        return cusDesemail;
    }

    public void setCusDesemail(String cusDesemail) {
        this.cusDesemail = cusDesemail;
    }

    public String getCusDescontact() {
        return cusDescontact;
    }

    public void setCusDescontact(String cusDescontact) {
        this.cusDescontact = cusDescontact;
    }

    public String getCusDescakeType() {
        return cusDescakeType;
    }

    public void setCusDescakeType(String cusDescakeType) {
        this.cusDescakeType = cusDescakeType;
    }

    public String getCusDescakeSize() {
        return cusDescakeSize;
    }

    public void setCusDescakeSize(String cusDescakeSize) {
        this.cusDescakeSize = cusDescakeSize;
    }

    public LocalDate getCusDesdate() {
        return cusDesdate;
    }

    public void setCusDesdate(LocalDate cusDesdate) {
        this.cusDesdate = cusDesdate;
    }

    public String getCusDesimage() {
        return cusDesimage;
    }

    public void setCusDesimage(String cusDesimage) {
        this.cusDesimage = cusDesimage;
    }

    public String getCusDesdes() {
        return cusDesdes;
    }

    public void setCusDesdes(String cusDesdes) {
        this.cusDesdes = cusDesdes;
    }

    public String getDataValueCustomDes() {
        return dataValueCustomDes;
    }

    public void setDataValueCustomDes(String dataValueCustomDes) {
        this.dataValueCustomDes = dataValueCustomDes;
    }

    public int getCusDescustomer() {
        return cusDescustomer;
    }

    public void setCusDescustomer(int cusDescustomer) {
        this.cusDescustomer = cusDescustomer;
    }

    @Override
    public String toString() {
        return "CustomDesignDTO{" +
                ",customDesignId'" + customDesignId +
                ", firstName='" + cusDesName + '\'' +
                ", email=" +  cusDesemail +
                ", contact='" +  cusDescontact + '\'' +
                ", cakeType=" +  cusDescakeType +
                ", cakeSize=" +  cusDescakeSize +
                ", date=" +  cusDesdate +
                ", image=" +  cusDesimage +
                ", dataValueCustomDes=" +  dataValueCustomDes +
                ", des=" +  cusDesdes +
                '}';
    }
}
