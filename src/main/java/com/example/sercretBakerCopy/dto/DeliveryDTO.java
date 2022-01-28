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
    private String location_l1;
    private String location_l2;
    private String location_l3;
    private String deliveryDate;
    private String deliveryTime;
    private String paymentType;

    public DeliveryDTO() {
    }

    public DeliveryDTO(int deliveryId, String name, String lastName, String contactNo, String email,
                       String deliveryArea, String location_l1, String location_l2, String location_l3,
                       String deliveryDate, String deliveryTime,String paymentType) {
        this.deliveryId = deliveryId;
        this.name = name;
        this.lastName = lastName;
        this.contactNo = contactNo;
        this.email = email;
        this.deliveryArea = deliveryArea;
        this.location_l1 = location_l1;
        this.location_l2 = location_l2;
        this.location_l3 = location_l3;
        this.deliveryDate = deliveryDate;
        this.deliveryTime = deliveryTime;
        this.paymentType = paymentType;
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

    public String getLocation_l1() {
        return location_l1;
    }

    public void setLocation_l1(String location_l1) {
        this.location_l1 = location_l1;
    }

    public String getLocation_l2() {
        return location_l2;
    }

    public void setLocation_l2(String location_l2) {
        this.location_l2 = location_l2;
    }

    public String getLocation_l3() {
        return location_l3;
    }

    public void setLocation_l3(String location_l3) {
        this.location_l3 = location_l3;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
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
////                ", deliveryDate='" + deliveryDate + '\'' +
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
                ", location_l1='" + location_l1 + '\'' +
                ", location_l2='" + location_l2 + '\'' +
                ", location_l3='" + location_l3 + '\'' +
                ", deliveryDate='" + deliveryDate + '\'' +
                ", deliveryTime='" + deliveryTime + '\'' +
                '}';
    }
}
