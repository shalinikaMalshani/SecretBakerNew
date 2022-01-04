package com.example.sercretBakerCopy.entity;


import javax.persistence.*;
import java.io.Serializable;

@Entity
public class OrderDetail implements Serializable {


    @EmbeddedId
    private OrderDetailPK restaurantCounterOrderDetailPK;
    private int quantity;
    private int unitePrice;
    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "restaurantCounterOrder", referencedColumnName = "orderId", insertable = false, updatable = false)
    private OrderNew restaurantCounterOrder;
    @ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "foodItemId", referencedColumnName = "itemId",insertable = false, updatable = false)
    private FoodItem foodItem;
    @ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    @JoinColumn(name = "onlineCustomerId", referencedColumnName = "onlineCustomerId", nullable = false)
    private Customer customer;



    public OrderDetail(OrderDetailPK restaurantCounterOrderDetailPK, int quantity, int unitePrice) {
        this.restaurantCounterOrderDetailPK = restaurantCounterOrderDetailPK;
        this.quantity = quantity;
        this.unitePrice = unitePrice;

    }


    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public OrderDetail(int restaurantCounterOrder, int foodItemId, int quantity, int unitePrice) {
        this.restaurantCounterOrderDetailPK = new OrderDetailPK(foodItemId,restaurantCounterOrder);
        this.quantity = quantity;
        this.unitePrice = unitePrice;

    }


    public OrderDetail(int restaurantCounterOrder, int foodItemId, int quantity, int unitePrice, Customer customer) {
        this.restaurantCounterOrderDetailPK = new OrderDetailPK(foodItemId,restaurantCounterOrder);
        this.quantity = quantity;
        this.unitePrice = unitePrice;
        this.customer = customer;

    }

    public OrderDetail(int quantity, int unitePrice, OrderNew restaurantCounterOrder, FoodItem foodItem) {
        this.quantity = quantity;
        this.unitePrice = unitePrice;
        this.restaurantCounterOrder = restaurantCounterOrder;
        this.foodItem = foodItem;
    }

    public OrderDetail( OrderNew restaurantCounterOrder, int quantity, int unitePrice,FoodItem foodItem, Customer customer) {
        this.restaurantCounterOrder = restaurantCounterOrder;
        this.foodItem = foodItem;
        this.quantity = quantity;
        this.unitePrice = unitePrice;
        this.customer = customer;
    }

    public OrderDetail() {
    }

    public int getQuantity() {
        return quantity;
    }


    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnitePrice() {
        return unitePrice;
    }

    public void setUnitePrice(int unitePrice) {
        this.unitePrice = unitePrice;
    }

    public OrderDetailPK getRestaurantCounterOrderDetailPK() {
        return restaurantCounterOrderDetailPK;
    }

    public void setRestaurantCounterOrderDetailPK(OrderDetailPK restaurantCounterOrderDetailPK) {
        this.restaurantCounterOrderDetailPK = restaurantCounterOrderDetailPK;
    }

    public OrderNew getRestaurantCounterOrder() {
        return restaurantCounterOrder;
    }

    public void setRestaurantCounterOrder(OrderNew restaurantCounterOrder) {
        this.restaurantCounterOrder = restaurantCounterOrder;
    }

    public FoodItem getFoodItem() {
        return foodItem;
    }

    public void setFoodItem(FoodItem foodItem) {
        this.foodItem = foodItem;
    }
}
