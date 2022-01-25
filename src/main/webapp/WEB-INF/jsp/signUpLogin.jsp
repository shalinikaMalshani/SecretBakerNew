<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/3/2022
  Time: 7:46 PM
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
    <div class="col-12">
        <h1>Sign In</h1>
        <form method="post" action="onlineSignInn">
<%--                <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
            <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >

                <div class="mb-3">
                <label for="exampleFormControlInput" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput" name="email" placeholder="name@example.com">
            </div>

            <div class="mb-3">
                <label for="exampleFormControlInput" class="form-label">Password</label>
                <input type="text" class="form-control" id="exampleFormControlInput5" name="password" placeholder="Enter your password">
            </div>
            <input   type="text"  id="payNew" name="dataValue" style="display: none">
            <button type="submit"  onclick="getValueNew()">SignIn</button>
            <%
                session.setAttribute("userId", "usffff");
            %>

        </form>
        <div class="col-12">
            <h4>Don't have an account?</h4>
            <button><a href="/signUp">Create Account</a></button>
        </div>
    </div>
</div>
<script src="../../js/cartNew.js"></script>
</body>
</html>
