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
    <%--    <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
    <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >


    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Name</label>
        <input type="text" class="form-control" id="exampleFormControlInput1" name="userName" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="exampleFormControlInput2" name="email" placeholder="name@example.com">
    </div>
    <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label">Address</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address"></textarea>
    </div>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Mobile No</label>
            <input type="text" class="form-control" id="exampleFormControlInput3" name="number" placeholder="Enter your mobile no">
        </div>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Password</label>
            <input type="text" class="form-control" id="exampleFormControlInput4" name="password" placeholder="Enter your password">
        </div>


<input type="submit" value="signUp">
</form>
        <div class="col-12">
            <h1>Sign In</h1>
        <form method="post" action="onlineSignInn">
            <%--    <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
            <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >



            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput" name="email" placeholder="name@example.com">
            </div>

            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                <input type="text" class="form-control" id="exampleFormControlInput5" name="password" placeholder="Enter your password">
            </div>
            <input type="submit" value="signIn">
                <%
                    session.setAttribute("userId", "usffff");
                %>

</form>
        </div>
</div>
</div>
</body>
</html>
