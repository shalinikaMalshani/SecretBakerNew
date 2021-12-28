package com.example.sercretBakerCopy.entity;


import javax.persistence.*;

@Entity
public class OrderDetail {

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


    public OrderDetail(OrderDetailPK restaurantCounterOrderDetailPK, int quantity, int unitePrice) {
        this.restaurantCounterOrderDetailPK = restaurantCounterOrderDetailPK;
        this.quantity = quantity;
        this.unitePrice = unitePrice;

    }

    public OrderDetail(int restaurantCounterOrder, int foodItemId, int quantity, int unitePrice) {
        this.restaurantCounterOrderDetailPK = new OrderDetailPK(foodItemId,restaurantCounterOrder);
        this.quantity = quantity;
        this.unitePrice = unitePrice;

    }

    public OrderDetail(int quantity, int unitePrice, OrderNew restaurantCounterOrder, FoodItem foodItem) {
        this.quantity = quantity;
        this.unitePrice = unitePrice;
        this.restaurantCounterOrder = restaurantCounterOrder;
        this.foodItem = foodItem;
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
