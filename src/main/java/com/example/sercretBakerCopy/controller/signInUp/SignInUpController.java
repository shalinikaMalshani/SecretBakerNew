package com.example.sercretBakerCopy.controller.signInUp;

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
import org.springframework.web.bind.annotation.PostMapping;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class SignInUpController {

    @Autowired
    foodItemBO foodItemBO;

//   password reset process

    @PostMapping("/sendPwdResetEmail")
    public String sendPwdRestEmail(HttpServletRequest request, Model model) {
        String email=request.getParameter("email");
        String token= RandomString.make(45);

        System.out.println("Email"+email);
        System.out.println("Token"+token);
        try {
            foodItemBO.updateResetPwd(token,email);

            //set reset pwd link
            String resetPwdLink= Utility.getSiteUrl(request)+"/reset_password?token="+token;
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
    public String showResetPwd(@Param(value="token") String token, Model model) {
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


    //save customer when home signup
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

    //save customer when sign In or up after request a custom design
    @PostMapping("/saveCustomerCusDes")
    public String saveCustomerCusDes(@ModelAttribute CustomerDTO customerDTO, Model model, HttpServletRequest request){
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

        return "signInCusDesign";
    }


    //save customer when sign up afetr checkout
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


    //customer sign in from cart
    @PostMapping("/onlineSignInn")
    public String onlineTableDetails(@ModelAttribute OrderDTO restaurantCounterOrderDTO, @ModelAttribute CustomerDTO onlineCustomer, HttpServletRequest request, Model model) {
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

    //customer sign in from custom design
    @PostMapping("/onlineSignInCusDes")
    public String onlineSignInCusDes(@ModelAttribute CustomDesignDTO customDesignDTO, @ModelAttribute CustomerDTO onlineCustomer, HttpServletRequest request, Model model) {

        try {
            //Check validations
            CustomerDTO onlineCustomerDTO = foodItemBO.findByEmailAndPassword(onlineCustomer.getEmail(), onlineCustomer.getPassword());
            if (onlineCustomerDTO != null) {
                //Show Logged User Name
                request.getSession().setAttribute("userId", onlineCustomerDTO.getOnlineCustomerId());

                System.out.print("custom design"+customDesignDTO);

                List<CustomDesignDTO> listCus = new ArrayList<>();
                String array = customDesignDTO.getDataValueCustomDes();
                System.out.print("arr" + array);


                String yo[] = array.split(" ");

                System.out.print("yo[]" + Arrays.toString(yo));
                int c = 0;
                CustomDesignDTO itm = new CustomDesignDTO();
                for (String str : yo) {//Read String and add to list
                    if (c == 0) {
                        itm = new CustomDesignDTO();
                        itm.setCusDesName(str);
                        c++;
                    } else if (c == 1) {
                        itm.setCusDescontact(str);
                        c++;
                    } else if (c == 2) {
                        itm.setCusDesemail(str);
                        c++;
                    } else if (c == 3) {
                        itm.setCusDescakeType(str);
                        c++;
                    } else if (c == 4) {
                        itm.setCusDescakeSize(str);
                        c++;
//                    } else if (c == 5) {
//                        itm.setCusDesimage(str);
//                        c++;
                    } else if (c == 5) {

                        itm.setCusDesdes(str);

                        listCus.add(itm);
                        c = 0;
                    }
                }
//        System.out.println("list of itms " + itm);
                for (CustomDesignDTO cus : listCus) {
//            FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
//            d.setName(f.getFoodName());
                    System.out.println("Item type:"+cus.getCusDescakeType());
                    System.out.println("Food size"+cus.getCusDescakeSize());
                    System.out.println("Food des"+cus.getCusDesdes());
                    System.out.println("Food image"+cus.getCusDesimage());
                }


                System.out.println("list of cus des " + listCus);
                model.addAttribute("customDees",listCus);
                return  "deliveryCusDesign";

            } else {//If User name And Password is not match
                model.addAttribute("invalidd", "Invalid user name or password");
                return "signInCusDesign";

            }
        } catch (NullPointerException e) {
            model.addAttribute("invalidd", "Invalid user name or password");
            return "signInCusDesign";
        }

    }




}
