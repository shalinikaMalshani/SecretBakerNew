package com.example.sercretBakerCopy.service.Impl;


import com.example.sercretBakerCopy.Exception.CustomerNotFoundException;
import com.example.sercretBakerCopy.Exception.EmailExist;
import com.example.sercretBakerCopy.dao.*;

import com.example.sercretBakerCopy.dto.*;
import com.example.sercretBakerCopy.entity.*;

import com.example.sercretBakerCopy.service.foodItemBO;
import freemarker.template.*;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.imageio.ImageIO;
import javax.mail.*;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
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

    @Autowired
    private Configuration config;

    @Autowired
    CakeDAO cakeDAO;

    //get  food item by id
    @Override
    public FoodItemDTO getFoodItemById(int id) {
        FoodItem foodItem = foodItemDAO.findOne(id);
        FoodItemDTO foodItemDTO = new FoodItemDTO(foodItem.getItemId(),
                foodItem.getFoodName(),
                foodItem.getS_description(),
                foodItem.getL_description(),
                foodItem.getPrice(),
                foodItem.getSrc(),
                foodItem.getCategory());

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
                    food.getSrc(),
                    food.getCategory()));

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

    @Override
    public CustomerDTO getCustomerByEmail(String email) {
        Customer customer = customerDAO.findByEmail(email);
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

    @Override
    public Customer getToken(String token) {
        return customerDAO.findByToken(token);
    }

    @Override
    public void updatePwd(Customer customer, String newPwd) {
        customer.setPassword(newPwd);
        customerDAO.save(customer);
    }

    //update forgot pwd
    @Override
    public void updateResetPwd(String token, String email) throws CustomerNotFoundException {
        Customer customer=customerDAO.findByEmail(email);

        if(customer!=null){
            customer.setToken(token);
            customerDAO.save(customer);
        }else{
            throw  new CustomerNotFoundException("Could not find any customer with email "+email);
        }

    }

    //send mail to customer
    @Override
    public void sendEmail(OrderDTO orderDTO,DeliveryDTO deliveryDTO) throws MessagingException {

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
        helper.setFrom("webspring404@gmail.com");//mail
        helper.setSubject("Your secret baker order has been received!!");
        boolean html = true;

        String content = "<center><img src='cid:logoSB'/></center>";
        content += "<h1>Thank you for your order with Secret Baker</h1>" + "\n";
        content += "<h4>We contact you soon for the further confirmation</h4>" + "\n";
        content += "<p><b>Order SB" + orderDTO.getOrderId() + "</b>\t<b>[" + orderDTO.getDate() + "]</b></p>";
        content += "<table width='100%' align='center' border='1' style='border-collapse:collapse;'>"
                + "<tr align='center'>"
                + "<td><b>Product Name <b></td>"
                + "<td><b>Qty<b></td>"
                + "<td><b>Price<b></td>"
                + "</tr>";

        int total = 0;
        int sum = 0;

        for (OrderDetailDTO d : list) {

            total = d.getQuantity() * d.getUnitePrice();
            sum = sum + total;

            FoodItemDTO f = findFoodItemById(d.getFoodItem());
            d.setName(f.getFoodName());
            content += "<tr align='center'>" + "<td>" + d.getName() + "</td>"
                    + "<td>" + d.getQuantity() + "</td>"
                    + "<td>Rs:" + total + ".00</td>"
                    + "</tr>";
        }
        content += "<tr align='center'>" + "<td><b>" + "Subtotal" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>Rs:" + sum + ".00</b></td>"
                + "</tr>";

        content += "<tr align='center'>" + "<td><b>" + "Shipping" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Free delivery" + "</b></td>"
                + "</tr>";

        content += "<tr align='center'>" + "<td><b>" + "Payment Method" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Cash on delivery" + "</b></td>"
                + "</tr>";

        content += "<tr align='center'>" + "<td><b>" + "Total" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>Rs:" + sum + ".00</b></td>"
                + "</tr>"
                + "</table>";
        content+="<h4 style='text-decoration: underline;'>Customer</h4>"
                +"<p><i>"+"<b>Name:</b>"+s.getUserName()+"</i></p>"
                +"<p><i>"+"<b>Address:</b>"+s.getAddress_l1()+"</i></p>"
                + "<p><i>"+s.getAddress_l2()+"</i></p>"
                + "<p><i>"+s.getAddress_l3()+"</i></p>";
        content+="<h4 style='text-decoration: underline;'>Delivery</h4>"
                +"<p><i>"+"<b>Address:</b>"+deliveryDTO.getLocation_l1()+"</i></p>"
                +"<p><i>"+deliveryDTO.getLocation_l2()+"</i></p>"
                + "<p><i>"+deliveryDTO.getLocation_l3()+"</i></p>"
                + "<p><i>"+"<b>Date:</b>"+deliveryDTO.getDeliveryDate()+"</i></p>"
                + "<p><i>"+"<b>Time:</b>"+deliveryDTO.getDeliveryTime()+"</i></p>";


        helper.setText(content, html);
        //img set
        ClassPathResource resource = new ClassPathResource("../../cake-main/img/logonw2.png");
        helper.addInline("logoSB", resource);
        javaMailSender.send(message);
    }

    //send mail to SB
    @Override
    public void sendEmailToSB(OrderDTO orderDTO,DeliveryDTO deliveryDTO) throws MessagingException {

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
        helper.setSubject("Secret baker today's orders");
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
                + "<td ><b>Rs:" +sum+ ".00</b></td>"
                +"</tr>";

        content+="<tr align='center'>" +"<td><b>" + "Shipping" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td><b>" + "Free delivery" + "</b></td>"
                +"</tr>";

        content+="<tr align='center'>" +"<td><b>" + "Payment Method" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td><b>" + "Cash on delivery" + "</b></td>"
                +"</tr>";

        content+="<tr align='center'>"+"<td><b>"+ "Total" + "</b></td>"
                + "<td>" +""+ "</td>"
                + "<td><b>Rs:" + sum + ".00<b></td>"
                +"</tr>"
                +"</table>";
        content+="<h4 style='text-decoration: underline;'>Customer</h4>"
                +"<p><i>"+"<b>Name:</b>"+cus.getUserName()+"</i></p>"
                +"<p><i>"+"<b>Address:</b>"+cus.getAddress_l1()+"</i></p>"
                + "<p><i>"+cus.getAddress_l2()+"</i></p>"
                + "<p><i>"+cus.getAddress_l3()+"</i></p>"
                + "<p><i>"+"<b>Contact:</b>"+deliveryDTO.getContactNo()+"</i></p>";

        content+="<h4 style='text-decoration: underline;'>Delivery</h4>"
                +"<p><i>"+"<b>Address:</b>"+deliveryDTO.getLocation_l1()+"</i></p>"
                +"<p><i>"+deliveryDTO.getLocation_l2()+"</i></p>"
                + "<p><i>"+deliveryDTO.getLocation_l3()+"</i></p>"
                + "<p><i>"+"<b>Date:</b>"+deliveryDTO.getDeliveryDate()+"</i></p>"
                + "<p><i>"+"<b>Time:</b>"+deliveryDTO.getDeliveryTime()+"</i></p>";




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

        List<CustomDesignDTO> listCus = new ArrayList<>();
        String array = customDesignDTO.getDataValueCustomDes();


        String yo[] = array.split(" ");

        int c = 0;
        CustomDesignDTO itm = new CustomDesignDTO();
        for (String str : yo) {//Read String and add to list
            if (c == 0) {
                itm = new CustomDesignDTO();
                itm.setCusDesName(str);
                c++;
            } else if (c == 1) {
                itm.setCusDescontact(str);
                c++;
            } else if (c == 2) {
                itm.setCusDesemail(str);
                c++;
            } else if (c == 3) {
                itm.setCusDescakeType(str);
                c++;
            } else if (c == 4) {
                itm.setCusDescakeSize(str);
                c++;
            } else if (c == 5) {
                itm.setCusDesimage(str);
                c++;
            } else if (c == 6) {
                itm.setCusDesdes(str);
                listCus.add(itm);
                c = 0;
            }
        }
        LocalDate todayy=LocalDate.now();
        customDesignDTO.setCusDesdate(todayy);

        for (CustomDesignDTO cusDes : listCus) {//Save Data in restaurantCounterOrderDetail table
            customDesignDAO.save(new CustomDesign(customDesignDTO.getCustomDesignId(),
                    cusDes.getCusDesName(),
                    cusDes.getCusDesemail(),
                    cusDes.getCusDescontact(),
                    cusDes.getCusDescakeType(),
                    cusDes.getCusDescakeSize(),
                    customDesignDTO.getCusDesdate(),
                    cusDes.getCusDesdes().replace("+"," "),
                    customerDAO.findOne(customDesignDTO.getCusDescustomer())));
        }

    }

    @Override
    public CustomDesignDTO getCustomDesById(int id) {

        CustomDesign customDesign= customDesignDAO.findOne(id);
        CustomDesignDTO customDesignDTO=new CustomDesignDTO(customDesign.getCustomDesignId(),
                customDesign.getCusDesName(),
                customDesign.getCusDesemail(),
                customDesign.getCusDescontact(),
                customDesign.getCusDescakeType(),
                customDesign.getCusDescakeSize(),
                customDesign.getCusDesdate(),
                customDesign.getCusDesimage(),
                customDesign.getCusDesdes());
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

    //send reset pwd with email
    @Override
    public void setResetPwdEmail(String email, String resetPwdLink) throws MessagingException {
        MimeMessage message=javaMailSender.createMimeMessage();
        MimeMessageHelper helper=new MimeMessageHelper(message);

        helper.setFrom("jananimadushika13@gmail.com");
        helper.setTo(email);
        helper.setSubject("Here's the link with reset your password");

        String content="<p>Hello,</p>"
                +"<p>You have request to reset your password.</p>"
                +"<p>Click the link below to reset your password:</p>"
                +"<p><b><a href=\""+resetPwdLink+"\">Change my password</a></b></p>";

        helper.setText(content,true);
        javaMailSender.send(message);
    }

    @Override
    public List<CakeDTO> getAllCakes() {
        List<CakeDTO> cakeDTOList = new ArrayList<>();
        Iterable<Cake> cakeList = this.cakeDAO.findAll();
        for (Cake cake : cakeList) {
            cakeDTOList.add(new CakeDTO(cake.getItemId(),
                    cake.getFoodName(),
                    cake.getS_description(),
                    cake.getL_description(),
                    cake.getPrice(),
                    cake.getSrc(),
                    cake.getCategory()));

        }
        return cakeDTOList;
    }

    public void sendEmailToSBCD(CustomDesignDTO customDesignDTO, DeliveryDTO deliveryDTO) throws MessagingException, IOException {
        Customer cus = customerDAO.findOne(customDesignDTO.getCusDescustomer());

        List<CustomDesignDTO> listCus = new ArrayList<>();
        String array = customDesignDTO.getDataValueCustomDes();
        System.out.print("arr" + array);


        String yo[] = array.split(" ");

        System.out.print("yo[]" + Arrays.toString(yo));
        int c = 0;
        CustomDesignDTO itm = new CustomDesignDTO();
        for (String str : yo) {//Read String and add to list
            if (c == 0) {
                itm = new CustomDesignDTO();
                itm.setCusDesName(str);
                c++;
            } else if (c == 1) {
                itm.setCusDescontact(str);
                c++;
            } else if (c == 2) {
                itm.setCusDesemail(str);
                c++;
            } else if (c == 3) {
                itm.setCusDescakeType(str);
                c++;
            } else if (c == 4) {
                itm.setCusDescakeSize(str);
                c++;
            } else if (c == 5) {
                itm.setCusDesimage(str);
                c++;
            } else if (c == 6) {
                itm.setCusDesdes(str);
                listCus.add(itm);
                c = 0;
            }
        }
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);


        helper.setTo("webspring404@gmail.com");
        helper.setFrom("webspring404@gmail.com");
        helper.setSubject("Secret baker today's custom design request");
        boolean html = true;

        MimeMultipart multipart = new MimeMultipart("related");

        // first part  (the html)
        BodyPart messageBodyPart = new MimeBodyPart();
        String htmlText="<h3>Custom Design Request</h3>" + "\n";
        htmlText+="<p><b>Custom Design SB"+customDesignDTO.getCustomDesignId()+"</b>\t<b>["+customDesignDTO.getCusDesdate()+"]</b></p>";
        htmlText+="<table width='100%' align='center' border='1' style='border-collapse:collapse;'>"
                + "<tr align='center'>"
                + "<td><b>Cake Type <b></td>"
                + "<td><b>Cake size<b></td>"
                + "<td><b>Description<b></td>"
                + "<td><b>Image<b></td>"
                + "</tr>";

        String data=null;
        for (CustomDesignDTO d : listCus) {
            data=d.getCusDesimage();

            htmlText += "<tr align='center'>" + "<td>" + d.getCusDescakeType() + "</td>"
                    + "<td>" + d.getCusDescakeSize() + "</td>"
                    + "<td>"+d.getCusDesdes().replace("+"," ")+"</td>"
                    + "<td><img  height='80' width='80' src=\"cid:image\"></td>"
                    + "</tr>";
        }

        htmlText+="<tr align='center'>" +"<td><b>" + "Shipping" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Free delivery" + "</b></td>"
                +"</tr>";

        htmlText+="<tr align='center'>" +"<td><b>" + "Payment Method" + "</b></td>"
                +"<td>" +""+ "</td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Cash on delivery" + "</b></td>"
                +"</tr>"
                +"</table>";
        htmlText+="<h4 style='text-decoration: underline;'>Customer</h4>"
                +"<p><i>"+"<b>Name:</b>"+cus.getUserName()+"</i></p>"
                +"<p><i>"+"<b>Address:</b>"+cus.getAddress_l1()+"</i></p>"
                + "<p><i>"+cus.getAddress_l2()+"</i></p>"
                + "<p><i>"+cus.getAddress_l3()+"</i></p>"
                + "<p><i>"+"<b>Contact:</b>"+deliveryDTO.getContactNo()+"</i></p>";

        htmlText+="<h4 style='text-decoration: underline;'>Delivery</h4>"
                +"<p><i>"+"<b>Address:</b>"+deliveryDTO.getLocation_l1()+"</i></p>"
                +"<p><i>"+deliveryDTO.getLocation_l2()+"</i></p>"
                + "<p><i>"+deliveryDTO.getLocation_l3()+"</i></p>"
                + "<p><i>"+"<b>Date:</b>"+deliveryDTO.getDeliveryDate()+"</i></p>"
                + "<p><i>"+"<b>Time:</b>"+deliveryDTO.getDeliveryTime()+"</i></p>";

        assert data != null;
        String base64Image = data.split(",")[1];
        byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
        BufferedImage img = ImageIO.read(new ByteArrayInputStream(imageBytes));
        File outputfile = new File("image.jpg");
        ImageIO.write(img, "jpg", outputfile);

        messageBodyPart.setContent(htmlText, "text/html");

        // add it
        multipart.addBodyPart(messageBodyPart);

        // second part (the image)
        messageBodyPart = new MimeBodyPart();
        DataSource fds = new FileDataSource
                (outputfile.getPath());
        System.out.print("datasource"+fds);
        messageBodyPart.setDataHandler(new DataHandler(fds));
        messageBodyPart.setHeader("Content-ID","<image>");

        // add it
        multipart.addBodyPart(messageBodyPart);

        // put everything together
        message.setContent(multipart);

        javaMailSender.send(message);


    }

    @Override
    public CakeDTO getCakeById(Integer id) {
        Cake cake = cakeDAO.findOne(id);
        CakeDTO cakeDTO = new CakeDTO(cake.getItemId(),
                cake.getFoodName(),
                cake.getS_description(),
                cake.getL_description(),
                cake.getPrice(),
                cake.getSrc(),
                cake.getCategory());

        return cakeDTO;
    }

    @Override
    public void sendEmailCD(CustomDesignDTO customDesignDTO, DeliveryDTO deliveryDTO) throws MessagingException, IOException {
        Customer s = customerDAO.findOne(customDesignDTO.getCusDescustomer());

        List<CustomDesignDTO> listCus = new ArrayList<>();
        String array = customDesignDTO.getDataValueCustomDes();
        System.out.print("arr" + array);


        String yo[] = array.split(" ");

        System.out.print("yo[]" + Arrays.toString(yo));
        int c = 0;
        CustomDesignDTO itm = new CustomDesignDTO();
        for (String str : yo) {//Read String and add to list
            if (c == 0) {
                itm = new CustomDesignDTO();
                itm.setCusDesName(str);
                c++;
            } else if (c == 1) {
                itm.setCusDescontact(str);
                c++;
            } else if (c == 2) {
                itm.setCusDesemail(str);
                c++;
            } else if (c == 3) {
                itm.setCusDescakeType(str);
                c++;
            } else if (c == 4) {
                itm.setCusDescakeSize(str);
                c++;
            } else if (c == 5) {
                //Base64.encode(FileUtils.readFileToByteArray(file));
                itm.setCusDesimage(str);
                c++;
            } else if (c == 6) {
                itm.setCusDesdes(str);
                listCus.add(itm);
                c = 0;
            }
        }
        MimeMessage message = javaMailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(message, true);

        helper.setTo(s.getEmail());
        helper.setFrom("webspring404@gmail.com"); //mail
        helper.setSubject("Your secret baker custom design request has been received!!");
        boolean html = true;

        //MimeMultipart multipart = new MimeMultipart("related");

        // first part  (the html)
        //BodyPart messageBodyPart = new MimeBodyPart();

        String content = "<center><img src='cid:logoSB'/></center>";
        content += "<h1>Thank you for your custom design request with Secret Baker</h1>" + "\n";
        content += "<h4>We contact you soon for the further confirmation</h4>" + "\n";
        content += "<p><b>Custom Design SB" + customDesignDTO.getCustomDesignId() + "</b>\t<b>[" + customDesignDTO.getCusDesdate() + "]</b></p>";
        content += "<table width='100%' align='center' border='1' style='border-collapse:collapse;'>"
                + "<tr align='center'>"
                + "<td><b>Cake Type <b></td>"
                + "<td><b>Cake size<b></td>"
                + "<td><b>Description<b></td>"
                + "</tr>";

        int total = 0;
        int sum = 0;

        //String data=null;
        for (CustomDesignDTO d : listCus) {
            //data=d.getCusDesimage();
            content += "<tr align='center'>" + "<td>" + d.getCusDescakeType() + "</td>"
                    + "<td>" + d.getCusDescakeSize() + "</td>"
                    + "<td>"+d.getCusDesdes().replace("+"," ")+"</td>"
                    + "</tr>";
        }
        content += "<tr align='center'>" + "<td><b>" + "Shipping" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Free delivery" + "</b></td>"
                + "</tr>";

        content+= "<tr align='center'>" + "<td><b>" + "Payment Method" + "</b></td>"
                + "<td>" + "" + "</td>"
                + "<td><b>" + "Cash on delivery" + "</b></td>"
                + "</tr>"

                + "</table>";

        content+="<h4 style='text-decoration: underline;'>Customer</h4>"
                +"<p><i>"+"<b>Name:</b>"+s.getUserName()+"</i></p>"
                +"<p><i>"+"<b>Address:</b>"+s.getAddress_l1()+"</i></p>"
                + "<p><i>"+s.getAddress_l2()+"</i></p>"
                + "<p><i>"+s.getAddress_l3()+"</i></p>";

        content+="<h4 style='text-decoration: underline;'>Delivery</h4>"
                +"<p><i>"+"<b>Address:</b>"+deliveryDTO.getLocation_l1()+"</i></p>"
                +"<p><i>"+deliveryDTO.getLocation_l2()+"</i></p>"
                + "<p><i>"+deliveryDTO.getLocation_l3()+"</i></p>"
                + "<p><i>"+"<b>Date:</b>"+deliveryDTO.getDeliveryDate()+"</i></p>"
                + "<p><i>"+"<b>Time:</b>"+deliveryDTO.getDeliveryTime()+"</i></p>";


//        assert data != null;
//        String base64Image = data.split(",")[1];
//        byte[] imageBytes = javax.xml.bind.DatatypeConverter.parseBase64Binary(base64Image);
//        BufferedImage img = ImageIO.read(new ByteArrayInputStream(imageBytes));
//        File outputfile = new File("image.jpg");
//        ImageIO.write(img, "jpg", outputfile);

        //messageBodyPart.setContent(htmlText, "text/html");

        // add it
        //multipart.addBodyPart(messageBodyPart);

        // second part (the image)
//        messageBodyPart = new MimeBodyPart();
//        DataSource fds = new FileDataSource
//                (outputfile.getPath());
//        System.out.print("datasource"+fds);
//        messageBodyPart.setDataHandler(new DataHandler(fds));
//        messageBodyPart.setHeader("Content-ID","<image>");
//        messageBodyPart.setHeader("Content-ID","<logoSB>");

        // add it
        //multipart.addBodyPart(messageBodyPart);

        // put everything together
        //message.setContent(multipart);



        helper.setText(content, html);
        //img set
        ClassPathResource resource = new ClassPathResource("../../cake-main/img/logonw2.png");
        helper.addInline("logoSB", resource);
        javaMailSender.send(message);
    }

    @Override
    public void checkEmailExist(String email) throws EmailExist {

//        CustomerDTO existing = this.getCustomerByEmail(email);
//        if (existing == null) {
//            throw new EmailExist(email+" is already exist.");
//        }

    }


}