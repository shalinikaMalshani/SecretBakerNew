<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/2/2021
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secret Baker | Online Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="../../css/onlineOrder.css">
<link rel="stylesheet" href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css">

    <script src="../../js/cart.js"></script>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

</head>
<body>

<div class="container mt-3">
    <button class="cart-icon"><a href="/shoppingCart">Cart</a><span style="padding-left: 3px;">0</span></button>
    <div class="card">
<%--        <div class="card-header">--%>
<%--            Header--%>
<%--        </div>--%>
    <form method="POST" action="#">
        <div class="card-body">


            <img src="${foodItem.src}" class="mx-auto d-block img-fluid" name="imgSrc" id="imgSrc">
            <h2 class="card-title">
                <input type="text" value="${foodItem.foodName}" readonly name="foodName" id="foodName" class="input-field" style="height:60px;">
            </h2>
            <div class="card-text">

                <textarea  readonly name="l_des" id="l_des" class="input-field" rows="3" cols="55"  >${foodItem.l_description}</textarea>

                <hr>
                <input type="text" readonly value="${foodItem.s_description}" class="input-field" name="s_des" id="s_des" style="width: 60px;">
                <input type="text" value="${foodItem.price}" readonly name="price" id="price" class="input-field">
                <hr>

                <button><a href="/foodItemsss">Product</a></button>
<%--                Qty:--%>
<%--                <input type="number" name="qty" id="qty" style="border: 1px solid grey;width:50px;border-radius: 5px;"/>--%>

<%--                <a  href="#" class="add-cart cart${foodItem.foodId}">Add To Cart</a>--%>

            </div>
        </div>
    </form>
    </div>
</div>
<%--<script>--%>
<%--    var carts = document.querySelectorAll(".add-cart"), i;--%>

<%--    for (i = 0; i <carts.length; ++i) {--%>
<%--        carts[i].addEventListener('click',()=>{--%>
<%--            cartNo();--%>
<%--        })--%>
<%--    }--%>
<%--    function cartNo(){--%>
<%--        var productNumbers=localStorage.getItem('cartNo');--%>

<%--        productNumbers=parseInt('productNumbers');//convert productNumber string into int--%>
<%--        if(productNumbers){--%>
<%--            localStorage.setItem('cartNo',productNumbers+1);--%>
<%--        }else {--%>
<%--            localStorage.setItem("cartNo", 1);--%>
<%--        }--%>
<%--    }--%>

<%--</script>--%>
</body>
</html>
