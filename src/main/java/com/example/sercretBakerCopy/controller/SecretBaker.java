package com.example.sercretBakerCopy.controller;



import com.example.sercretBakerCopy.dto.CustomerDTO;
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
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


@Controller
public class SecretBaker {

    @Autowired
    foodItemBO foodItemBO;


    @GetMapping("/home")
    public String home() {
        return "HelloWorld";
    }

    @GetMapping("/shoppingCart")
    public String shoppingCart() {
        return "cart";
    }


    @GetMapping("/shoppingCartNew")
    public String shoppingCartNew(HttpSession session,Model model) {

        int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
        model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        return "cartNew";
    }


    @GetMapping("/foodItem/{id}")
    public String getFoodItem(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("foodItem", foodItemBO.getFoodItemById(id));
        return "onlineOrder";
    }


    @GetMapping("/foodItems")
    public String getAllFoodItem(Model model) {
        model.addAttribute("AllFoodItems", foodItemBO.getAllFoodItems());
        return "SBonlineMenu";
    }

    @GetMapping("/foodItemss")
    public String getAllFoodItems(Model model,HttpSession session) {
        int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
        model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        model.addAttribute("AllFoodItems", foodItemBO.getAllFoodItems());
        return "SBonlineMenus";
    }

    @GetMapping("/foodItemsCakes")
    public String getAllFoodItemCakes(Model model) {
        model.addAttribute("AllFoodItems", foodItemBO.getAllFoodItems());
        return "AllCakes";
    }

    @GetMapping("/foodItemsCupcakes")
    public String getAllFoodItemCupcakes(Model model) {
        model.addAttribute("AllFoodItems", foodItemBO.getAllFoodItems());
        return "Cupcakes";
    }


    @PostMapping("invoice")
    public String loadInvoicePage(@ModelAttribute OrderDTO restaurantCounterOrderDTO, Model model,HttpSession session) {

        try { //
//            restaurantCounterOrderDTO.setCustomerId(SuperController.idNo);
            OrderDTO top = foodItemBO.findTopByOrderByRestIdDesc();//find Highest Id to Save Order
            int x = (top.getOrderId()) + 1;
            restaurantCounterOrderDTO.setOrderId((x));
        } catch (NullPointerException e) {
            restaurantCounterOrderDTO.setOrderId((1));//Set Id as 1 when Initial Round
        }
        try {
                int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
                System.out.print("Cus id:"+onlineCustomerId);
                restaurantCounterOrderDTO.setCustomer(onlineCustomerId);
                foodItemBO.saveRestaurantOrder(restaurantCounterOrderDTO);
                foodItemBO.sendEmail(restaurantCounterOrderDTO);


            java.util.List<OrderDetailDTO> list = new ArrayList<>();
            String arr = restaurantCounterOrderDTO.getDataValue();
            System.out.print("arr" + arr);
            String yo[] = arr.split(" ");
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
            System.out.println("list of itms " + itm);
            for (OrderDetailDTO d : list) {
                FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
                d.setName(f.getFoodName());
            }
//            int r = list.size();
            System.out.println("list of items " + list);
            model.addAttribute("listCounterOrders", restaurantCounterOrderDTO.getOrderId());
            model.addAttribute("listCounterOrderDetails", list);//Load Data to Payment
            model.addAttribute("NoOfItems", list.size());
//            foodItemBO.sendEmailToSB(list);
        } catch (NullPointerException | MessagingException e) {
            e.printStackTrace();
        }

        return "Checkout";
    }


    @GetMapping("/invoice")
    public String restaurant(Model model) {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));
        return "Checkout";
    }

    @GetMapping("/signUp")
    public String signUp(Model model) {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));
        return "SignUp";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute CustomerDTO customerDTO, Model model, HttpServletRequest request){
        try {
            CustomerDTO customerDTO2 = foodItemBO.findHighestCustomerId();
            CustomerDTO customerDTO1 = null;
            try {
                customerDTO1 = foodItemBO.getCustomerById(customerDTO.getOnlineCustomerId());
            }catch (NullPointerException d){
                int maxId = (customerDTO2.getOnlineCustomerId());
                if (customerDTO.getOnlineCustomerId()==(maxId)) {
                    customerDTO.setOnlineCustomerId((maxId));
                } else {
                    maxId++;
                    customerDTO.setOnlineCustomerId((maxId));
                }
            }
        } catch (NullPointerException e){
            customerDTO.setOnlineCustomerId(1);
        }

        foodItemBO.saveCustomer(customerDTO);

        return "redirect:/signUp";
    }

    //customer sign in
    @PostMapping("/onlineSignInn")
    public String onlineTableDetails(@ModelAttribute CustomerDTO onlineCustomer, HttpServletRequest request,Model model) {
        try {
            //Check validations
            CustomerDTO onlineCustomerDTO = foodItemBO.findByEmailAndPassword(onlineCustomer.getEmail(), onlineCustomer.getPassword());
            if (onlineCustomerDTO != null) {
                //Show Logged User Name
                request.getSession().setAttribute("userId", onlineCustomerDTO.getOnlineCustomerId());
                return "redirect:/foodItemss";
            } else {//If User name And Password is not match
                return "redirect:/saveCustomer";

            }
        } catch (NullPointerException e) {
            return "redirect:/saveCustomer";
        }

    }


}