package com.example.sercretBakerCopy.dto;


import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.OrderNew;

public class OrderDetailDTO {


    private int foodItem;
    private int quantity;
    private int unitePrice;

    private String name;
    private int onlineCustomerId;

    public OrderDetailDTO(int foodItem, int quantity, int unitePrice) {

        this.foodItem = foodItem;
        this.quantity = quantity;
        this.unitePrice = unitePrice;
    }

    public OrderDetailDTO(int foodItem, int quantity, int unitePrice, String name) {
        this.foodItem = foodItem;
        this.quantity = quantity;
        this.unitePrice = unitePrice;
        this.name = name;
    }



    public OrderDetailDTO() {
    }

    public int getOnlineCustomerId() {
        return onlineCustomerId;
    }

    public void setOnlineCustomerId(int onlineCustomerId) {
        this.onlineCustomerId = onlineCustomerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFoodItem() {
        return foodItem;
    }

    public void setFoodItem(int foodItem) {
        this.foodItem = foodItem;
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

    @Override
    public String toString() {
        return "RestaurantCounterOrderDetailDTO{" +
                "foodItem='" + foodItem + '\'' +
                ", quantity=" + quantity +
                ", unitePrice=" + unitePrice +
                '}';
    }
}
