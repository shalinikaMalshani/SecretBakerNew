package com.example.sercretBakerCopy.service.Impl;


import com.example.sercretBakerCopy.dao.*;

import com.example.sercretBakerCopy.dto.*;
import com.example.sercretBakerCopy.entity.*;

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
import java.time.LocalDate;
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

    @Autowired
    CustomDesignDAO customDesignDAO;

    @Autowired
    DeliveryDAO deliveryDAO;

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
        System.out.print("this done");
        //Calendar cal = Calendar.getInstance();
        //cal.add(Calendar.DATE, 0);
        //java.util.Date today = cal.getTime();
        LocalDate today=LocalDate.now();
        restaurantCounterOrderDTO.setDate(today);
        System.out.print("Today"+today);
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
                customerDTO.getEmail(),
                customerDTO.getNumber(),
                customerDTO.getPassword(),
                customerDTO.getAddress_l1(),
                customerDTO.getAddress_l2(),
                customerDTO.getAddress_l3()));


    }

    //get customer by id
    @Override
    public CustomerDTO getCustomerById(int id) {
        Customer customer = customerDAO.findOne(id);
        CustomerDTO customerDTO = new CustomerDTO(customer.getOnlineCustomerId(),
                customer.getUserName(),
                customer.getAddress_l1(),
                customer.getAddress_l2(),
                customer.getAddress_l3(),
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
            content+="<h4>Billing Address</h4>"+"\n"+s.getAddress_l1()+"\n";
            content+=s.getAddress_l2()+"\n";
            content+=s.getAddress_l3()+"\n";



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
                +"Customer Address:"+cus.getAddress_l1()+"\n"
                +cus.getAddress_l2()+"\n"
                +cus.getAddress_l3()+"\n"
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
                onlineCustomer.getAddress_l1(),
                onlineCustomer.getAddress_l2(),
                onlineCustomer.getAddress_l3(),
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

    //save custom design to the database
    @Override
    public void saveCustomDesign(CustomDesignDTO customDesignDTO) {
        customDesignDAO.save(new CustomDesign(customDesignDTO.getCustomDesignId(),
                customDesignDTO.getFirstName(),
                customDesignDTO.getLastName(),
                customDesignDTO.getEmail(),
                customDesignDTO.getContact(),
                customDesignDTO.getCakeType(),
                customDesignDTO.getCakeSize(),
                customDesignDTO.getDate(),
                customDesignDTO.getImage(),
                customDesignDTO.getDes()));
    }

    @Override
    public CustomDesignDTO getCustomDesById(int id) {
        CustomDesign customDesign= customDesignDAO.findOne(id);
        CustomDesignDTO customDesignDTO=new CustomDesignDTO(customDesign.getCustomDesignId(),
                customDesign.getFirstName(),
                customDesign.getLastName(),
                customDesign.getEmail(),
                customDesign.getContact(),
                customDesign.getCakeType(),
                customDesign.getCakeSize(),
                customDesign.getDate(),
                customDesign.getImage(),
                customDesign.getDes());
        return  customDesignDTO;
    }

    @Override
    public CustomDesignDTO findHighestCustomDesId() {
        CustomDesign customDesign=null;
        try {
           customDesign=customDesignDAO.findTopByOrderByCustomDesignIdDesc();
        }catch(Exception e){

            }
        return  new CustomDesignDTO(customDesign.getCustomDesignId());
    }

    @Override
    public void userLogout(int id) {
        customerDAO.removeCustomerByOnlineCustomerId(id);
    }

    @Override
    public DeliveryDTO findHighestDeliveryId() {
        Delivery delivery3 = null;
        try {
            delivery3 = deliveryDAO.findTopByOrderByDeliveryIdDesc();
        } catch (Exception e) {

        }
        return new DeliveryDTO(delivery3.getDeliveryId());
    }
    @Override
    public DeliveryDTO getDeliveryById(int deliveryId) {
        Delivery delivery = deliveryDAO.findOne(deliveryId);
        DeliveryDTO deliveryDTO = new DeliveryDTO(delivery.getDeliveryId(),
                delivery.getName(),
                delivery.getLastName(),
                delivery.getContactNo(),
                delivery.getEmail(),
//                delivery.getDate(),
//                delivery.getNic(),
                delivery.getDeliveryArea(),
                delivery.getLocation_l1(),
                delivery.getLocation_l2(),
                delivery.getLocation_l3(),
                delivery.getDeliveryDate(),
                delivery.getDeliveryTime(),
                delivery.getPaymentType());

        return deliveryDTO;
    }

    @Override
    public void saveDelivery(DeliveryDTO deliveryDTO) {

        String status= "Cash on Delivery";
        deliveryDTO.setPaymentType(status);

        deliveryDAO.save(new Delivery(deliveryDTO.getDeliveryId(),
                deliveryDTO.getName(),
                deliveryDTO.getLastName(),

//           deliveryDTO.getDate(),
//                deliveryDTO.getNic(),
                deliveryDTO.getDeliveryArea(),
                deliveryDTO.getLocation_l1(),
                deliveryDTO.getLocation_l2(),
                deliveryDTO.getLocation_l3(),
                deliveryDTO.getContactNo(),
                deliveryDTO.getEmail(),
                deliveryDTO.getDeliveryDate(),
                deliveryDTO.getDeliveryTime(),
                deliveryDTO.getPaymentType()

        ));

    }


}