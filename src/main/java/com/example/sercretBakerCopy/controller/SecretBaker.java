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
import java.sql.Array;
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

    @GetMapping("/blog")
    public String blog() {
        return "Blog";
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

    @GetMapping("/shoppingCartNew")
    public String shoppingCartNew() {
        return "cartNew";
    }

    @GetMapping("/signUpLogin")
    public String signUpLogin() {
        return "signUpLogin";
    }




    @GetMapping("/invoice")
    public String restaurant(@ModelAttribute OrderDTO restaurantCounterOrderDTO, Model model, HttpSession session) throws MessagingException {

        return "delivery";
    }

    @GetMapping("/signUpCart")
    public String signUpCart(Model model) {
        return "SignUp";
    }

    @GetMapping("/signUpCusDes")
    public String signUpCusDes(Model model) {
        return "SignUpCusDes";
    }


    @GetMapping("/customDesign")
    public String customDesign(@ModelAttribute CustomDesignDTO customDesignDTO, Model model,HttpSession session) {
        return "CustomDesign";
    }


    @PostMapping("/saveCustomDesign")
    public String saveCustomDesign(@ModelAttribute CustomDesignDTO customDesignDTO,HttpSession session,Model model) {

        System.out.println("custom design after click submit:" + customDesignDTO);

        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            customDesignDTO.setCusDescustomer(onlineCustomerId);
            System.out.println("customer details" + foodItemBO.findOne(customDesignDTO.getCusDescustomer()));

        }catch(Exception e){
            return "signInCusDesign";
        }

        List<CustomDesignDTO> listCus = new ArrayList<>();
        String array = customDesignDTO.getDataValueCustomDes();

        System.out.print("array length is" + array.length());


        String yo[] = array.split(" ");

        System.out.print("yo[] len" + Arrays.toString(yo));
        System.out.print("yo[] len" + Arrays.toString(yo).length());
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
//            } else if (c == 5) {
//                itm.setCusDesimage(str);
//                c++;
            } else if(c==5)  {
                itm.setCusDesdes(str);
                listCus.add(itm);
                c = 0;
            }
        }
        System.out.println("description cus " + itm.getCusDesdes());
        for (CustomDesignDTO cus : listCus) {
//            FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
//            d.setName(f.getFoodName());
            System.out.println("Item type:"+cus.getCusDescakeType());
            System.out.println("Food size"+cus.getCusDescakeSize());
            System.out.println("Food des"+cus.getCusDesdes());
            System.out.println("Food image"+cus.getCusDesimage());
//            System.out.println("description cus " + itm.getCusDesdes());
        }
        System.out.println("list of cus des " + listCus);


//        foodItemBO.saveCustomDesign(customDesignDTO);

        model.addAttribute("customDes",listCus);
        model.addAttribute("cus",foodItemBO.getCustomDesById(customDesignDTO.getCustomDesignId()));

        return "deliveryCusDesign";

    }

    @GetMapping("/about")
    public String about(Model model) {
        return "about";
    }

    @GetMapping("/contact")
    public String contact(Model model) {
        return "contact";
    }

    @GetMapping("/cake")
    public String cake(Model model, HttpSession session) {
        model.addAttribute("AllCakes", foodItemBO.getAllCakes());
        try {
            int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
            model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));
        }catch(Exception e){
            return "cake";
        }

        return "cake";
    }
    //load item individually
    @GetMapping("/cake/{id}")
    public String getFoodItem(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("cake", foodItemBO.getCakeById(id));
        model.addAttribute("cakes", foodItemBO.getAllCakes());
        return "cakeItemNew";
    }

    @GetMapping("/weddingCake")
    public String weddingCake(Model model) {
        return "weddingCake";
    }

    @GetMapping("/BirthdayCake")
    public String BirthdayCake(Model model) {
        return "BirthdayCake";
    }

}