package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.dto.CustomerDTO;
import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.OrderNew;
import com.example.sercretBakerCopy.entity.OrderDetail;
import org.springframework.data.repository.CrudRepository;

public interface OrderDetailDAO extends CrudRepository<OrderDetail,Integer> {


    OrderDetail findByCustomerAndRestaurantCounterOrder(Customer customer, OrderNew restaurantCounterOrder);
}
