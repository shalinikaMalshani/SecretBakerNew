package com.example.sercretBakerCopy.service;



import com.example.sercretBakerCopy.dto.CustomerDTO;
import com.example.sercretBakerCopy.dto.FoodItemDTO;
import com.example.sercretBakerCopy.dto.OrderDTO;
import com.example.sercretBakerCopy.dto.OrderDetailDTO;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.mail.MessagingException;
import javax.mail.Session;
import java.util.List;

@Service
public interface foodItemBO {

    FoodItemDTO getFoodItemById(int id);
    List<FoodItemDTO> getAllFoodItems();
    OrderDTO findTopByOrderByRestIdDesc();
    void saveRestaurantOrder(OrderDTO restaurantCounterOrderDTO);
    FoodItemDTO findFoodItemById(int itemId);
    void saveCustomer(CustomerDTO customerDTO);
    CustomerDTO getCustomerById(int id);
    CustomerDTO findHighestCustomerId();

//    OnlineOrderDTO findHighestId();
//    OnlineOrderDTO findOrderById(int id);
    void sendEmail(OrderDTO orderDTO) throws MessagingException;
    void sendEmailToSB(CustomerDTO customerDTO) throws MessagingException;
    CustomerDTO findByEmailAndPassword(String email, String password);
    CustomerDTO findOne(int onlineCustomerId);
    OrderDetailDTO findOneOrder(int orderId);
}
