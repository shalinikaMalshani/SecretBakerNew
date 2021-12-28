package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.FoodItem;
import org.springframework.data.repository.CrudRepository;

public interface foodItemDAO extends CrudRepository<FoodItem,Integer> {
}
