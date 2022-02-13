package com.example.sercretBakerCopy.dao;

import com.example.sercretBakerCopy.entity.Cake;
import org.springframework.data.repository.CrudRepository;

public interface CakeDAO extends CrudRepository<Cake, Integer> {
}
