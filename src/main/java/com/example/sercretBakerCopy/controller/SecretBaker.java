package com.example.sercretBakerCopy.controller;
import com.example.sercretBakerCopy.dto.*;

import com.example.sercretBakerCopy.service.foodItemBO;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Controller
public class SecretBaker {

    @Autowired
    foodItemBO foodItemBO;



    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/confirm")
    public String confirm() {
        return "Confirm";
    }


    @GetMapping("/shoppingCart")
    public String shoppingCart() {
        return "cart";
    }


    @GetMapping("/shoppingCartNew")
    public String shoppingCartNew(HttpSession session,Model model) {
//        try {
//            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
//            model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
//        }catch (NullPointerException e){
//            return "signUpLogin";
//        }
        return "cartNew";
    }

    @GetMapping("/signUpLogin")
    public String signUpLogin() {
        return "signUpLogin";
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

    @GetMapping("/foodItemsss")
    public String displayAllFoodItems(Model model,HttpSession session) {
        model.addAttribute("AllFoodItems", foodItemBO.getAllFoodItems());
        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        }catch(Exception e){
            return "SBonlineMenus";
        }

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
    public String loadInvoicePage(@ModelAttribute OrderDTO restaurantCounterOrderDTO,
                                  Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {

        System.out.println("Model orderDto1"+restaurantCounterOrderDTO);

        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            restaurantCounterOrderDTO.setCustomer(onlineCustomerId);
            System.out.println("customer details" + foodItemBO.findOne(restaurantCounterOrderDTO.getCustomer()));
        }catch(Exception e){
            return "signUpLogin";
            }


        java.util.List<OrderDetailDTO> list = new ArrayList<>();
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
//        System.out.println("list of itms " + itm);
        for (OrderDetailDTO d : list) {
            FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
            d.setName(f.getFoodName());
            System.out.println("Item name:"+d.getName());
            System.out.println("Food qty"+d.getQuantity());
            System.out.println("Food price"+d.getUnitePrice());
        }


        System.out.println("list of items " + list);
        model.addAttribute("listCounterOrders", restaurantCounterOrderDTO.getOrderId());

        //model.addAttribute("NoOfItems", list.size());
        model.addAttribute("listCounterOrderDetailsdel", list);//Load Data to Payment
        return "delivery";
    }


    @GetMapping("/invoice")
    public String restaurant(@ModelAttribute OrderDTO restaurantCounterOrderDTO, Model model, HttpSession session) {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));



        return "delivery";
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

