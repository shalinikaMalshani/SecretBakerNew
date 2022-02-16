package com.example.sercretBakerCopy.controller.order;

import com.example.sercretBakerCopy.dto.FoodItemDTO;
import com.example.sercretBakerCopy.dto.OrderDTO;
import com.example.sercretBakerCopy.dto.OrderDetailDTO;
import com.example.sercretBakerCopy.service.foodItemBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class OrderController {

    @Autowired
    foodItemBO foodItemBO;

    //load all the online items
    @GetMapping("/shop")
    public String shop(Model model, HttpSession session) {
        model.addAttribute("AllFoodItemss", foodItemBO.getAllFoodItems());
        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        }catch(Exception e){
            return "shop";
        }

        return "shop";
    }

    //load item individually
    @GetMapping("/shop/{id}")
    public String getFoodItem(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("foodItem", foodItemBO.getFoodItemById(id));
        model.addAttribute("AllFoodItemsss", foodItemBO.getAllFoodItems());
        return "shopItemNew";
    }

    //when press chechkout
    @PostMapping("invoice")
    public String loadInvoicePage(@ModelAttribute OrderDTO restaurantCounterOrderDTO,
                                  Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws MessagingException {

        System.out.println("Model orderDto1"+restaurantCounterOrderDTO);

        //check whether the cus is login or not
        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            restaurantCounterOrderDTO.setCustomer(onlineCustomerId);
            System.out.println("customer details" + foodItemBO.findOne(restaurantCounterOrderDTO.getCustomer()));
        }catch(Exception e){
            return "signUpLogin";
        }

        //convert all the dataVales
        List<OrderDetailDTO> list = new ArrayList<>();
        String arr = restaurantCounterOrderDTO.getDataValue();
        System.out.print("arr" + arr);


        String yo[] = arr.split(" ");

        System.out.print("yo" + Arrays.toString(yo));
        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {//Read String and add to list
            if (count == 0) {
                itm = new OrderDetailDTO();
                itm.setFoodItem(Integer.parseInt(str));
                count++;

            } else if (count == 1) {
                itm.setUnitePrice(Integer.parseInt(str));
                count++;

            } else if (count == 2) {
                itm.setQuantity(Integer.parseInt(str));
                list.add(itm);
                count = 0;
            }
        }

        for (OrderDetailDTO d : list) {
            FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
            d.setName(f.getFoodName());

        }
        model.addAttribute("listCounterOrders", restaurantCounterOrderDTO.getOrderId());
        model.addAttribute("NoOfItems", list.size());
        model.addAttribute("listCounterOrderDetailsdel", list);//Load Data to Payment
        return "delivery";
    }

}