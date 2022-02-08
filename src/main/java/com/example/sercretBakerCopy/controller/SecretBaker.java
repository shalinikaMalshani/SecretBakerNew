package com.example.sercretBakerCopy.controller;
import com.example.sercretBakerCopy.Exception.CustomerNotFoundException;
import com.example.sercretBakerCopy.dto.*;

import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.service.foodItemBO;
import net.bytebuddy.utility.RandomString;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.repository.query.Param;
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

    @GetMapping("/resetPwd")
    public String resetPwd() {
        return "ResetPwd";
    }

    @GetMapping("/shoppingCart")
    public String shoppingCart() {
        return "cart";
    }

    @GetMapping("/summary")
    public String summary() {
        return "summary";
    }

    @GetMapping("/signIn")
    public String signIn(Model model) {

        return "HomeSignIn";
    }

    @GetMapping("/signUp")
    public String signUp(Model model) {

        return "HomeSignUp";
    }

    @GetMapping("/forgotPwd")
    public String forgotPwdGetEmail() {
        return "ForgotPwd";
    }
    @PostMapping("/sendPwdResetEmail")
    public String sendPwdRestEmail(HttpServletRequest request,Model model) {
        String email=request.getParameter("email");
        String token= RandomString.make(45);

        System.out.println("Email"+email);
        System.out.println("Token"+token);
    try {
    foodItemBO.updateResetPwd(token,email);

    //set reset pwd link
        String resetPwdLink=Utility.getSiteUrl(request)+"/reset_password?token="+token;
        System.out.println("reset pwd link"+resetPwdLink);

        //send email with reset pwd link
        foodItemBO.setResetPwdEmail(email,resetPwdLink);
        model.addAttribute("message","We have send a reset password link to your email.Please check your email.");

    }catch (CustomerNotFoundException ex){
    model.addAttribute("error",ex.getMessage());

    }catch (MessagingException ex){
        model.addAttribute("errorEmail","Error while sending email.");
    }
        return "ForgotPwd";
    }
@GetMapping("/reset_password")
public String showResetPwd(@Param(value="token") String token,Model model) {
    Customer customer = foodItemBO.getToken(token);
    if (customer == null) {

        model.addAttribute("invalidToken", "Invalid Token");
        return "redirect:/reset_password";
    }
    model.addAttribute("token", token);
    return "ResetPwd";
}
    @PostMapping("reset_passwordd")
    public String processResetPwd(HttpServletRequest request,Model model){
String token=request.getParameter("token");
String password=request.getParameter("password");
        Customer customer = foodItemBO.getToken(token);
        if (customer == null) {
            return "redirect:/reset_password";

        }else{
            foodItemBO.updatePwd(customer,password);
            model.addAttribute("success","You have successfully change your password");
            return "HomeSignIn";
        }

    }

    @GetMapping("/shop")
    public String shop(Model model,HttpSession session) {
        model.addAttribute("AllFoodItemss", foodItemBO.getAllFoodItems());
        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        }catch(Exception e){
            return "shop";
        }

        return "shop";
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

//    @GetMapping("/signUpLogin")
//    public String signUpLogin() {
//        return "signUpLogin";
//    }


//    @GetMapping("/shop/{id}")
//    public String getFoodItem(@PathVariable("id") Integer id, Model model) {
//        model.addAttribute("foodItem", foodItemBO.getFoodItemById(id));
//        return "shopItem";
//    }

    @GetMapping("/shop/{id}")
    public String getFoodItem(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("foodItem", foodItemBO.getFoodItemById(id));
        model.addAttribute("AllFoodItemsss", foodItemBO.getAllFoodItems());
        return "shopItemNew";
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
                                  Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws MessagingException {

        System.out.println("Model orderDto1"+restaurantCounterOrderDTO);

        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            restaurantCounterOrderDTO.setCustomer(onlineCustomerId);
            System.out.println("customer details" + foodItemBO.findOne(restaurantCounterOrderDTO.getCustomer()));
        }catch(Exception e){
            return "signUpLogin";
        }


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
    public String restaurant(@ModelAttribute OrderDTO restaurantCounterOrderDTO, Model model, HttpSession session) throws MessagingException {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));



        return "delivery";
    }

    @GetMapping("/signUpCart")
    public String signUpCart(Model model) {
//        model.addAttribute("loggerName", indexLoginBO.getEmployeeByIdNo(SuperController.idNo));
        return "SignUp";
    }

    @PostMapping("/saveCustomerHome")
    public String saveCustomerHome(@ModelAttribute CustomerDTO customerDTO, Model model, HttpServletRequest request){
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

        return "redirect:/signIn";
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

    //customer sign in from home

    @PostMapping("/onlineSignInnHome")
    public String signInHome(@ModelAttribute CustomerDTO onlineCustomer, HttpServletRequest request,Model model) {
        try {
            //Check validations
            CustomerDTO onlineCustomerDTO = foodItemBO.findByEmailAndPassword(onlineCustomer.getEmail(), onlineCustomer.getPassword());
            if (onlineCustomerDTO != null) {
                //Show Logged User Name
                request.getSession().setAttribute("userId", onlineCustomerDTO.getOnlineCustomerId());


            } else {//If User name And Password is not match
               model.addAttribute("invalidd", "Invalid user name or password");
                return "HomeSignIn";

            }
        } catch (NullPointerException e) {
            model.addAttribute("invalidd", "Invalid user name or password");
            return "HomeSignIn";
        }
            return "home";
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
                model.addAttribute("invalidd", "Invalid user name or password");
                return "signUpLogin";

            }
        } catch (NullPointerException e) {
            model.addAttribute("invalidd", "Invalid user name or password");
            return "signUpLogin";
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
            //Date myDate=restaurantCounterOrderDTO.getDate();
            model.addAttribute("orderDate",restaurantCounterOrderDTO.getDate());
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

        foodItemBO.sendEmailToSB(restaurantCounterOrderDTO,deliveryDTO);


         foodItemBO.sendEmail(restaurantCounterOrderDTO,deliveryDTO);

        model.addAttribute("delivery",foodItemBO.getDeliveryById(deliveryDTO.getDeliveryId()));

        session.invalidate();
        return "summary";

    }

}
