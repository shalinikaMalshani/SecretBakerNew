package com.example.sercretBakerCopy.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CustomDesign {
    @Id
    private int customDesignId;
    private String firstName;
    private String lastName;
    private String email;
    private String contact;
    private String cakeType;
    private String cakeSize;
    private String date;
    private String image;
    private String des;

    public CustomDesign() {
    }

    public CustomDesign(int customDesignId, String firstName, String lastName, String email, String contact, String cakeType, String cakeSize, String date, String image, String des) {
        this.customDesignId = customDesignId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.contact = contact;
        this.cakeType = cakeType;
        this.cakeSize = cakeSize;
        this.date = date;
        this.image = image;
        this.des = des;
    }

    public CustomDesign(int customDesignId) {
        this.customDesignId = customDesignId;
    }

    public int getCustomDesignId() {
        return customDesignId;
    }

    public void setCustomDesignId(int customDesignId) {
        this.customDesignId = customDesignId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getCakeType() {
        return cakeType;
    }

    public void setCakeType(String cakeType) {
        this.cakeType = cakeType;
    }

    public String getCakeSize() {
        return cakeSize;
    }

    public void setCakeSize(String cakeSize) {
        this.cakeSize = cakeSize;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
}
