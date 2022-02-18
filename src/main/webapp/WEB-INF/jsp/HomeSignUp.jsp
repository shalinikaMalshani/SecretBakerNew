<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/5/2022
  Time: 1:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../cake-main/css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../cake-main/css/checkout.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <%--    <meta charset="UTF-8">--%>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../cake-main/fonts/material-icon/css/material-design-iconic-font.min.css">

    <link rel="stylesheet" href="../../css/home.css" type="text/css">
    <%--    <meta charset="UTF-8">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Font Icon -->
    <link rel="stylesheet" href="../../signupTemp/fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="../../signupTemp/cssNw/style.css">

    <%--    <title>Cake | Template</title>--%>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../cake-main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../cake-main/css/style.css" type="text/css">


</head>
<body>
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner">
                        <div class="header__top__left">
                            <ul>
                                <li>USD <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li>EUR</li>
                                        <li>USD</li>
                                    </ul>
                                </li>
                                <li>ENG <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li>Spanish</li>
                                        <li>ENG</li>
                                    </ul>
                                </li>
                                <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
                            </ul>
                        </div>
                        <div class="header__logo">
                            <a href="home"><img src="../cake-main/img/logo.png" alt=""></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links">
                                <a href="/signUp" class="register">Register</a>
                                <a href="/signIn" class="signIn">SignIn</a>
                            </div><br>
                            <div class="header__top__right__cart" style="float: right;margin-right:20px;">
                                <a href="#"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                                <%--                                <div class="cart__price">Cart: <span>$0.00</span></div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--            <div class="canvas__open"><i class="fa fa-bars"></i></div>--%>
            <div class="canvas__open"><i class="fa"><img src="../img/toggle.png" style="margin-bottom: 8px;"></i></div>

        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li><a href="home">Home</a></li>
                        <li><a href="about">About</a></li>
                        <li><a href="shop.html">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="shop-details.html">Shop Details</a></li>
                                <li><a href="shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="checkout.html">Check Out</a></li>
                                <li><a href="wisslist.html">Wisslist</a></li>
                                <li><a href="./Class.html">Class</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a></li>
                        <li class="active"><a href="./contact.html">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!--Previous page-->
<%--<div class="container">--%>
<%--    <div class="col-12">--%>
<%--<h1>Sign up</h1>--%>
<%--<form method="post" action="saveCustomer">--%>
<%--        <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">--%>
<%--    <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden">--%>


<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Name</label>--%>
<%--        <input type="text" class="form-control" id="exampleFormControlInput1" name="userName" placeholder="Enter your name">--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Email address</label>--%>
<%--        <input type="email" class="form-control" id="exampleFormControlInput2" name="email" placeholder="name@example.com">--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Mobile No</label>--%>
<%--        <input type="text" class="form-control" id="exampleFormControlInput3" name="number" placeholder="Enter your mobile no">--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>
<%--        <label for="exampleFormControlInput1" class="form-label">Address</label>--%>
<%--        <input type="text" class="form-control" id="exampleFormControlInput4" name="address_l1" placeholder="Enter your address line 1">--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>

<%--        <input type="text" class="form-control" id="exampleFormControlInput5" name="address_l2" placeholder="Enter your address line 2">--%>
<%--    </div>--%>
<%--        <div class="mb-3">--%>
<%--            <input type="text" class="form-control" id="exampleFormControlInput6" name="address_l3" placeholder="Enter your address">--%>
<%--        </div>--%>

<%--        <div class="mb-3">--%>
<%--            <label for="exampleFormControlInput1" class="form-label">Password</label>--%>
<%--            <input type="text" class="form-control" id="exampleFormControlInput7" name="password" placeholder="Enter your password">--%>
<%--        </div>--%>


<%--<input type="submit" value="signUp">--%>
<%--</form>--%>
<!--end of previous page-->

