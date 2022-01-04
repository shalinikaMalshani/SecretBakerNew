<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/21/2021
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SB</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../css/checkout.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col 12">
<div class="top">
    <div style="text-align: center;">
    <h2>Thank you</h2>
    <hr>
    <p>Your order is successfully completed.<br>
    You will receive an email with invoice.</p>
    </div>
</div>
        </div>
    </div>
    <div class="row">
        <div class="col 12"><br><br>
            <h4>CHECKOUT SUMMARY</h4>

            <div class="row">
                <div class="col-6">
                    Customer:<p>${customer.userName}</p>
                    <p>${customer.email}</p>
                    <p>${customer.address}</p>
                </div>
                <div class="col-6">
                    Shopping:<p>Secret Baker</p>
                    <p>secretbaker@gamil.com</p>
                    <p>No 30,Palliyawatta,Piliyandala</p>
                </div>
            </div><br><br>
            <h5>Your Order</h5>
            <table class="table" id="order">
                <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Qty</th>
                    <th>Unit Price</th>
                    <th>Amount</th>
                </tr>
                </thead>
                <tbody>

            <c:forEach items="${listCounterOrderDetails}" var="list">
            <tr>
               <td>${list.name}</td>
                <td>${list.quantity}</td>
                <td>${list.unitePrice}</td>
                <td>${list.quantity*list.unitePrice}</td>
            </tr>

            </c:forEach>

                </tbody>

            </table>
            <h4>Total:<span id="val"></span></h4>
        </div>


        </div>
    </div>


<script>

    var table = document.getElementById('order');
    var sumVal = 0;

var c=table.rows.length;
console.log("row count",c);
     for (var i = 1; i < table.rows.length; i++) {
         sumVal = sumVal + parseFloat(table.rows[i].cells[3].innerHTML) ;
     }

     document.getElementById("val").innerHTML = "Rs: " + sumVal;



</script>

</body>
</html>
