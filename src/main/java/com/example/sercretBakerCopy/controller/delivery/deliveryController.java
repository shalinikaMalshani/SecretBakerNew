package com.example.sercretBakerCopy.controller.delivery;

import com.example.sercretBakerCopy.dto.*;
import com.example.sercretBakerCopy.service.foodItemBO;
import freemarker.template.utility.StringUtil;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.persistence.Convert;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.List;

@Controller
public class deliveryController {
    @Autowired
    foodItemBO foodItemBO;


    //save delivery details from cus des req
    @PostMapping("deliveryCus")
    public String deliveryDetailCusDes(@ModelAttribute CustomDesignDTO customDesignDTO, @ModelAttribute OrderDTO restaurantCounterOrderDTO, @ModelAttribute DeliveryDTO deliveryDTO, @ModelAttribute OrderDetailDTO orderDetailDTO, HttpServletRequest request, Model model, HttpSession session) throws MessagingException, IOException {

        //get already login customer
        int onlineCustomerId = Integer.parseInt(session.getAttribute("userId").toString());
        System.out.println("id"+onlineCustomerId);
        customDesignDTO.setCusDescustomer(onlineCustomerId);
        model.addAttribute("loggerId", foodItemBO.findOne(onlineCustomerId));

        //save custom design
        try{
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
                } else if (c == 5) {
                  //String base64Image = str.replaceAll(" ", "+");
                  //  new Base64.encoder(FileUtils.readFileToByteArray(customDesignDTO.getCusDesimage()));
                    itm.setCusDesimage(str);
                     c++;
                } else if (c == 6) {
                    itm.setCusDesdes(str);
                    listCus.add(itm);
                    c = 0;
                }
            }
            System.out.println("description not replace " + itm.getCusDesdes());
            for (CustomDesignDTO cus : listCus) {
//            FoodItemDTO f = foodItemBO.findFoodItemById(d.getFoodItem());
//            d.setName(f.getFoodName());
                System.out.println("Item type:"+cus.getCusDescakeType());
                System.out.println("Food size"+cus.getCusDescakeSize());
                System.out.println("Food des"+cus.getCusDesdes());
                System.out.println("Food image"+cus.getCusDesimage());

            }


            System.out.println("list of cus des " + listCus);
            model.addAttribute("customDes",listCus);
            model.addAttribute("cus",foodItemBO.getCustomDesById(customDesignDTO.getCustomDesignId()));

     //       String encoded = Base64Utils.encodeToString(foodItemBO.getCustomDesById(customDesignDTO.getCustomDesignId()).getCusDesimage());

//            String encoded=Base64.getEncoder().encodeToString(foodItemBO.getCustomDesById(customDesignDTO.getCustomDesignId()).getCusDesimage());
       //     String s="data:image"+"jpeg/"+";base64, ";



        } catch (NullPointerException  e) {
            e.printStackTrace();
        }





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

        foodItemBO.sendEmailToSBCD(customDesignDTO,deliveryDTO);


        // foodItemBO.sendEmailCD(customDesignDTO,deliveryDTO);

        model.addAttribute("deliveryCusDes",foodItemBO.getDeliveryById(deliveryDTO.getDeliveryId()));

        session.invalidate();
        return "summaryCusDes";

    }

    //save del from cart
    @PostMapping("delivery")
    public String deliveryDetail(@ModelAttribute CustomDesignDTO customDesignDTO,@ModelAttribute OrderDTO restaurantCounterOrderDTO,@ModelAttribute DeliveryDTO deliveryDTO, @ModelAttribute OrderDetailDTO orderDetailDTO, HttpServletRequest request,Model model,HttpSession session) throws MessagingException {
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

//        foodItemBO.sendEmailToSB(restaurantCounterOrderDTO,deliveryDTO);


//         foodItemBO.sendEmail(restaurantCounterOrderDTO,deliveryDTO);

        model.addAttribute("delivery",foodItemBO.getDeliveryById(deliveryDTO.getDeliveryId()));

        session.invalidate();
        return "summary";

    }


}