
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dilivery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../css/cart.css">

</head>
<body>
<div class="container mt-3">

    <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-5">
                <form method="POST"  action="delivery"  name="delivery">
<%--    <form method="POST"  action="invoice" name="delivery">--%>

                    <div class="form-group">

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

                    </div>

                    <div class="form-group">


                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
                            <label >Customer Name</label>
                            <input type="text" class="form-control"
                                   required="required" name="name"
                                   id="name" placeholder="Customer Name"/></div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
                            <label >Mobile No</label>
                            <input type="tel" class="form-control"
                                   pattern="[0-9]{10}" oninvalid="setCustomValidity('Please enter a valid phone number!')"
                                   name="contactNo"
                                   id="contactNo" placeholder="Mobile No"/></div>
                    </div>


                    <div class="form-group">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
                            <label >Email</label>
                            <input type="email" class="form-control"
                                   required="required" name="email"
                                   id="email" placeholder="Email"/></div>




                    </div>

                    <div class="form-group">

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
                            <label >NIC</label>
                            <input type="text" class="form-control"required="required" name="nic" id="nic"/>
                        </div>
                        <br>
                    </div>

                    <div class="form-group">

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
                            <label >Delivery Area</label>
                            <select class="form-control"required="required" name="deliveryArea"
                                    id="deliveryArea">
                                <option value="1">Choose Area</option>
                                <option value="Moratuwa">Moratuwa</option>
                                <option value="Piliyandala">Piliyandala</option>
                                <option value="Panadura">Panadura</option>
                                <option value="Kasbawa">Kasbawa</option>
                            </select>

                        </div>

                        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6"> <br>
<%--                            <input type="text" required="required" name="location"--%>
<%--                                   id="location" >--%>
                            <label>Delivery Location</label>
                            <input type="text" class="form-control"
                                   required="required" name="location"
                                   id="location" placeholder="Delivery Location"/></div>

                    </div>

<%--                    <button type='submit' class="btn btn-primary" style="width: 50%; top: 20px; position: relative" value="Submit">--%>
<%--                        Submit--%>
<%--                    </button>--%>
                        <button type="submit" value="Register" id="submitPay"
                                onclick="getValue()">Checkout</button>

                    <button type='reset' class="btn btn-outline-success" style="top: 20px; position: relative" value="">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../../js/delivery.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>

</html>