        return "redirect:/signUpLogin";
    }

    //customer sign in
    @PostMapping("/onlineSignInn")
    public String onlineTableDetails(@ModelAttribute OrderDTO restaurantCounterOrderDTO,@ModelAttribute CustomerDTO onlineCustomer, HttpServletRequest request,Model model) {
        try {
            //Check validations
            CustomerDTO onlineCustomerDTO = foodItemBO.findByEmailAndPassword(onlineCustomer.getEmail(), onlineCustomer.getPassword());
            if (onlineCustomerDTO != null) {
                //Show Logged User Name
                request.getSession().setAttribute("userId", onlineCustomerDTO.getOnlineCustomerId());

                System.out.print("model4"+restaurantCounterOrderDTO);
                java.util.List<OrderDetailDTO> list = new ArrayList<>();
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
//        System.out.println("list of itms " + itm);
                for (OrderDetailDTO d : list) {
                    FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
                    d.setName(f.getFoodName());
                    System.out.println("Item name:"+d.getName());
                    System.out.println("Food qty"+d.getQuantity());
                    System.out.println("Food price"+d.getUnitePrice());
                }


                System.out.println("list of items " + list);
                model.addAttribute("listCounterOrders", restaurantCounterOrderDTO.getOrderId());

                //model.addAttribute("NoOfItems", list.size());
                model.addAttribute("listCounterOrderDetailsdel", list);//Load Data to Payment
                return  "delivery";
            } else {//If User name And Password is not match
                return "redirect:/saveCustomer";

            }
        } catch (NullPointerException e) {
            return "redirect:/saveCustomer";
        }

    }

    @GetMapping("/customDesign")
    public String customDesign() {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));
        return "CustomDesign";
    }


    @PostMapping("/saveCustomDesign")
    public String saveCustomDesign(@ModelAttribute CustomDesignDTO customDesignDTO){
        try {
            CustomDesignDTO customDesignDTO2= foodItemBO.findHighestCustomDesId();
            CustomDesignDTO customDesignDTO1=null;
            try {
                customDesignDTO1 = foodItemBO.getCustomDesById(customDesignDTO.getCustomDesignId());
            }catch (NullPointerException d){
                int maxId = (customDesignDTO2.getCustomDesignId());
                if (customDesignDTO.getCustomDesignId()==(maxId)) {
                    customDesignDTO.setCustomDesignId((maxId));
                } else {
                    maxId++;
                    customDesignDTO.setCustomDesignId((maxId));
                }
            }
        } catch (NullPointerException e){
            customDesignDTO.setCustomDesignId(1);
        }

        foodItemBO.saveCustomDesign(customDesignDTO);

        return "redirect:/home";
    }


    @PostMapping("delivery")
    public String deliveryDetail(@ModelAttribute OrderDTO restaurantCounterOrderDTO,@ModelAttribute DeliveryDTO deliveryDTO, @ModelAttribute OrderDetailDTO orderDetailDTO, HttpServletRequest request,Model model,HttpSession session) throws MessagingException {
        System.out.println("Model orderDto2"+restaurantCounterOrderDTO);

        System.out.print("Order"+restaurantCounterOrderDTO);

        //get already login customer
         int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
         restaurantCounterOrderDTO.setCustomer(onlineCustomerId);
         model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));


         //asign order id
        try { //
//            restaurantCounterOrderDTO.setCustomerId(SuperController.idNo);
            OrderDTO top = foodItemBO.findTopByOrderByRestIdDesc();//find Highest Id to Save Order
            int x = (top.getOrderId()) + 1;
            restaurantCounterOrderDTO.setOrderId((x));
        } catch (NullPointerException e) {
            restaurantCounterOrderDTO.setOrderId((1));//Set Id as 1 when Initial Round
        }

       // System.out.println("Model orderDto1"+restaurantCounterOrderDTO.getOrderId()+restaurantCounterOrderDTO.getDate());

        //save order
        try {
            foodItemBO.saveRestaurantOrder(restaurantCounterOrderDTO);


            java.util.List<OrderDetailDTO> list = new ArrayList<>();
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
            System.out.println("list of itms " + itm);
            for (OrderDetailDTO d : list) {
                FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
                d.setName(f.getFoodName());
                System.out.println("Item name:"+d.getName());
                System.out.println("Food qty"+d.getQuantity());
                System.out.println("Food price"+d.getUnitePrice());
            }


            System.out.println("list of items " + list);
            model.addAttribute("listCounterOrders", restaurantCounterOrderDTO.getOrderId());

            model.addAttribute("NoOfItems", list.size());
            model.addAttribute("listCounterOrderDetails", list);//Load Data to Payment
            model.addAttribute("customer", foodItemBO.findOne(restaurantCounterOrderDTO.getCustomer()));


            System.out.println("Model orderDto date"+restaurantCounterOrderDTO.getDate());



        } catch (NullPointerException e) {
            e.printStackTrace();
        }




       // int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());

        model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));




//save delivery details

        try {
            DeliveryDTO deliveryDTO1 = foodItemBO.findHighestDeliveryId();
            DeliveryDTO deliveryDTO2 = null;
            try {
                deliveryDTO = foodItemBO.getDeliveryById(deliveryDTO.getDeliveryId());
            }catch (NullPointerException d){
                int maxId = (deliveryDTO1.getDeliveryId());
                if (deliveryDTO.getDeliveryId()==(maxId)) {
                    deliveryDTO.setDeliveryId((maxId));
                } else {
                    maxId++;
                    deliveryDTO.setDeliveryId((maxId));
                }
            }



        } catch (NullPointerException e){
            deliveryDTO.setDeliveryId(1);
        }
        foodItemBO.saveDelivery(deliveryDTO);

        //foodItemBO.sendEmailToSB(restaurantCounterOrderDTO);
        //foodItemBO.sendEmail(restaurantCounterOrderDTO);
        model.addAttribute("delivery",foodItemBO.getDeliveryById(deliveryDTO.getDeliveryId()));

        session.invalidate();
        return "Checkout";

    }

}
