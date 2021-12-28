package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.OrderNew;
import com.example.sercretBakerCopy.entity.OrderDetail;
import org.springframework.data.repository.CrudRepository;

public interface OrderDetailDAO extends CrudRepository<OrderDetail,Integer> {

    Iterable<OrderDetail> findAllByRestaurantCounterOrderEquals(OrderNew item);
}
