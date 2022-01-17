package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.OrderNew;
import org.springframework.data.repository.CrudRepository;

public interface CustomerDAO extends CrudRepository<Customer,Integer> {
    Customer findTopByOrderByOnlineCustomerIdDesc();
    Customer findByEmailAndPassword(String email, String password);
    void removeCustomerByOnlineCustomerId(int onlineCustomerId);
}
