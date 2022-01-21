package com.example.sercretBakerCopy.dto;

public class DeliveryDTO {
    private int deliveryId;
    private String name;
    private String lastName;
    private String contactNo;
    private String email;
//    private String date;
//    private String nic;
    private String deliveryArea;
    private String location;
    private String deliveryDate;
    private String deliveryTime;

    public DeliveryDTO() {
    }

    public DeliveryDTO(int deliveryId, String name,String lastName, String deliveryArea, String location,
                       String contactNo, String email,String deliveryDate,String deliveryTime) {
        this.deliveryId = deliveryId;
        this.name = name;
        this.lastName =lastName;

//        this.date = date;
//        this.nic = nic;
        this.deliveryArea = deliveryArea;
        this.location  = location;
        this.contactNo = contactNo;
        this.email = email;
        this.deliveryDate = deliveryDate;
        this.deliveryTime = deliveryTime;
    }

    public DeliveryDTO(int deliveryId) {
        this.deliveryId = deliveryId;
    }


//    public DeliveryDTO(int deliveryId) {
//        this.deliveryId = deliveryId;
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

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

//    public Date getDate() {
//        return date;
//    }
//
//    public void setDate(Date date) {
//        this.date = date;
//    }


//    public String getDate() {
//        return date;
//    }
//
//    public void setDate(String date) {
//        this.date = date;
//    }

//    public String getNic() {
//        return nic;
//    }
//
//    public void setNic(String nic) {
//        this.nic = nic;
//    }


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

    public String getDeliveryArea() {
        return deliveryArea;
    }

    public void setDeliveryArea(String deliveryArea) {
        this.deliveryArea = deliveryArea;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

//    @Override
//    public String toString() {
//        return "DeliveryDTO{" +
//                "deliveryId=" + deliveryId +
//                ", name='" + name + '\'' +
//                ", lastName='" + lastName + '\'' +
//                ", contactNo='" + contactNo + '\'' +
//                ", email='" + email + '\'' +
//                ", deliveryArea='" + deliveryArea + '\'' +
//                ", location='" + location + '\'' +
//                ", deliveryTime='" + deliveryTime + '\'' +
//                '}';
//    }

    @Override
    public String toString() {
        return "DeliveryDTO{" +
                "deliveryId=" + deliveryId +
                ", name='" + name + '\'' +
                ", lastName='" + lastName + '\'' +
                ", contactNo='" + contactNo + '\'' +
                ", email='" + email + '\'' +
                ", deliveryArea='" + deliveryArea + '\'' +
                ", location='" + location + '\'' +
                ", deliveryDate='" + deliveryDate + '\'' +
                ", deliveryTime='" + deliveryTime + '\'' +
                '}';
    }
}
