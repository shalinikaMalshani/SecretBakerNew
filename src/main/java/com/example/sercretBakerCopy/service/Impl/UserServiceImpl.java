//package com.example.sercretBakerCopy.service.Impl;
//
//import com.example.sercretBakerCopy.dao.CustomerDAO;
//import com.example.sercretBakerCopy.dto.CustomerDTO;
//import com.example.sercretBakerCopy.entity.Customer;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserServiceImpl implements UserService{
//
//    @Autowired
//    CustomerDAO customerDAO;
//        //save customer
//        @Override
//        public void saveCustomer(CustomerDTO customerDTO) {
//            customerDAO.save(new Customer(customerDTO.getOnlineCustomerId(),
//                    customerDTO.getUserName(),
//                    customerDTO.getEmail(),
//                    customerDTO.getNumber(),
//                    customerDTO.getPassword(),
//                    customerDTO.getAddress_l1(),
//                    customerDTO.getAddress_l2(),
//                    customerDTO.getAddress_l3()));
//        }
//
//
//
//    @Override
//    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
//        Customer customer=
//    }
//}
