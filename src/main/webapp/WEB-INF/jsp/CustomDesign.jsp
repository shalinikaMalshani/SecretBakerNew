<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/15/2022
  Time: 7:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SB</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="../../css/SBonlineMenu.css">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">--%>
<%--    <link rel="stylesheet" href="../../css/checkout.css">--%>
<%--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>--%>
</head>
<body>
<div class="container">
<form method="post" action="saveCustomDesign">
    <input class="form-control" name="customDesignId" value="0" id="customDesignId" type="hidden">
<h2>Custom Design</h2>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">First Name</label>
        <input type="text" class="form-control" id="exampleFormControlInput1" name="firstName" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="exampleFormControlInput2" name="lastName" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Email</label>
        <input type="text" class="form-control" id="exampleFormControlInput3" name="email" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Contact</label>
        <input type="text" class="form-control" id="exampleFormControlInput4" name="contact" placeholder="Enter your name">
    </div>

    <label>Type of Cake</label>
    <select class="form-select" aria-label="Default select example" name="cakeType">
        <option selected>Open this select menu</option>
        <option value="Birthday" >Birthday</option>
        <option value="Wedding" >Wedding</option>
        <option value="Anniversary" >Anniversary</option>
    </select>

    <label>Size</label>
    <select class="form-select" aria-label="Default select example" name="cakeSize">
        <option selected>Open this select menu</option>
        <option value="1kg">1kg</option>
        <option value="1.5kg" >1.5kg</option>
        <option value="2kg">2kg</option>
    </select>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Date</label>
        <input type="date" class="form-control" id="exampleFormControlInput5" name="date" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Image</label>
        <input type="file" class="form-control" id="exampleFormControlInput6" name="image" placeholder="Enter your name">
    </div>

    <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label">Description</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="des"></textarea>
    </div>

    <input type="submit" value="Submit">

</form>
</div>
</body>
</html>
