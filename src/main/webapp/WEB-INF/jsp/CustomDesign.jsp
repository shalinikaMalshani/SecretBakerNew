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
                            <%--                            <a href="home"><img src="../cake-main/img/logo.png" alt=""></a>--%>
                            <a href="home"><img src="../img/logoSB.png" alt="" style="width: 120px; height: 68px;"></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links">
                                <a href="#" class="search-switch"><img src="../cake-main/img/icon/search.png" alt=""></a>
                                <a href="#"><img src="../cake-main/img/icon/heart.png" alt=""></a>
                            </div>
                            <div class="header__top__right__cart">
                                <a href="#"><img src="../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                                <div class="cart__price">Cart: <span>$0.00</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa"><img src="../img/toggle.png" style="margin-bottom: 8px;"></i></div>



            <%--                        <div class="canvas__open"><i class="zmdi zmdi-mail-reply material-icons-name"></i></div>--%>
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
        <div class="checkout__form">
        <form method="post" action="saveCustomDesign">
            <input  type="text" style="width: 100%;display: none" id="valuesAll" name="dataValueCustomDes">
            <p style="display: none;">${loggerId.onlineCustomerId}</p>

            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <h6 class="checkout__title">Custom Design</h6>
                    <input class="form-control" name="customDesignId" value="0" id="customDesignId" type="hidden">


                    <div class="row">
                        <div class="col-lg-6">
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
                                       id="cusDesimage" />
                            </div>
                        </div>
                    </div>
                        <div class="row">
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

<script src="../../js/cartNew.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script src="../cake-main/js/jquery-3.3.1.min.js"></script>
<script src="../cake-main/js/bootstrap.min.js"></script>
<script src="../cake-main/js/jquery.nice-select.min.js"></script>
<script src="../cake-main/js/jquery.barfiller.js"></script>
<script src="../cake-main/js/jquery.magnific-popup.min.js"></script>
<script src="../cake-main/js/jquery.slicknav.js"></script>
<script src="../cake-main/js/owl.carousel.min.js"></script>
<script src="../cake-main/js/jquery.nicescroll.min.js"></script>
<script src="../cake-main/js/main.js"></script>
</body>
</html>
