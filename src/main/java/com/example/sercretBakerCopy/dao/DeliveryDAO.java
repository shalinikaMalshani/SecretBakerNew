package com.example.sercretBakerCopy.dao;


import com.example.sercretBakerCopy.entity.Delivery;
import org.springframework.data.repository.CrudRepository;

public interface DeliveryDAO extends CrudRepository<Delivery, Integer> {

    Delivery findTopByOrderByDeliveryIdDesc();

//    Delivery findTopBydeliveryByDeliveryIdDesc();
}
