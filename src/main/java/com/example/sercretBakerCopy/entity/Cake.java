package com.example.sercretBakerCopy.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Cake implements Serializable {
    @Id
    private int itemId;
    private String foodName;
    private String s_description;
    private String l_description;
    private int price;
    private String src;
    private String category;
//    private String alert;

    //    private String ingredients;
    @OneToMany(mappedBy = "foodItem", cascade = {CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.MERGE})
    private List<OrderDetail> restaurantCounterOrderDetails = new ArrayList<>();



    public Cake(int itemId, String foodName, String s_description, int price) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.price = price;
    }

    public Cake(int itemId,String foodName ,int price, String src) {
        this.itemId=itemId;
        this.foodName = foodName;
        this.price = price;
        this.src = src;
    }

    public Cake(int itemId, String foodName, String s_description, String l_description, int price) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.l_description = l_description;
        this.price = price;
    }


    public Cake(int itemId, String foodName, String s_description, String l_description, int price, String src) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.l_description = l_description;
        this.price = price;
        this.src = src;
//        this.ingredients = ingredients;
    }

    public Cake(int itemId, String foodName, String s_description, String l_description, int price, String src, String category) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.l_description = l_description;
        this.price = price;
        this.src = src;
        this.category = category;
    }

    public Cake() {

    }

    //    public FoodItem(int itemId, String foodName, String s_description, String l_description, int price, String src, String alert) {
//        this.itemId = itemId;
//        this.foodName = foodName;
//        this.s_description = s_description;
//        this.l_description = l_description;
//        this.price = price;
//        this.src = src;
//        this.alert = alert;
//    }
//
    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

//    public int getInCart() {
//        return inCart;
//    }
//
//    public void setInCart(int inCart) {
//        this.inCart = inCart;
//    }

//    public String getAlert() {
//        return alert;
//    }
//
//    public void setAlert(String alert) {
//        this.alert = alert;
//    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

//    public String getIngredients() {
//        return ingredients;
//    }
//
//    public void setIngredients(String ingredients) {
//        this.ingredients = ingredients;
//    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getL_description() {
        return l_description;
    }

    public void setL_description(String l_description) {
        this.l_description = l_description;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getS_description() {
        return s_description;
    }

    public void setS_description(String description) {
        this.s_description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
