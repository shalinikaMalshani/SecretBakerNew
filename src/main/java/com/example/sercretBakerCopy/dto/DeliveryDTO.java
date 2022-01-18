package com.example.sercretBakerCopy.dto;

public class DeliveryDTO {
    private int deliveryId;
    private String name;
    private String contactNo;
    private String email;
//    private String date;
    private String nic;
    private String deliveryArea;
    private String location;

    public DeliveryDTO() {
    }

    public DeliveryDTO(int deliveryId, String name, String contactNo,
                       String email, String nic, String deliveryArea, String location) {
        this.deliveryId = deliveryId;
        this.name = name;
        this.contactNo = contactNo;
        this.email = email;
//        this.date = date;
        this.nic = nic;
        this.deliveryArea = deliveryArea;
        this.location  = location;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "DeliveryDTO{" +
                "deliveryId=" + deliveryId +
                ", name='" + name + '\'' +
                ", contactNo='" + contactNo + '\'' +
                ", email='" + email + '\'' +
//                ", date='" + date + '\'' +
                ", nic='" + nic + '\'' +
                ", deliveryArea='" + deliveryArea + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
