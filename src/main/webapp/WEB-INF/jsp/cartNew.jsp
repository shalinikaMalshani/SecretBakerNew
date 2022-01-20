<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/20/2021
  Time: 7:40 PM
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
    <link rel="stylesheet" href="../../css/cartNew.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
</head>
<body>
<div class="container mt-3">

    <p style="font-weight: bold;">${loggerId.userName}</p>
    <div class="row">
        <div class="col-xs-1">

            <button class="cart-icon"><a href="/shoppingCartNew">Cart</a><span style="padding-left: 3px;">0</span></button>

        </div>
    </div>

    <div class="row">
        <div class="card">
            <div class="card-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col" style="display: none">ID</th>
                        <th scope="col">PRODUCT</th>
                        <th scope="col">PRICE</th>
                        <th scope="col">QUANTITY</th>
                        <th scope="col">TOTAL</th>
                    </tr>
                    </thead>
                    <tbody id="products">
<tr id="cart-empty">
    <td style="border-bottom: none;">Cart is Empty</td>
</tr>



                    </tbody>
                </table>

            </div>

            <form method="POST" action="invoice" name="invoiceRestaurantOrder">
                <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">
<%--                <input style="display: none" type="text" id="cId" value="0"  name="customerId">--%>

                <button type="submit" value="Register" id="submitPay"
                        onclick="getValue()">Checkout</button>


            </form>

<%--            <form method="GET" action="signUpLogin">--%>
<%--                <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
                <%--                <input style="display: none" type="text" id="cId" value="0"  name="customerId">--%>

<%--                <button type="submit" id="submitPay">Checkout</button>--%>


<%--            </form>--%>


        </div>



    </div>

</div>
<%--<script>--%>
<%--    var cus=JSON.stringify('${loggerId.userName}');--%>
<%--    localStorage.setItem('cusName',cus);--%>
<%--    JSON.parse(cus);--%>
<%--    localStorage.getItem('cusName');--%>
<%--</script>--%>
    <script src="../../js/cartNew.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9.17.1/dist/sweetalert2.all.min.js"></script>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
<%--<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>--%>
<%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>--%>
</body>

</html>
