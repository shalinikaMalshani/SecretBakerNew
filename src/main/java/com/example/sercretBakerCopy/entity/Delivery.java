package com.example.sercretBakerCopy.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Delivery {
    @Id
    private int deliveryId;
    private String name;
    private String lastName;

//    private String date;
//    private String nic;

    private String deliveryArea;
    private String location;
    private String contactNo;
    private String email;
    private String deliveryDate;
    private String deliveryTime;

    public Delivery(int deliveryId, String name, String lastName, String deliveryArea,
                    String location,  String contactNo, String email, String deliveryDate, String deliveryTime) {
        this.deliveryId = deliveryId;
        this.name = name;
        this.lastName = lastName;
        this.contactNo = contactNo;
        this.email = email;
//        this.date = date;
//        this.nic = nic;
        this.deliveryArea = deliveryArea;
        this.location = location;
        this.deliveryDate = deliveryDate;
        this.deliveryTime = deliveryTime;
    }

    public Delivery() {
    }



//    public Delivery(int deliveryId, String name, String lastName, String deliveryArea, String location, String contactNo, String email, String deliveryTime) {
//    }


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

//    public String getNic() {
//        return nic;
//    }
//
//    public void setNic(String nic) {
//        this.nic = nic;
//    }

    public String getDeliveryArea() {
        return deliveryArea;
    }

    public void setDeliveryArea(String deliveryArea) {
        this.deliveryArea = deliveryArea;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(String deliveryTime) {
        this.deliveryTime = deliveryTime;
    }
}
