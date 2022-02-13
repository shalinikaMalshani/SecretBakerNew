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
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
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
            <a href="#" class="search-switch"><img src="../cake-main/img/icon/search.png" alt=""></a>
            <a href="#"><img src="../cake-main/img/icon/heart.png" alt=""></a>
        </div>
        <div class="offcanvas__cart__item">
            <a href="#"><img src="../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="cart__price">Cart: <span>$0.00</span></div>
        </div>
    </div>
    <div class="offcanvas__logo">
        <%--        <a href="home"><img src="../cake-main/img/logo.png" alt=""></a>--%>
        <a href="home"><img src="../img/logoSB.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__option">
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
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner" >

                        <div class="header__logo">
                            <a href=""><img src="../../cake-main/img/logomw7.png" style="height:110px; weight:60px;" alt=""></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links header__top__right__cart" >
                                <a href="/signUp" class="register" style="color: black; margin-left:50px">Register</a>
                                <a href="/signIn" class="signIn" style="color: black; margin-left:50px">SignIn</a>
                                <a href="/shoppingCartNew" class="cart-icon" style="margin-left:50px;"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                            </div><br>
                            <%--                            <div class="header__top__right__cart" style="float: right;margin-right:20px;">--%>
                            <%--                                <a href="/shoppingCartNew" class="cart-icon" ><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>--%>
                            <%--                            </div>--%>
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
                        <li><a href="about.html">About</a></li>
                        <li class="active"><a href="shop.html">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="shop-details.html">Shop Details</a></li>
                                <li><a href="shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="./delivery">Check Out</a></li>
                                <li><a href="wisslist.html">Wisslist</a></li>
                                <li><a href="./Class.html">Class</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="contact.html">Contact</a></li>
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
                    <h2>Custom Design</h2>
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
        <div class="shop__option">
            <div class="row">
                <div class="col-lg-7 col-md-7">
                    <div class="shop__option__search">
                        <form action="#">
                            <select onchange="javascript:handleSelect(this)">
                                <option value="">Categories</option>
                                <option value="/shop">All Cakes</option>
                                <option value="/home">Cupcakes</option>
                                <option value="/customDesign">Custom Design</option>
                            </select>
                            <script type="text/javascript">
                                function handleSelect(elm)
                                {
                                    window.location = elm.value;
                                }
                            </script>
                            <input type="text" placeholder="Search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <div class="checkout__form">
        <form method="post" action="saveCustomDesign">
            <input  type="text" style="width: 100%;display: none" id="valuesAll" name="dataValueCustomDes">
            <p style="display: none;">${loggerId.onlineCustomerId}</p>

            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <h6 class="checkout__title">Custom Design</h6>
                    <input class="form-control" name="customDesignId" value="0" id="customDesignId" type="hidden">


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="checkout__input">
                                <p>Name<span>*</span></p>
                                <input type="text" class="form-control"
                                        name="cusDesName"
                                       id="cusDesName" placeholder="First Name"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Phone<span>*</span></p>
                                <input type="tel" class="form-control"
                                       pattern="[0-9]{10}" oninvalid="setCustomValidity('Please enter a valid phone number!')"
                                       name="cusDescontact"
                                       id="cusDescontact" placeholder="Mobile No"/>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Email<span>*</span></p>
                                <input type="email" class="form-control" name="cusDesemail"
                                       id="cusDesemail" placeholder="Email"/>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                    <div class="checkout__input">
                        <p>Cake Type<span>*</span></p>
                        <select  name="cusDescakeType"
                                id="cusDescakeType" class="checkout__input__add">
                            <option value="1">Choose Type</option>
                            <option value="Wedding">Wedding</option>
                            <option value="Birthday">Birthday</option>
                            <option value="Anniversary">Anniversary</option>
                        </select>
                    </div>
                        </div>
                        <div class="col-lg-6">
                    <div class="checkout__input">
                        <p>Cake Size<span>*</span></p>
                        <select  name="cusDescakeSize"
                                id="cusDescakeSize" class="checkout__input__add">
                            <option value="1">Choose Type</option>
                            <option value="500g">500g</option>
                            <option value="1kg">1kg</option>
                            <option value="1.5kg">1.5kg</option>
                            <option value="2kg">2kg</option>
                        </select>
                    </div>
                        </div>
                    </div>
<br>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Image<span>*</span></p>
                                <input type="file" name="cusDesimage" class="form-control"
                                       id="cusDesimage" onchange="encodeImgtoBase64(this)"/>
                                <br>
                                <p id="imgtag"></p>
                                <img src="" alt="design preview" id="displayImg" width="90">

                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="checkout__input">
                                <p>Notes<span>*</span></p>
                               <input type="text"  id="cusDesdes"  name="cusDesdes" height="10px;"/>
                            </div>
                        </div>
                        </div>


                    <div class="row">
                        <div class="col-lg-6">
                            <button type="submit" class="site-btn" onclick="getAllDetails()">Submit</button>
                        </div>
                    </div>
            </div>
            </div>
</form>
</div>
    </div>
</section>
<!-- Footer Section Begin -->
<footer class="footer set-bg" data-setbg="../../cake-main/img/footer-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>WORKING HOURS</h6>
                    <ul>
                        <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                        <li>Saturday: 10:00 am – 16:30 pm</li>
                        <li>Sunday: 10:00 am – 16:30 pm</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="../../cake-main/img/footerlogo2.png" alt=""></a>
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
<script src="../../cake-main/js/jquery-3.3.1.min.js"></script>
<script src="../../cake-main/js/bootstrap.min.js"></script>
<script src="../../cake-main/js/jquery.nice-select.min.js"></script>
<script src="../../cake-main/js/jquery.barfiller.js"></script>
<script src="../../cake-main/js/jquery.magnific-popup.min.js"></script>
<script src="../../cake-main/js/jquery.slicknav.js"></script>
<script src="../../cake-main/js/owl.carousel.min.js"></script>
<script src="../../cake-main/js/jquery.nicescroll.min.js"></script>
<script src="../../cake-main/js/main.js"></script>


<script src="../../js/cartNew.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</body>
</html>
