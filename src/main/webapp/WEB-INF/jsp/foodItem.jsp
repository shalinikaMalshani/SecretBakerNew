<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/27/2021
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secret Baker|Online Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/onlineOrder.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

</head>
<body>

<div class="container mt-3">
    <h1 class="text-center">Online Order</h1>
    <div class="row">
        <div class="col-12 col-md-12 col-lg-12 col-xl-12">
        <div class="product-order">
            <div class="col-12 col-md-6 col-lg-12 col-xl-12">
    <div class="product-pic">
      <img src="../../img/Cupcaketag.jpg" alt="" class="mx-auto d-block img-fluid">
    </div>
            </div>
            <div class="col-12 col-md-6 col-lg-12 col-xl-12">
<div class="product-content">
<%--    <form method="post" action="" name="foodItem">--%>
    <h1><input type="text" value="${foodItem.foodName}" readonly name="foodName" id="foodName" class="input-field" style="height:60px;"></h1>
    <textarea  readonly name="l_des" id="l_des" class="input-field" rows="3" cols="90" >${foodItem.l_description}</textarea>

    <hr style="width: 30%; border: 1px solid #000000;" />
    <input type="text" readonly value="${foodItem.s_description}" class="input-field" name="s_des" id="s_des">
    <input type="text" value="${foodItem.price}" readonly name="price" id="price" class="input-field" style="line-height:22px;">
    <hr style="width: 30%; border: 1px solid black;" />

    <input type="number" name="qty" id="qty" style="border: 1px solid grey;width:50px;"/>
        <input type="submit" value="Add To Cart">
<%--    </form>--%>
</div>
        </div>
        </div>
        </div>
    </div>
</div>
</body>
</html>
