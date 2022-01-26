package com.example.sercretBakerCopy.dto;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDTO {
    private int orderId;
    private String orderState;
    private String foodName;
    //private double quantity;
    private LocalDate date;
    private String dataValue;
    private int customer;
    private int orderHolder;
    private List<OrderDetailDTO> orderDetails = new ArrayList<>();

    public OrderDTO(int orderId, String orderState,
                    LocalDate date, String dataValue, int customer,
                    int orderHolder) {
        this.orderId = orderId;
        this.orderState = orderState;
        //this.quantity = quantity;
        this.date = date;
        this.dataValue = dataValue;
        this.customer = customer;
        this.orderHolder = orderHolder;
    }

    public OrderDTO(int orderId, String orderState,
                    LocalDate date, String dataValue,
                    int customer) {
        this.orderId = orderId;
        this.orderState = orderState;
        //this.quantity = quantity;
        this.date = date;
        this.dataValue = dataValue;
        this.customer = customer;
    }

    public OrderDTO(int orderId, String orderState, LocalDate date,int customer) {
        this.orderId = orderId;
        this.orderState = orderState;

        this.date = date;

        this.customer = customer;
    }

    public OrderDTO(int orderId, String orderState, LocalDate date, String dataValue,
                    int customer, int orderHolder, List<OrderDetailDTO> orderDetails) {
        this.orderId = orderId;
        this.orderState = orderState;
        //this.quantity = quantity;
        this.date = date;
        this.dataValue = dataValue;
        this.customer = customer;
        this.orderHolder = orderHolder;
        this.orderDetails = orderDetails;
    }


    public OrderDTO() {
    }

    public OrderDTO(int orderId, String orderState, String foodName, LocalDate date,
                    String dataValue, int customer, int orderHolder, List<OrderDetailDTO> orderDetails) {
        this.orderId = orderId;
        this.orderState = orderState;
        this.foodName = foodName;
        //this.quantity = quantity;
        this.date = date;
        this.dataValue = dataValue;
        this.customer = customer;
        this.orderHolder = orderHolder;
        this.orderDetails = orderDetails;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public List<OrderDetailDTO> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetailDTO> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public OrderDTO(int orderId) {      this.orderId = orderId;
    }

    public String getDataValue() {
        return dataValue;
    }

    public void setDataValue(String dataValue) {
        this.dataValue = dataValue;
    }

    public int getOrderHolder() {
        return orderHolder;
    }

    public void setOrderHolder(int orderHolder) {
        this.orderHolder = orderHolder;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState;
    }

//    public double getQuantity() {
//        return quantity;
//    }
//
//    public void setQuantity(double quantity) {
//        this.quantity = quantity;
//    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getCustomer() {
        return customer;
    }

    public void setCustomer(int customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "RestaurantCounterOrderDTO{" +
                "orderId=" + orderId +
                ", orderState='" + orderState + '\'' +
               // ", quantity=" + quantity +
                ", date=" + date +
                ", dataValue='" + dataValue + '\'' +
                ", customer=" + customer +
                ", orderHolder=" + orderHolder +
                ", orderDetails=" + orderDetails +
                '}';
    }
}
