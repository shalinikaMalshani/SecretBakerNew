package com.example.sercretBakerCopy.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Customer {
    @Id
    private int onlineCustomerId;
    private String userName;
    private String address;
    private String email;
    private String number;
    private String password;

    @OneToMany(mappedBy = "customer", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<OrderNew> restaurantOnlineOrders = new ArrayList<>();

    public Customer() {
    }

    public Customer(int onlineCustomerId, String userName, String address, String email, String number) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.address = address;
        this.email = email;
        this.number = number;
    }

    public Customer(int onlineCustomerId, String userName, String address, String email) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.address = address;
        this.email = email;
    }

    public Customer(int onlineCustomerId, String userName) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
    }

    public Customer(int onlineCustomerId, String address, String email) {
        this.onlineCustomerId = onlineCustomerId;

        this.address = address;
        this.email = email;
    }
    public Customer(int onlineCustomerId, String userName, String address, String email, String number, String password) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.address = address;
        this.email = email;
        this.number = number;
        this.password = password;
    }

    public int getOnlineCustomerId() {
        return onlineCustomerId;
    }

    public void setOnlineCustomerId(int onlineCustomerId) {
        this.onlineCustomerId = onlineCustomerId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
