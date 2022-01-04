package com.example.sercretBakerCopy.service.Impl;


import com.example.sercretBakerCopy.dao.CustomerDAO;
import com.example.sercretBakerCopy.dao.OrderDAO;
import com.example.sercretBakerCopy.dao.OrderDetailDAO;
import com.example.sercretBakerCopy.dao.foodItemDAO;

import com.example.sercretBakerCopy.dto.CustomerDTO;
import com.example.sercretBakerCopy.dto.FoodItemDTO;
import com.example.sercretBakerCopy.dto.OrderDTO;
import com.example.sercretBakerCopy.dto.OrderDetailDTO;
import com.example.sercretBakerCopy.entity.Customer;
import com.example.sercretBakerCopy.entity.FoodItem;

import com.example.sercretBakerCopy.entity.OrderNew;
import com.example.sercretBakerCopy.entity.OrderDetail;
import com.example.sercretBakerCopy.service.foodItemBO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.awt.*;
import java.util.*;
import java.util.List;

@Service
public class foodItemBOImpl implements foodItemBO {


    @Autowired
    foodItemDAO foodItemDAO;
    @Autowired
    OrderDAO orderDAO;

    @Autowired
    OrderDetailDAO orderDetailDAO;

    @Autowired
    CustomerDAO customerDAO;

    @Autowired
    JavaMailSender javaMailSender;


    //get  food item by id
    @Override
    public FoodItemDTO getFoodItemById(int id) {
        FoodItem foodItem = foodItemDAO.findOne(id);
        FoodItemDTO foodItemDTO = new FoodItemDTO(foodItem.getItemId(),
                foodItem.getFoodName(),
                foodItem.getS_description(),
                foodItem.getL_description(),
                foodItem.getPrice(),
                foodItem.getSrc());

        return foodItemDTO;
    }


    //get all food items
    @Override
    public List<FoodItemDTO> getAllFoodItems() {
        List<FoodItemDTO> foodItemDTOList = new ArrayList<>();
        Iterable<FoodItem> foodItemList = this.foodItemDAO.findAll();
        for (FoodItem food : foodItemList) {
            foodItemDTOList.add(new FoodItemDTO(food.getItemId(),
                    food.getFoodName(),
                    food.getS_description(),
                    food.getL_description(),
                    food.getPrice(),
                    food.getSrc()));

        }
        return foodItemDTOList;
    }


    //find highest order id to save
    @Override
    public OrderDTO findTopByOrderByRestIdDesc() {

        OrderNew orders = null;
        try {
            orders = orderDAO.findTopByOrderByOrderIdDesc();
        } catch (Exception e) {

        }
        return new OrderDTO(
                orders.getOrderId()
        );
    }


    //SAve  Order
    @Transactional
    @Override
    public void saveRestaurantOrder(OrderDTO restaurantCounterOrderDTO) {
        List<OrderDetailDTO> list = new ArrayList<>();
        String arr = restaurantCounterOrderDTO.getDataValue();
//        arr="1 1000 9" ;
        String yo[] = arr.split(" ");
        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {
            if (count == 0) {
                itm = new OrderDetailDTO();
                itm.setFoodItem(Integer.parseInt(str));
                count++;

            } else if (count == 1) {
                itm.setUnitePrice(Integer.parseInt(str));
                count++;

            } else if (count == 2) {
                itm.setQuantity(Integer.parseInt(str));
                list.add(itm);
                //int r=list.size();
                System.out.print(list);
                count = 0;
            }
        }
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 0);
        java.util.Date today = cal.getTime();
        restaurantCounterOrderDTO.setDate(today);
        orderDAO.save(new OrderNew(//Save Data in restaurantCounterOrderDAO table
                restaurantCounterOrderDTO.getOrderId(),
                restaurantCounterOrderDTO.getOrderState(),
                // restaurantCounterOrderDTO.getQuantity(),
                restaurantCounterOrderDTO.getDate(),
                customerDAO.findOne(restaurantCounterOrderDTO.getCustomer())));

