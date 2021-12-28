package com.example.sercretBakerCopy.service.Impl;


import com.example.sercretBakerCopy.dao.CustomerDAO;
import com.example.sercretBakerCopy.dao.OrderDAO;
import com.example.sercretBakerCopy.dao.OrderDetailDAO;
import com.example.sercretBakerCopy.dao.foodItemDAO;

import com.example.sercretBakerCopy.dto.CustomerDTO;
import com.example.sercretBakerCopy.dto.FoodItemDTO;
import com.example.sercretBakerCopy.dto.OrderDTO;
import com.example.sercretBakerCopy.dto.OrderDetailDTO;
import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.FoodItem;

import com.example.sercretBakerCopy.entity.OrderNew;
import com.example.sercretBakerCopy.entity.OrderDetail;
import com.example.sercretBakerCopy.service.foodItemBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import java.util.*;

@Service
public class foodItemBOImpl implements foodItemBO {


    @Autowired
    foodItemDAO foodItemDAO;
    @Autowired
    OrderDAO orderDAO;

    @Autowired
    OrderDetailDAO orderDetailDAO;

    @Autowired
    CustomerDAO customerDAO;

    @Autowired
    JavaMailSender javaMailSender;


    //get  food item by id
    @Override
    public FoodItemDTO getFoodItemById(int id) {
        FoodItem foodItem = foodItemDAO.findOne(id);
        FoodItemDTO foodItemDTO = new FoodItemDTO(foodItem.getItemId(),
                foodItem.getFoodName(),
                foodItem.getS_description(),
                foodItem.getL_description(),
                foodItem.getPrice(),
                foodItem.getSrc());

        return foodItemDTO;
    }


    //get all food items
    @Override
    public List<FoodItemDTO> getAllFoodItems() {
        List<FoodItemDTO> foodItemDTOList = new ArrayList<>();
        Iterable<FoodItem> foodItemList = this.foodItemDAO.findAll();
        for (FoodItem food : foodItemList) {
            foodItemDTOList.add(new FoodItemDTO(food.getItemId(),
                    food.getFoodName(),
                    food.getS_description(),
                    food.getL_description(),
                    food.getPrice(),
                    food.getSrc()));

        }
        return foodItemDTOList;
    }


    //find highest order id to save
    @Override
    public OrderDTO findTopByOrderByRestIdDesc() {

        OrderNew orders = null;
        try {
            orders = orderDAO.findTopByOrderByOrderIdDesc();
        } catch (Exception e) {

        }
        return new OrderDTO(
                orders.getOrderId()
        );
    }


    //SAve  Order
    @Transactional
    @Override
    public void saveRestaurantOrder(OrderDTO restaurantCounterOrderDTO) {
        List<OrderDetailDTO> list = new ArrayList<>();
        String arr = restaurantCounterOrderDTO.getDataValue();
//        arr="1 1000 9" ;
        String yo[] = arr.split(" ");
        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {
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
                //int r=list.size();
                System.out.print(list);
                count = 0;
            }
        }
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 0);
        java.util.Date today = cal.getTime();
        restaurantCounterOrderDTO.setDate(today);
        orderDAO.save(new OrderNew(//Save Data in restaurantCounterOrderDAO table
                restaurantCounterOrderDTO.getOrderId(),
                restaurantCounterOrderDTO.getOrderState(),
                // restaurantCounterOrderDTO.getQuantity(),
                restaurantCounterOrderDTO.getDate(),
                customerDAO.findOne(restaurantCounterOrderDTO.getCustomer())));

        for (OrderDetailDTO orderDetail : list) {//Save Data in restaurantCounterOrderDetail table
            orderDetailDAO.save(new OrderDetail(
                    restaurantCounterOrderDTO.getOrderId(),
                    orderDetail.getFoodItem(),
                    orderDetail.getQuantity(),
                    orderDetail.getUnitePrice()));

        }
    }


    @Override
    public FoodItemDTO findFoodItemById(int itemId) {
        FoodItem foodItem = foodItemDAO.findOne(itemId);
        FoodItemDTO menuDTO = new FoodItemDTO(foodItem.getItemId(),
                foodItem.getFoodName(),
                foodItem.getPrice(),
                foodItem.getSrc());
        return menuDTO;
    }

    //save customer
    @Override
    public void saveCustomer(CustomerDTO customerDTO) {
        customerDAO.save(new Customer(customerDTO.getOnlineCustomerId(),
                customerDTO.getUserName(),
                customerDTO.getAddress(),
                customerDTO.getEmail(),
                customerDTO.getNumber(),
                customerDTO.getPassword()));
    }

    //get customer by id
    @Override
    public CustomerDTO getCustomerById(int id) {
        Customer customer = customerDAO.findOne(id);
        CustomerDTO customerDTO = new CustomerDTO(customer.getOnlineCustomerId(),
                customer.getUserName(),
                customer.getAddress(),
                customer.getEmail());
        return customerDTO;
    }

    //find highest id to save
    @Override
    public CustomerDTO findHighestCustomerId() {
        Customer customer = null;
        try {
            customer = customerDAO.findTopByOrderByOnlineCustomerIdDesc();
        } catch (Exception e) {

        }
        return new CustomerDTO(customer.getOnlineCustomerId());
    }

    //send mail to customer
    @Override
    public void sendEmail(OrderDTO orderDTO) throws MessagingException {

        Customer s = customerDAO.findOne(orderDTO.getCustomer());
        OrderDetail o=orderDetailDAO.findOne(orderDTO.getOrderId());


        java.util.List<OrderDetailDTO> list = new ArrayList<>();
        String arr = orderDTO.getDataValue();

        String yo[] = arr.split(" ");
        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {
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

        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(s.getEmail());
        helper.setFrom("webspring404@gmail.com");
        helper.setSubject("Your secret baker order has been received!!");
        boolean html = true;
        String content = "<h3>Thank you for your order</h3>" + "\n";
        content+="We contact you soon for more details";
        content+="Order price"+o.getUnitePrice();
        content+="Order qty"+o.getQuantity();

        helper.setText(content, html);


        javaMailSender.send(message);



    }

    //send mail to SB
    @Override
    public void sendEmailToSB(CustomerDTO customerDTO) throws MessagingException {


    }

    //validate given username and pwd
    @Override
    public CustomerDTO findByEmailAndPassword(String email, String password) {
        Customer onlineCustomer =customerDAO.findByEmailAndPassword(email,password);
        return new CustomerDTO (
                onlineCustomer.getOnlineCustomerId(),
                onlineCustomer.getEmail(),
                onlineCustomer.getPassword()
        );

    }
    //get customer
    @Override
    public CustomerDTO findOne(int onlineCustomerId) {
        Customer onlineCustomer = customerDAO.findOne(onlineCustomerId);
        return new CustomerDTO(
                onlineCustomer.getOnlineCustomerId(),
                onlineCustomer.getUserName()
        );
    }


}