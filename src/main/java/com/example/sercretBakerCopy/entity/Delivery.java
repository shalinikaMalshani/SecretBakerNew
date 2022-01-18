package com.example.sercretBakerCopy.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Delivery {
    @Id
    private int deliveryId;
    private String name;
    private String contactNo;
    private String email;
//    private String date;
    private String nic;
    private String deliveryArea;
    private String location;

    public Delivery(int deliveryId, String name, String contactNo, String email,
                    String nic, String deliveryArea, String location) {
        this.deliveryId = deliveryId;
        this.name = name;
        this.contactNo = contactNo;
        this.email = email;
//        this.date = date;
        this.nic = nic;
        this.deliveryArea = deliveryArea;
        this.location = location;
    }

    public Delivery() {
    }

    public int getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(int deliveryId) {
        this.deliveryId = deliveryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

//    public Date getDate() {
//        return date;
//    }
//
//    public void setDate(Date date) {
//        this.date = date;
//    }


//    public int getDate() {
////        return date;
////    }
////
////    public void setDate(int date) {
////        this.date = date;
////    }

//
//    public String getDate() {
//        return date;
//    }
//
//    public void setDate(String date) {
//        this.date = date;
//    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getDeliveryArea() {
        return deliveryArea;
    }

    public void setDeliveryArea(String deliveryArea) {
        this.deliveryArea = deliveryArea;
    }
}
