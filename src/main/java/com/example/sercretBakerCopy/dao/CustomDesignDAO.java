package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.CustomDesign;
import com.example.sercretBakerCopy.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomDesignDAO extends CrudRepository<CustomDesign,Integer> {

    CustomDesign findTopByOrderByCustomDesignIdDesc();
}
