package com.example.sercretBakerCopy.service;



import com.example.sercretBakerCopy.Exception.CustomerNotFoundException;
import com.example.sercretBakerCopy.dto.*;
import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.OrderNew;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.mail.MessagingException;
import java.util.List;
import java.util.Map;

@Service
public interface foodItemBO {

    FoodItemDTO getFoodItemById(int id);
    List<FoodItemDTO> getAllFoodItems();
    OrderDTO findTopByOrderByRestIdDesc();
    void saveRestaurantOrder(OrderDTO restaurantCounterOrderDTO);
    FoodItemDTO findFoodItemById(int itemId);
    void saveCustomer(CustomerDTO customerDTO);
    CustomerDTO getCustomerById(int id);
    CustomerDTO getCustomerByEmail(String email);
    CustomerDTO findHighestCustomerId();
    Customer getToken(String token);
    void updatePwd(Customer customer,String newPwd);
    void updateResetPwd(String token,String email) throws CustomerNotFoundException;



    void sendEmail(OrderDTO orderDTO,DeliveryDTO deliveryDTO) throws MessagingException;
    void sendEmailToSB(OrderDTO orderDTO,DeliveryDTO deliveryDTO) throws MessagingException;
    CustomerDTO findByEmailAndPassword(String email, String password);
    CustomerDTO findOne(int onlineCustomerId);
    OrderDetailDTO getOrderDetailByCusId(OrderNew orderNew,Customer customer);
    Customer findOneCus(int onlineCustomerId);
    OrderNew findOneOrder(int orderId);

    void saveCustomDesign(CustomDesignDTO customDesignDTO);
    CustomDesignDTO getCustomDesById(int id);
    CustomDesignDTO findHighestCustomDesId();

    void userLogout(int id);

    DeliveryDTO findHighestDeliveryId();

    DeliveryDTO getDeliveryById(int deliveryId);

    void saveDelivery(DeliveryDTO deliveryDTO);


    void setResetPwdEmail(String email, String resetPwdLink) throws MessagingException;
}
