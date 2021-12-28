package com.example.sercretBakerCopy.dto;

public class FoodItemDTO {
    private int itemId;
    private String foodName;
    private String s_description;
    private String l_description;
    private int price;
    private String src;
//    private String ingredients;


    public FoodItemDTO() {
    }

    public FoodItemDTO(int itemId, String foodName, String s_description, int price) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.price = price;
    }

    public FoodItemDTO(int itemId, String foodName, String s_description, String l_description, int price) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.l_description = l_description;
        this.price = price;
    }


    public FoodItemDTO(int itemId,String foodName ,int price, String src) {
        this.itemId=itemId;
        this.foodName = foodName;
        this.price = price;
        this.src = src;
    }

    public FoodItemDTO(int itemId, String foodName, String s_description, String l_description, int price, String src) {
        this.itemId = itemId;
        this.foodName = foodName;
        this.s_description = s_description;
        this.l_description = l_description;
        this.price = price;
        this.src = src;
//        this.ingredients = ingredients;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }


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
        this.s_description = s_description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "FoodItemDTO{" +
                "itemId='" + itemId + '\'' +
                ", foodName='" + foodName + '\'' +
                ", s_description='" + s_description + '\'' +
                ", l_description='" + l_description + '\'' +
                ", price='" + price + '\'' +
                ", src='" + src + '\'' +
//                ", ingredients='" + ingredients + '\'' +
                '}';
    }
}
