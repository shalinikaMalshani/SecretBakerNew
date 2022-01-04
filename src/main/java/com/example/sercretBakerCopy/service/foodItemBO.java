package com.example.sercretBakerCopy.service;



import com.example.sercretBakerCopy.dto.CustomerDTO;
import com.example.sercretBakerCopy.dto.FoodItemDTO;
import com.example.sercretBakerCopy.dto.OrderDTO;
import com.example.sercretBakerCopy.dto.OrderDetailDTO;
import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.OrderNew;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
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
    void sendEmailToSB(OrderDTO orderDTO) throws MessagingException;
    CustomerDTO findByEmailAndPassword(String email, String password);
    CustomerDTO findOne(int onlineCustomerId);
OrderDetailDTO getOrderDetailByCusId(OrderNew orderNew,Customer customer);
    Customer findOneCus(int onlineCustomerId);
    OrderNew findOneOrder(int orderId);

}
