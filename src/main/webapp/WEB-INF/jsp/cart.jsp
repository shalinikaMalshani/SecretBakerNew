<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/7/2021
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../css/cart.css">

</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-xs-1">
    <button class="cart-icon"><a href="/shoppingCart">Cart</a><span style="padding-left: 3px;">0</span></button>
        </div>
    </div>

    <div class="row">
        <div class="card">
            <div class="card-body">
<div class="product-container">
    <div class="product-header">
        <h5 class="product-title">PRODUCT</h5>
        <h5 class="price">PRICE</h5>
        <h5 class="qty">QUANTITY</h5>
        <h5 class="total">TOTAL</h5>
    </div>
    <div class="products">
    </div>

</div>
            </div>
    </div>



    </div>
</div>

<script src="../../js/cart.js"></script>
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</body>
</html>
