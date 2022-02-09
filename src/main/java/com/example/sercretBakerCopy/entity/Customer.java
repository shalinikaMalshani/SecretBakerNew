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
    private String email;
    private String number;
    private String password;
    private String address_l1;
    private String address_l2;
    private String address_l3;
    private String token;


    @OneToMany(mappedBy = "customer", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<OrderNew> restaurantOnlineOrders = new ArrayList<>();

    @OneToMany(mappedBy = "customer", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<OrderDetail> restaurantOnlineOrdersDetail = new ArrayList<>();

    @OneToMany(mappedBy = "customer", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<CustomDesign> customDesigns = new ArrayList<>();


    public Customer() {
    }

    public Customer(int onlineCustomerId, String userName, String address_l1, String address_l2, String address_l3, String email, String number) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.address_l1 = address_l1;
        this.address_l2 = address_l2;
        this.address_l3 = address_l3;
        this.email = email;
        this.number = number;
    }
    public Customer(int onlineCustomerId, String userName, String address_l1, String address_l2, String address_l3, String email) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.address_l1 = address_l1;
        this.address_l2 = address_l2;
        this.address_l3 = address_l3;
        this.email = email;

    }


    public Customer(int onlineCustomerId, String userName) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
    }

    public Customer(int onlineCustomerId, String email,  String address_l1, String address_l2, String address_l3) {
        this.onlineCustomerId = onlineCustomerId;
        this.email = email;
        this.address_l1 = address_l1;
        this.address_l2 = address_l2;
        this.address_l3 = address_l3;
    }

    public Customer(int onlineCustomerId, String userName, String email, String number, String password, String address_l1, String address_l2, String address_l3) {
        this.onlineCustomerId = onlineCustomerId;
        this.userName = userName;
        this.email = email;
        this.number = number;
        this.password = password;
        this.address_l1 = address_l1;
        this.address_l2 = address_l2;
        this.address_l3 = address_l3;
    }

    public int getOnlineCustomerId() {
        return onlineCustomerId;
    }

    public void setOnlineCustomerId(int onlineCustomerId) {
        this.onlineCustomerId = onlineCustomerId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getAddress_l1() {
        return address_l1;
    }

    public void setAddress_l1(String address_l1) {
        this.address_l1 = address_l1;
    }

    public String getAddress_l2() {
        return address_l2;
    }

    public void setAddress_l2(String address_l2) {
        this.address_l2 = address_l2;
    }

    public String getAddress_l3() {
        return address_l3;
    }

    public void setAddress_l3(String address_l3) {
        this.address_l3 = address_l3;
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