        for (OrderDetailDTO orderDetail : list) {//Save Data in restaurantCounterOrderDetail table
            orderDetailDAO.save(new OrderDetail(
                    restaurantCounterOrderDTO.getOrderId(),
                    orderDetail.getFoodItem(),
                    orderDetail.getQuantity(),
                    orderDetail.getUnitePrice(),
                    customerDAO.findOne(restaurantCounterOrderDTO.getCustomer()
                    )));

        }
    }


    @Override
    public FoodItemDTO findFoodItemById(int itemId) {
        FoodItem foodItem = foodItemDAO.findOne(itemId);
        FoodItemDTO menuDTO = new FoodItemDTO(foodItem.getItemId(),
                foodItem.getFoodName(),
                foodItem.getPrice(),
                foodItem.getSrc());
        return menuDTO;
    }

    //save customer
    @Override
    public void saveCustomer(CustomerDTO customerDTO) {
        customerDAO.save(new Customer(customerDTO.getOnlineCustomerId(),
                customerDTO.getUserName(),
                customerDTO.getAddress(),
                customerDTO.getEmail(),
                customerDTO.getNumber(),
                customerDTO.getPassword()));
    }

    //get customer by id
    @Override
    public CustomerDTO getCustomerById(int id) {
        Customer customer = customerDAO.findOne(id);
        CustomerDTO customerDTO = new CustomerDTO(customer.getOnlineCustomerId(),
                customer.getUserName(),
                customer.getAddress(),
                customer.getEmail());
        return customerDTO;
    }

    //find highest id to save
    @Override
    public CustomerDTO findHighestCustomerId() {
        Customer customer = null;
        try {
            customer = customerDAO.findTopByOrderByOnlineCustomerIdDesc();
        } catch (Exception e) {

        }
        return new CustomerDTO(customer.getOnlineCustomerId());
    }

    //send mail to customer
    @Override
    public void sendEmail(OrderDTO orderDTO) throws MessagingException {

        Customer s = customerDAO.findOne(orderDTO.getCustomer());

        java.util.List<OrderDetailDTO> list = new ArrayList<>();
        String arr = orderDTO.getDataValue();

        String yo[] = arr.split(" ");

        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {
            if (count == 0) {
                itm = new OrderDetailDTO();
                itm.setFoodItem(Integer.parseInt(str));
                count++;

            } else if (count == 1) {
                itm.setUnitePrice(Integer.parseInt(str));
                count++;

            } else if (count == 2) {
                itm.setQuantity(Integer.parseInt(str));
                list.add(itm);
                count = 0;
            }
        }
            MimeMessage message = javaMailSender.createMimeMessage();
                MimeMessageHelper helper = new MimeMessageHelper(message, true);

                helper.setTo(s.getEmail());
                helper.setFrom("webspring404@gmail.com");
                helper.setSubject("Your secret baker order has been received!!");
                boolean html = true;


                        String content="<h3>Thank you for your order with Secret Baker</h3>" + "\n";
                content+="<h4>We contact you soon for the further confirmation</h4>"+"\n";
                content+="<p><b>Order SB"+orderDTO.getOrderId()+"</b>\t<b>"+orderDTO.getDate()+"</b></p>";
         content+="<table width='100%' align='center' border='1' style='border-collapse:collapse;'>"
                + "<tr align='center'>"
                + "<td><b>Product Name <b></td>"
                + "<td><b>Qty<b></td>"
                 + "<td><b>Price<b></td>"
                + "</tr>";

         int total=0;
        int sum=0;

        for (OrderDetailDTO d : list) {

            total=d.getQuantity()*d.getUnitePrice();
            sum=sum+total;

            FoodItemDTO f = findFoodItemById(d.getFoodItem());
            d.setName(f.getFoodName());
            content += "<tr align='center'>" + "<td>" + d.getName() + "</td>"
                    + "<td>" + d.getQuantity() + "</td>"
                    + "<td>Rs:" + total + ".00</td>"
                    + "</tr>";
        }
          content+="<tr align='center' style='border-top-color:2px solid grey;padding:6px;font-size:20px;'>" +"<td><b>" + "Subtotal" + "</b></td>"
                  + "<td>" +""+ "</td>"
                    + "<td>Rs:" +sum+ ".00</td>"
                    +"</tr>";

          content+="<tr align='center'>" + "<td><b>" + "Shipping" + "</b></td>"
                    +"<td style='border-left:hidden;'>" +""+ "</td>"
                    + "<td>" + "Free delivery" + "</td>"
                    +"</tr>";

            content+="<tr align='center'>" +"<td><b>" + "Payment Method" + "</b></td>"
                    +"<td>" +""+ "</td>"
                    + "<td>" + "Cash on delivery" + "</td>"
                    +"</tr>";

            content+="<tr align='center'>"+"<td><b>"+ "Total" + "</b></td>"
                    + "<td>" +""+ "</td>"
                    + "<td>Rs:" + sum + ".00</td>"
                    +"</tr>"
          +"</table>";
            content+="<h4>Billing Address</h4>"+"\n"+s.getAddress();



        helper.setText(content, html);


            javaMailSender.send(message);



    }

    //send mail to SB
    @Override
    public void sendEmailToSB(OrderDTO orderDTO) throws MessagingException {

        Customer cus = customerDAO.findOne(orderDTO.getCustomer());

        java.util.List<OrderDetailDTO> list = new ArrayList<>();
        String arr = orderDTO.getDataValue();

        String yo[] = arr.split(" ");

        int count = 0;
        OrderDetailDTO itm = new OrderDetailDTO();
        for (String str : yo) {
            if (count == 0) {
                itm = new OrderDetailDTO();
                itm.setFoodItem(Integer.parseInt(str));
                count++;

            } else if (count == 1) {
                itm.setUnitePrice(Integer.parseInt(str));
                count++;

            } else if (count == 2) {
                itm.setQuantity(Integer.parseInt(str));
                list.add(itm);
                count = 0;
            }
        }
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo("webspring404@gmail.com");
        helper.setFrom("webspring404@gmail.com");
        helper.setSubject("Secret baker todays orders");
        boolean html = true;


        String content="<h3>Order details</h3>" + "\n";
        content+="<p><b>Order SB"+orderDTO.getOrderId()+"</b>\t<b>"+orderDTO.getDate()+"</b></p>";
        content+="<table width='100%' align='center' border='1' style='border-collapse:collapse;'>"
                + "<tr align='center'>"
                + "<td><b>Product Name <b></td>"
                + "<td><b>Qty<b></td>"
                + "<td><b>Price<b></td>"
                + "</tr>";

        int total=0;
        int sum=0;

        for (OrderDetailDTO d : list) {

            total=d.getQuantity()*d.getUnitePrice();
            sum=sum+total;
            FoodItemDTO f = findFoodItemById(d.getFoodItem());
            d.setName(f.getFoodName());
            content += "<tr align='center'>" + "<td>" + d.getName() + "</td>"
                    + "<td>" + d.getQuantity() + "</td>"
                    + "<td>Rs:" + total + ".00</td>"
                    + "</tr>";
        }
        content+="<tr align='center'>" +"<td><b>" + "Subtotal" + "</b></td>"
                + "<td>" +""+ "</td>"
                + "<td >Rs:" +sum+ ".00</td>"
                +"</tr>";

        content+="<tr align='center'>" +"<td><b>" + "Shipping" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td>" + "Free delivery" + "</td>"
                +"</tr>";

        content+="<tr align='center'>" +"<td><b>" + "Payment Method" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td>" + "Cash on delivery" + "</td>"
                +"</tr>";

        content+="<tr align='center'>"+"<td><b>"+ "Total" + "</b></td>"
                + "<td>" +""+ "</td>"
                + "<td>Rs:" + sum + ".00</td>"
                +"</tr>"
                +"</table>";
        content+="<h4>Customer details</h4>"+"\n"
                +"Customer name:"+cus.getUserName() +"\n"
                +"Customer Address:"+cus.getAddress()+"\n"
                +"Customer contact:"+cus.getNumber();



        helper.setText(content, html);


        javaMailSender.send(message);



    }

    //validate given username and pwd
    @Override
    public CustomerDTO findByEmailAndPassword(String email, String password) {
        Customer onlineCustomer =customerDAO.findByEmailAndPassword(email,password);
        return new CustomerDTO (
                onlineCustomer.getOnlineCustomerId(),
                onlineCustomer.getEmail(),
                onlineCustomer.getPassword()
        );

    }
    //get customer
    @Override
    public CustomerDTO findOne(int onlineCustomerId) {
        Customer onlineCustomer = customerDAO.findOne(onlineCustomerId);
        return new CustomerDTO(
                onlineCustomer.getOnlineCustomerId(),
                onlineCustomer.getUserName(),
                onlineCustomer.getAddress(),
                onlineCustomer.getEmail()
        );
    }

    @Override
    public Customer findOneCus(int onlineCustomerId) {
        Customer onlineCustomer = customerDAO.findOne(onlineCustomerId);
        return new Customer(
                onlineCustomer.getOnlineCustomerId(),
                onlineCustomer.getUserName()
        );
    }

    @Override
    public OrderNew findOneOrder(int orderId) {
        OrderNew orderNew = orderDAO.findOne(orderId);
        return new OrderNew(
                orderNew.getOrderId(),
               orderNew.getOrderState(),
                orderNew.getDate(),
                orderNew.getOrderHolder()
        );
    }


    @Override
    public OrderDetailDTO getOrderDetailByCusId(OrderNew orderNew,Customer customer) {
        OrderDetail orderDetail= orderDetailDAO.findByCustomerAndRestaurantCounterOrder(customer,orderNew);
        return  new OrderDetailDTO(orderDetail.getFoodItem().getItemId(),
                orderDetail.getQuantity(),
                orderDetail.getUnitePrice(),
                orderDetail.getFoodItem().getFoodName());
    }


}