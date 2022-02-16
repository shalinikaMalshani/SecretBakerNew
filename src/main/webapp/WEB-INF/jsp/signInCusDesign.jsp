<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/5/2022
  Time: 8:47 PM
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

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="../../css/home.css" type="text/css">
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

    <!-- Font Icon -->
    <link rel="stylesheet" href="../../signupTemp/fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="../../signupTemp/cssNw/style.css">

    <%--    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">--%>


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
                                <a href="/signUpLogin" class="signIn">SignIn</a>
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
            <%--            <div class="canvas__open"><ion-icon name="basket"></ion-icon></div>--%>
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

<!--start of previous page-->
<%--<div class="container">--%>
<%--    <div class="col-12">--%>
<%--        <h1>Sign In</h1>--%>
<%--        <form method="post" action="onlineSignInn">--%>
<%--&lt;%&ndash;                <input  type="text" style="width: 100%;display: none" id="pay" name="dataValue">&ndash;%&gt;--%>
<%--            <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >--%>

<%--                <div class="mb-3">--%>
<%--                <label for="exampleFormControlInput" class="form-label">Email address</label>--%>
<%--                <input type="email" class="form-control" id="exampleFormControlInput" name="email" placeholder="name@example.com">--%>
<%--            </div>--%>

<%--            <div class="mb-3">--%>
<%--                <label for="exampleFormControlInput" class="form-label">Password</label>--%>
<%--                <input type="text" class="form-control" id="exampleFormControlInput5" name="password" placeholder="Enter your password">--%>
<%--            </div>--%>
<%--            <input   type="text"  id="payNew" name="dataValue" style="display: none">--%>
<%--            <button type="submit"  onclick="getValueNew()">SignIn</button>--%>
<%--            <%--%>
<%--                session.setAttribute("userId", "usffff");--%>
<%--            %>--%>

<%--        </form>--%>
<%--        <div class="col-12">--%>
<%--            <h4>Don't have an account?</h4>--%>
<%--            <button><a href="/signUp">Create Account</a></button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!--end of previous page-->
<!-- Sing in  Form -->
<section class="sign-in">
    <div class="container2">
        <div class="signin-content" style="margin-top:25px; margin-bottom:30px">
            <div class="signin-image">
                <figure><img src="../signupTemp/images/cake9.jpg"  style="margin-left:0px; width:300px; height: 300px;" alt="sing up image"></figure>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Sign In</h2>
                <form method="POST" class="register-form"  action="onlineSignInCusDes">

                    <c:if test="${invalidd!=null}">
                        <div class="alert alert-danger" role="alert" id="alert-box">
                                ${invalidd}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </c:if>
                    <c:if test="${successSignUp!=null}">
                        <div class="alert alert-success" role="alert" id="alert-box">
                                ${successSignUp}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </c:if>

                    <script>
                        $(document).ready(function() {
                            // close the alert
                            setTimeout(function() {
                                $(".alert.alert-success").alert('close');
                            }, 8000);
                        });
                    </script>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>--%>
                    <%--                        <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>--%>
                    <%--                    </div>--%>
                    <input class="form-control" name="onlineCustomerId" value="0" id="onlineCustomerId" type="hidden" >

                    <div class="form-group">
                        <label for="exampleFormControlInput" class="form-label"><i class="zmdi zmdi-email"></i></label>
                        <input type="email"  id="exampleFormControlInput" name="email" placeholder="Enter your email">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" id="exampleFormControlInput5" name="password" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                        <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                    </div>
                    <div><a href="/forgotPwd" class="forgotPwd">Forgot your password?</a></div>
                    <div class="form-group form-button">
                        <input   type="text"  id="cusDes" style="display:none;" name="dataValueCustomDes">
                        <input type="submit"  onclick="valuesAllNew()"  name="signin" id="signin" class="form-submit" value="Log in"/>
                        <%
                            session.setAttribute("userId", "usffff");
                        %>
                    </div>
                    <div class="form-group form-button">
                        <article>Don't have an account?<a href="/signUpCusDes" style=" hover:black; ">Create an account</a></article>
                    </div>
                </form>

                <div class="social-login">
                    <span class="social-label">Or login with</span>
                    <ul class="socials">
                        <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                        <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                        <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                    </ul>
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
                        <a href="#"><img src="../cake-main/img/footer-logo.png" alt=""></a>
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


<script src="../../js/cartNew.js"></script>
</body>
</html>
