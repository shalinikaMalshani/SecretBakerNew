package com.example.sercretBakerCopy.entity;

import javax.persistence.*;
import java.sql.Blob;
import java.time.LocalDate;
import java.util.Date;

@Entity
public class CustomDesign {
    @Id
    private int customDesignId;
    private String cusDesName;
    private String cusDesemail;
    private String cusDescontact;
    private String cusDescakeType;
    private String cusDescakeSize;
    private LocalDate cusDesdate;
//    @Lob
//    @Basic(fetch = FetchType.LAZY)
//    private byte[] cusDesimage;
    private String cusDesimage;

    private String cusDesdes;

    @ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "onlineCustomerId", referencedColumnName = "onlineCustomerId", nullable = false)
    private Customer customer;

    public CustomDesign() {
    }

//    public CustomDesign(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, byte[] cusDesimage, String cusDesdes) {
//        this.customDesignId = customDesignId;
//        this.cusDesName = cusDesName;
//        this.cusDesemail = cusDesemail;
//        this.cusDescontact = cusDescontact;
//        this.cusDescakeType = cusDescakeType;
//        this.cusDescakeSize = cusDescakeSize;
//        this.cusDesdate = cusDesdate;
//        this.cusDesimage = cusDesimage;
//        this.cusDesdes = cusDesdes;
//    }
//
//    public CustomDesign(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, byte[] cusDesimage, String cusDesdes, Customer customer) {
//        this.customDesignId = customDesignId;
//        this.cusDesName = cusDesName;
//        this.cusDesemail = cusDesemail;
//        this.cusDescontact = cusDescontact;
//        this.cusDescakeType = cusDescakeType;
//        this.cusDescakeSize = cusDescakeSize;
//        this.cusDesdate = cusDesdate;
//        this.cusDesimage = cusDesimage;
//        this.cusDesdes = cusDesdes;
//        this.customer = customer;
//    }
//
//    public CustomDesign(byte[] cusDesimage) {
//        this.cusDesimage = cusDesimage;
//    }

    public CustomDesign(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesimage, String cusDesdes, Customer customer) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDesemail = cusDesemail;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesimage = cusDesimage;
        this.cusDesdes = cusDesdes;
        this.customer = customer;
    }

    public CustomDesign(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesdes, Customer customer) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDesemail = cusDesemail;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesdes = cusDesdes;
        this.customer = customer;
    }


    public CustomDesign(int customDesignId, String cusDesName, String cusDesemail, String cusDescontact, String cusDescakeType, String cusDescakeSize, LocalDate cusDesdate, String cusDesimage, String cusDesdes) {
        this.customDesignId = customDesignId;
        this.cusDesName = cusDesName;
        this.cusDesemail = cusDesemail;
        this.cusDescontact = cusDescontact;
        this.cusDescakeType = cusDescakeType;
        this.cusDescakeSize = cusDescakeSize;
        this.cusDesdate = cusDesdate;
        this.cusDesimage = cusDesimage;
        this.cusDesdes = cusDesdes;
    }

    public CustomDesign(LocalDate cusDesdate) {
        this.cusDesdate = cusDesdate;
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

//    public byte[] getCusDesimage() {
//        return cusDesimage;
//    }
//
//    public void setCusDesimage(byte[] cusDesimage) {
//        this.cusDesimage = cusDesimage;
//    }

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

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
