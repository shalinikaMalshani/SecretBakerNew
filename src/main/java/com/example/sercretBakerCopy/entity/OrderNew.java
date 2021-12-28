package com.example.sercretBakerCopy.entity;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class OrderNew {

    @Id
    private int orderId;
    private String orderState;
    //private double quantity;
    private Date date;
    private int orderHolder;
    @OneToMany(mappedBy = "restaurantCounterOrder", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<OrderDetail> orderDetails = new ArrayList<>();

    @ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "onlineCustomerId", referencedColumnName = "onlineCustomerId", nullable = false)
    private Customer customer;

    public OrderNew(int orderId, String orderState,
                    Date date, int orderHolder) {
        this.orderId = orderId;
        this.orderState = orderState;
        //this.quantity = quantity;
        this.date = date;
        this.orderHolder = orderHolder;
    }

    public OrderNew(int orderId, String orderState, Date date, Customer customer) {
        this.orderId = orderId;
        this.orderState = orderState;
        this.date = date;
        this.customer = customer;
    }

    public OrderNew(int orderId, String orderState,
                    Date date, int orderHolder, List<OrderDetail> orderDetails) {
        this.orderId = orderId;
        this.orderState = orderState;
        //this.quantity = quantity;
        this.date = date;
        this.orderHolder = orderHolder;
        this.orderDetails = orderDetails;
    }

    public OrderNew() {
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getOrderHolder() {
        return orderHolder;
    }

    public void setOrderHolder(int orderHolder) {
        this.orderHolder = orderHolder;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
}