<section class="signup">
    <div class="container2">
        <div class="row">
            <div class="col-lg-12">
                <div class="signup-content" style="margin-bottom:10px; margin-top: 25px">
                    <div class="signup-form">
                        <h2 class="form-title" style="color: black"><b>Register</b></h2>
                        <form method="POST" class="register-form" id="register-form" action="saveCustomerHome" onsubmit="return verifyPassword() ">
                            <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden">
                            <%--                    <div class="form-group">--%>
                            <%--                        <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>--%>
                            <%--                        <input type="text" name="your_name" id="your_name1" placeholder="Your Name"/>--%>
                            <%--                    </div>--%>


                            <div class="form-group" >
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text"  id="your_name" name="userName" placeholder="Enter your name" required>
                            </div><br>

                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" id="exampleFormControlInput2" name="email" placeholder="Enter your email" required>
                            </div>
                            <div class="alert alert-warning" style="padding:2px 10px 2px 10px; margin-bottom:10px; margin-top:-10px">
                                <small>Please provide a valid email address.<br>Your order receipts will be sent  by email.</small> <br>
                            </div><br>


                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-phone"></i></label>
                                <input type="tel"  id="exampleFormControlInput3" name="number"
                                       pattern="[0-9]{10}" oninvalid="setCustomValidity('Please enter a valid phone number!')"
                                       placeholder="Enter your mobile no" required>
                            </div>
                            <br>


                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-home"></i></label>
                                <input type="text"  id="exampleFormControlInput4" name="address_l1" placeholder="Enter your address line 1" required>
                            </div>


                            <div class="form-group">
                                <input type="text"  id="exampleFormControlInput5" name="address_l2" placeholder="Enter your address line 2" required>
                            </div>

                            <div class="form-group">
                                <input type="text"  id="exampleFormControlInput6" name="address_l3" placeholder="Enter your address">
                            </div><br>

                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password"  id="password" name="password" placeholder="Enter your password"  required/>
                                <span id='message2'></span>
                            </div>
                            <div style="margin-top:-10px"> <small>(Minimum 8 characters enter the password)</small></div><br>


                            <div class="form-group">
                                <label for="re_pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" onkeyup="check();" required />
                                <span id='message'></span>
                            </div>


                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" value="1"/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service2" style="color: #0b0b0b;">Terms of service</a></label>

                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" disabled>
                                <br>
                                <span id='message3'></span>
                                <span id='message4'></span>

                            </div>
                            <h6>I'm already your member <a href="signUpLogin" style="color: #0b0b0b;">Sign In</a></h6>
                        </form>
                    </div>

                    <div class="row">
                        <div class="">
                            <div class="signup-image">
                                <figure><img src="../../signupTemp/images/cake5.jpg" alt="sing up image"></figure>
                                <%--                <a href="signUpLogin" class="signup-image-link">I am already member</a>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer Section Begin -->
<footer class="footer set-bg" data-setbg="../cake-main/img/footer-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="footer__widget">
                    <h6>WORKING HOURS</h6>
                    <ul>
                        <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                        <li>Saturday: 10:00 am – 16:30 pm</li>
                        <li>Sunday: 10:00 am – 16:30 pm</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="../cake-main/img/footerlogo2.png" alt=""></a>
                    </div>
                    <p>Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore dolore magna aliqua.</p>
                    <div class="footer__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="footer__widget">
                    <h6>CONTACT</h6>
                    <ul>
                        <li>No 12,</li>
                        <li>Green view garden,</li>
                        <li>Green view garden,</li>
                        <li>Kotagedara Road,</li>
                        <li>Piliyandala.</li>
                    </ul>
                    <br>
                    <H6>EMAIL</H6>
                    <ul>
                        <li>secretbaker123.com</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
                <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->




<!-- Js Plugins -->
<script src="../cake-main/js/jquery-3.3.1.min.js"></script>
<script src="../cake-main/js/bootstrap.min.js"></script>
<script src="../cake-main/js/jquery.nice-select.min.js"></script>
<script src="../cake-main/js/jquery.barfiller.js"></script>
<script src="../cake-main/js/jquery.magnific-popup.min.js"></script>
<script src="../cake-main/js/jquery.slicknav.js"></script>
<script src="../cake-main/js/owl.carousel.min.js"></script>
<script src="../cake-main/js/jquery.nicescroll.min.js"></script>
<script src="../cake-main/js/main.js"></script>
<!-- Footer Section End -->
<%--<script src="../../js/cartNew.js"></script>--%>

<!-- JS -->
<script src="../../signupTemp/vendor/jquery/jquery.min.js"></script>
<script src="../../signupTemp/js/main.js"></script>

