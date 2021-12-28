package com.example.sercretBakerCopy.entity;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class OrderDetailPK implements Serializable {

    private int foodItemId;
    private  int restaurantCounterOrder;

    public OrderDetailPK(int foodItemId, int restaurantCounterOrder) {
        this.foodItemId = foodItemId;
        this.restaurantCounterOrder = restaurantCounterOrder;
    }

    public OrderDetailPK() {
    }

    public int getFoodItemId() {
        return foodItemId;
    }

    public void setFoodItemId(int foodItemId) {
        this.foodItemId = foodItemId;
    }

    public int getRestaurantCounterOrderId() {
        return restaurantCounterOrder;
    }

    public void setRestaurantCounterOrderId(int restaurantCounterOrderId) {
        this.restaurantCounterOrder = restaurantCounterOrderId;
    }

    @Override
    public String toString() {
        return "RestaurantCounterOrderDetailPK{" +
                "foodItemId='" + foodItemId + '\'' +
                ", restaurantCounterOrder='" + restaurantCounterOrder + '\'' +
                '}';
    }
}
