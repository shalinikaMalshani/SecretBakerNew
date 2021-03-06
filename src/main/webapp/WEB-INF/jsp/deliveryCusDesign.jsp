<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/6/2022
  Time: 7:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cake | Template</title>

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

    <%--    <%--%>
    <%--        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");--%>
    <%--        String deliveryDate = sdf.format(new Date());--%>
    <%--    %>--%>
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
        <div class="offcanvas__cart__links">
            <a href="/signUp" class="register">Register</a>
            <a href="/signIn" class="signIn">SignIn</a>
        </div>
        <div class="offcanvas__cart__item">
            <a href="/shoppingCartNew"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="home"><img src="../../cake-main/img/logonw2.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner">

                        <div class="header__logo">
                            <a href=""><img src="../../cake-main/img/logonw2.png" style="height:110px; weight:60px;" alt=""></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links header__top__right__cart" >
                                <a href="/signUp" class="register" style="color: black; margin-left:50px">Register</a>
                                <a href="/signIn" class="signIn" style="color: black; margin-left:50px">SignIn</a>
                                <a href="/shoppingCartNew" class="cart-icon" style="margin-left:50px;"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                            </div><br>
                        </div>
                    </div>
                </div>
            </div>

            <div class="canvas__open"><i class="fa"><img src="../../img/toggle.png" style="margin-bottom: 8px;" alt=""></i></div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li><a href="home">Home</a></li>
                        <li><a href="/about">About</a></li>
                        <li class="active"><a href="shop">Shop</a></li>
                        <li><a href="/blog_cakes">Blog</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Delivery Details</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="home">Home</a>
                    <span>Checkout</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="checkout__form">
            <form method="POST"  action="deliveryCus"  name="delivery" onclick="dateCheck()">
                <input class="form-control" name="customDesignId" value="0" id="customDesignId" type="hidden">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <h6 class="checkout__title">Delivery Details</h6>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>First Name<span>*</span></p>
                                    <input type="text" class="form-control"
                                            name="name" required
                                           id="name" placeholder="First Name"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Last Name<span>*</span></p>
                                    <input type="text" class="form-control" required
                                            name="lastName"
                                           id="lastName" placeholder="LastName"/>
                                </div>
                            </div>
                        </div>


                        <div class="checkout__input">
                            <p>Delivery Area<span>*</span></p>
                            <select  name="deliveryArea" required
                                    id="deliveryArea" class="checkout__input__add">
                                <option value="1">Choose Area</option>
                                <option value="Moratuwa">Moratuwa</option>
                                <option value="Piliyandala">Piliyandala</option>
                                <option value="Panadura">Panadura</option>
                                <option value="Kasbawa">Kasbawa</option>
                            </select>
                        </div>
                        <article style="color:red; margin-left:150px; margin-top:20px; padding-left:20px; " >
                            (We deliver selected areas only,due to this covid situation)
                        </article>
                        <br>
                        <div class="checkout__input">
                            <p>Delivery Address<span>*</span></p>
                            <input type="text" id="location_l1" name="location_l1" placeholder="Delivery Address line1" class="checkout__input__add">
                            <input type="text" id="location_l2" name="location_l2" placeholder="Delivery Address line2" class="checkout__input__add">
                            <input type="text" id="location_l3" name="location_l3" placeholder="Delivery Address line3" class="checkout__input__add">

                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Phone<span>*</span></p>
                                    <input type="tel" class="form-control"
                                           pattern="[0-9]{10}" oninvalid="setCustomValidity('Please enter a valid phone number!')"
                                           name="contactNo"
                                           id="contactNo" placeholder="Mobile No"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="email" class="form-control" required
                                            name="email"
                                           id="email" placeholder="Email"/>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Delivery Date<span>*</span></p>
                                    <input type="date" name ="deliveryDate" id="deliveryDate" placeholder="Delivery Date" class="checkout__input__add" required >
                                    <div id="errorMsg"></div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Delivery Time<span>*</span></p>
                                    <select  name="deliveryTime" required
                                            id="deliveryTime" class="checkout__input__add" >
                                        <option value="1">Select the prefer Time</option>
                                        <option value="During 10AM - 1PM">During 10AM - 1PM</option>
                                        <option value="During 1pm - 4pm">During 1PM - 4PM</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Payment Type</p>
                                    <input type="text"  name="paymentType" id="paymentType" placeholder="Cash on Delivery" readonly/>
                                </div>
                            </div>
                        </div>

                        <br><br><br>
                        <div class="row">
                            <div class="col-6">
                                <input  type="text"  id="cusDes"  style="display: none;" name="dataValueCustomDes">
                                <button type="submit" class="site-btn"
                                        onclick="valuesAllNew()">Checkout</button>
                            </div>
                            <div class="col-6">
                                <%--            <input  type="text"  id="cancel" name="dataValue" style="display: none">--%>
                                <button type="submit" class="site-btn"><a href="home" style="color: white;">Cancel</a></button>
                            </div>
                        </div>

                    </div>




                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h6 class="order__title">Your Requseted Custom Design Summary</h6>
                            <div class="checkout__order__products">Cake Type<span>Cake Size</span>
                            </div>



                            <ul class="checkout__total__products">
                                <c:forEach items="${customDees}" var="listn">
                                    <li>${listn.cusDescakeType}<span>${listn.cusDescakeSize}</span></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </form>

        </div>
        </div>


</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<footer class="footer set-bg" data-setbg="../cake-main/img/footer-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>WORKING HOURS</h6>
                    <ul>
                        <li>Monday - Friday: 08:00 am ??? 08:30 pm</li>
                        <li>Saturday: 10:00 am ??? 16:30 pm</li>
                        <li>Sunday: 10:00 am ??? 16:30 pm</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
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
<!-- Footer Section End -->

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

<%--<script>--%>
<%--    var valTot=JSON.parse(JSON.stringify(localStorage.getItem('totalItemCost')));--%>
<%--    console.log("total",valTot);--%>
<%--    document.getElementById("subtotDel").innerHTML="Rs:"+valTot+".00";--%>
<%--    document.getElementById("totDel").innerHTML="Rs:"+valTot+".00";--%>
<%--</script>--%>

<script>
    function dateCheck() {
        var dateController = {
            currentDate: null
        }

        $(document).on("change", "#deliveryDate", function (event, ui) {
            var now = new Date();
            var selectedDate = new Date($(this).val());

            if (selectedDate < now) {
                console.log("error");
                var error=document.querySelector('#errorMsg');
                $(this).val("");
                error.innerHTML=`<div class="alert alert-danger" role="alert" id="alert-box">
                                                    Only allow to enter future dates.
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>`;
                $(document).ready(function (){
                   setTimeout(function (){
                       $(".alert.alert-danger").alert('close');
                    },3000);
                });
            } else {
                dateController.currentDate = $(this).val();
            }
        });
    }
</script>

<script src="../../js/cartNew.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script src="../../cake-main/js/jquery-3.3.1.min.js"></script>
<script src="../../cake-main/js/bootstrap.min.js"></script>
<script src="../../cake-main/js/jquery.nice-select.min.js"></script>
<script src="../../cake-main/js/jquery.barfiller.js"></script>
<script src="../../cake-main/js/jquery.magnific-popup.min.js"></script>
<script src="../cake-main/js/jquery.slicknav.js"></script>
<script src="../cake-main/js/owl.carousel.min.js"></script>
<script src="../cake-main/js/jquery.nicescroll.min.js"></script>
<script src="../cake-main/js/main.js"></script>
</body>
</html>