<script>
    var check = function() {
        if (document.getElementById('password').value ==
            document.getElementById('re_pass').value) {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').innerHTML = 'matching';
        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').innerHTML = 'Not matching..';
            // alert("Your confirm password is wrong..Please enter correct password..");
        }
    }
</script>

<%--<script>--%>
<%--    var check2 = function() {--%>
<%--        if (document.getElementById('password').value ==--%>
<%--            document.getElementById('re_pass').value) {--%>

<%--        } else {--%>
<%--            document.getElementById('message').style.color = 'red';--%>
<%--            document.getElementById('message').innerHTML = 'Please Enter Correct Password..';--%>
<%--        }--%>
<%--    }--%>
<%--</script>--%>

<%--<script>--%>
<%--    function verifyPasswordNw() {--%>
<%--        var pw = document.getElementById("password").value;--%>
<%--        var re_pw = document.getElementById("re_pass").value;--%>
<%--        if (document.getElementById("password").value ==--%>
<%--            document.getElementById("re_pass").value) {--%>

<%--            document.getElementById("message3").innerHTML = "Register Success..";--%>
<%--            return true;--%>
<%--        }--%>
<%--        else{--%>
<%--            document.getElementById("message3").innerHTML = "Re Enter correct password..";--%>
<%--            return false;--%>
<%--        }--%>

<%--//         //minimum password length validation--%>
<%--//         if(pw.length < 8) {--%>
<%--//             document.getElementById('message2').style.color = 'red'--%>
<%--//             document.getElementById("message2").innerHTML = "**Password length must be at least 8 characters";--%>
<%--//             return false;--%>
<%--//         }--%>
<%--//--%>
<%--// //maximum length of password validation--%>
<%--//         if(pw.length > 15) {--%>
<%--//             document.getElementById('message2').style.color = 'red'--%>
<%--//             document.getElementById("message2").innerHTML = "**Password length must not exceed 15 characters";--%>
<%--//             return false;--%>
<%--//         }--%>
<%--    }--%>
<%--</script>--%>



<script>
    function verifyPassword() {
        var pw = document.getElementById("password").value;
        // check empty password field
        // if(pw == "") {
        //     document.getElementById("message2").innerHTML = "**Fill the password please!";
        //     return false;
        // }



        //minimum password length validation
        if(pw.length < 8) {
            document.getElementById('message2').style.color = 'red'
            document.getElementById("message2").innerHTML = "**Password length must be at least 8 characters";
            return false;
        }

//maximum length of password validation
        if(pw.length > 15) {
            document.getElementById('message2').style.color = 'red'
            document.getElementById("message2").innerHTML = "**Password length must not exceed 15 characters";
            return false;
        }

        if (document.getElementById("password").value ==
            document.getElementById("re_pass").value) {
            document.getElementById('message3').style.color = "green"
            // document.getElementById("message3").innerHTML = "Register Success..";
            alert ("Register Success..");
            return true;
        }
        else{
            document.getElementById('message3').style.color = "red"
            document.getElementById("message3").innerHTML = "Your password is wrong.. Please enter correct password..";
            return false;
        }
    }
</script>

<%--<script>--%>
<%--    var checkboxes = $("input[type='checkbox']"),--%>
<%--        submitButt = $("input[type='submit']");--%>

<%--    checkboxes.click(function() {--%>

<%--            submitButt.attr("disabled", !checkboxes.is(":checked"));--%>

<%--        // submitButt.attr("enabled", !checkboxes.is(":checked"));--%>
<%--        // if(checkboxes =! checked){--%>
<%--        //     document.getElementById("message4").innerHTML = "Please checked..";--%>
<%--        // }--%>


<%--    });--%>
<%--</script>--%>
<script>
    $('#agree-term').click(function(){
        //If the checkbox is checked.
        if($(this).is(':checked')){
            //Enable the submit button.
            $('#signup').attr("disabled", false);
        }else{
            //If it is not checked, disable the button.
            $('#signup').attr("disabled", true);
            document.getElementById('message4').style.color = 'red'
            document.getElementById("message4").innerHTML = "Please checked..";
            // alert ("Please ckecked the button..");
            // return true;
        }
    });
</script>

</body>
</html>
