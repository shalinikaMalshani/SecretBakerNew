package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.OrderNew;

import org.springframework.data.repository.CrudRepository;

import java.sql.Date;

public interface OrderDAO extends CrudRepository<OrderNew,Integer> {


    OrderNew findTopByOrderByOrderIdDesc();

    Iterable<OrderNew> findAllByOrderIdEquals(int orderId);

    Iterable<OrderNew> findAllByDateEquals(Date date);

    Iterable<OrderNew> findAllByOrderStateEquals(String state);

}
