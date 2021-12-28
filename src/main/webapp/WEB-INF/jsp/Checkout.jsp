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
<div class="container">
    <div class="row">
        <div class="col 12">
<h3>Your Order</h3>
<%--            <form method="post" action="saveCustomer">--%>
            <table class="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Item Name</th>
                    <th>Item price</th>
                    <th>Qty</th>
                </tr>
                </thead>
                <tbody>

            <c:forEach items="${listCounterOrderDetails}" var="list">
            <tr>
                <td>${listCounterOrders}</td>
               <td>${list.name}</td>
                <td>${list.unitePrice}</td>
                <td>${list.quantity}</td>
            </tr>
            </c:forEach>

                </tbody>

            </table>
        </div>

<%--<form method="post" action="saveCustomer">--%>
<%--&lt;%&ndash;    <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">&ndash;%&gt;--%>
<%--    <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >--%>


<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Name</label>--%>
<%--        <input type="text" class="form-control" id="exampleFormControlInput1" name="userName" placeholder="Enter your name">--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Email address</label>--%>
<%--        <input type="email" class="form-control" id="exampleFormControlInput2" name="email" placeholder="name@example.com">--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>--%>
<%--        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address"></textarea>--%>
<%--    </div>--%>


<%--    <h3>Payment</h3>--%>
<%--    <div class="form-check">--%>
<%--        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">--%>
<%--        <label class="form-check-label" for="flexRadioDefault1">--%>
<%--            Cash On Delivery--%>
<%--        </label>--%>
<%--    </div>--%>
<%--    <input type="submit" value="Confirm" onclick="getValue()">--%>
<%--</form>--%>
        </div>
    </div>

<script src="../../js/cartNew.js"></script>
</body>
</html>
