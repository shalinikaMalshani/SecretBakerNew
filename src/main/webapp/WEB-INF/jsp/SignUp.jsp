<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/28/2021
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../css/checkout.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
</head>
<body>
<div class="container">
    <div class="col-12">
<h1>Sign up</h1>
<form method="post" action="saveCustomer">
<%--        <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
    <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden">


    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Name</label>
        <input type="text" class="form-control" id="exampleFormControlInput1" name="userName" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="exampleFormControlInput2" name="email" placeholder="name@example.com">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Mobile No</label>
        <input type="text" class="form-control" id="exampleFormControlInput3" name="number" placeholder="Enter your mobile no">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Address</label>
        <input type="text" class="form-control" id="exampleFormControlInput4" name="address_l1" placeholder="Enter your address line 1">
    </div>
    <div class="mb-3">

        <input type="text" class="form-control" id="exampleFormControlInput5" name="address_l2" placeholder="Enter your address line 2">
    </div>
        <div class="mb-3">
            <input type="text" class="form-control" id="exampleFormControlInput6" name="address_l3" placeholder="Enter your address">
        </div>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Password</label>
            <input type="text" class="form-control" id="exampleFormControlInput7" name="password" placeholder="Enter your password">
        </div>


<input type="submit" value="signUp">
</form>

</div>
</div>
<%--<script src="../../js/cartNew.js"></script>--%>
</body>
</html>
