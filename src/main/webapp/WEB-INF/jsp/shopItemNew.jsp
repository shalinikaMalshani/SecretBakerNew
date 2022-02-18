<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/28/2022
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    custom--%>
    <%--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
    <%--    <link rel="stylesheet" href="../../css/SBonlineMenu.css">--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="../../css/shopItem.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>


    <%--    templete--%>
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
    <link rel="stylesheet" href="../../css/shop.css">
    <link rel="stylesheet" href="../../css/home.css">

    <link rel="stylesheet" href="../../cake-main/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../cake-main/css/style.css" type="text/css">
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
                    <h2>Product detail</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="/home">Home</a>
                    <a href="/shop">Shop</a>
                    <span>${foodItem.foodName}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shop Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="product__details__img">
                    <div class="product__details__big__img">
                        <img class="big_img" src="${foodItem.src}" alt="">
                    </div>
                    <div class="product__details__thumb">
                        <div class="pt__item active">
                            <img data-imgbigurl="img/shop/details/product-big-2.jpg"
                                 src="${foodItem.src}" alt="">
                        </div>
                        <div class="pt__item">
                            <img data-imgbigurl="img/shop/details/product-big-1.jpg"
                                 src="${foodItem.src}" alt="">
                        </div>
                        <div class="pt__item">
                            <img data-imgbigurl="img/shop/details/product-big-4.jpg"
                                 src="${foodItem.src}" alt="">
                        </div>
                        <div class="pt__item">
                            <img data-imgbigurl="img/shop/details/product-big-3.jpg"
                                 src="${foodItem.src}" alt="">
                        </div>
                        <div class="pt__item">
                            <img data-imgbigurl="img/shop/details/product-big-5.jpg"
                                 src="${foodItem.src}" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="product__details__text">
                    <div class="product__label">${foodItem.category}</div>
                    <h4>${foodItem.foodName}</h4>
                    <h5>Rs:${foodItem.price}.00</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore
                        et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida</p>
                    <p>${foodItem.l_description}</p>
                    <ul>
                        <li>Size: <span>${foodItem.s_description}</span></li>
                        <li>Category: <span>${foodItem.category}</span></li>
                    </ul>
                    <div class="product__details__option">
                        <a href="/shop" class="primary-btn">Continue Shopping</a>

                    </div>
                </div>
            </div>
        </div>
<%--        <div class="product__details__tab">--%>
<%--            <div class="col-lg-12">--%>
<%--                <ul class="nav nav-tabs" role="tablist">--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Description</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Additional information</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">Previews(1)</a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <div class="tab-content">--%>
<%--                    <div class="tab-pane active" id="tabs-1" role="tabpanel">--%>
<%--                        <div class="row d-flex justify-content-center">--%>
<%--                            <div class="col-lg-8">--%>
<%--                                <p>This delectable Strawberry Pie is an extraordinary treat filled with sweet and--%>
<%--                                    tasty chunks of delicious strawberries. Made with the freshest ingredients, one--%>
<%--                                    bite will send you to summertime. Each gift arrives in an elegant gift box and--%>
<%--                                    arrives with a greeting card of your choice that you can personalize online!</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="tab-pane" id="tabs-2" role="tabpanel">--%>
<%--                        <div class="row d-flex justify-content-center">--%>
<%--                            <div class="col-lg-8">--%>
<%--                                <p>This delectable Strawberry Pie is an extraordinary treat filled with sweet and--%>
<%--                                    tasty chunks of delicious strawberries. Made with the freshest ingredients, one--%>
<%--                                    bite will send you to summertime. Each gift arrives in an elegant gift box and--%>
<%--                                    arrives with a greeting card of your choice that you can personalize online!2--%>
<%--                                </p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="tab-pane" id="tabs-3" role="tabpanel">--%>
<%--                        <div class="row d-flex justify-content-center">--%>
<%--                            <div class="col-lg-8">--%>
<%--                                <p>This delectable Strawberry Pie is an extraordinary treat filled with sweet and--%>
<%--                                    tasty chunks of delicious strawberries. Made with the freshest ingredients, one--%>
<%--                                    bite will send you to summertime. Each gift arrives in an elegant gift box and--%>
<%--                                    arrives with a greeting card of your choice that you can personalize online!3--%>
<%--                                </p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- Shop Details Section End -->

<!-- Related Products Section Begin -->
<section class="related-products spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2>Related Products</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="related__products__slider owl-carousel">
                <c:forEach items="${AllFoodItemsss}" var="e">
                <span style="display: none">${e.itemId}</span>
                <div class="col-lg-3">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${e.src}">
                            <div class="product__label">
                                <span>${e.category}</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="">${e.foodName}</a></h6>
                            <div class="product__item__price">Rs:${e.price}.00</div>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
                        </div>
                    </div>

                </div>
                </c:forEach>

<%--                <div class="col-lg-3">--%>
<%--                    <div class="product__item">--%>
<%--                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-2.jpg">--%>
<%--                            <div class="product__label">--%>
<%--                                <span>Cupcake</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__item__text">--%>
<%--                            <h6><a href="#">Cookies and Cream</a></h6>--%>
<%--                            <div class="product__item__price">$30.00</div>--%>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3">--%>
<%--                    <div class="product__item">--%>
<%--                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-3.jpg">--%>
<%--                            <div class="product__label">--%>
<%--                                <span>Cupcake</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__item__text">--%>
<%--                            <h6><a href="#">Gluten Free Mini Dozen</a></h6>--%>
<%--                            <div class="product__item__price">$31.00</div>--%>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3">--%>
<%--                    <div class="product__item">--%>
<%--                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-4.jpg">--%>
<%--                            <div class="product__label">--%>
<%--                                <span>Cupcake</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__item__text">--%>
<%--                            <h6><a href="#">Cookie Dough</a></h6>--%>
<%--                            <div class="product__item__price">$25.00</div>--%>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3">--%>
<%--                    <div class="product__item">--%>
<%--                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-5.jpg">--%>
<%--                            <div class="product__label">--%>
<%--                                <span>Cupcake</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__item__text">--%>
<%--                            <h6><a href="#">Vanilla Salted Caramel</a></h6>--%>
<%--                            <div class="product__item__price">$05.00</div>--%>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-3">--%>
<%--                    <div class="product__item">--%>
<%--                        <div class="product__item__pic set-bg" data-setbg="img/shop/product-6.jpg">--%>
<%--                            <div class="product__label">--%>
<%--                                <span>Cupcake</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="product__item__text">--%>
<%--                            <h6><a href="#">German Chocolate</a></h6>--%>
<%--                            <div class="product__item__price">$14.00</div>--%>
<%--                            <div class="cart_add">--%>
<%--                                <a href="#">Add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>

        </div>
    </div>
</section>
<!-- Related Products Section End -->

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
                        <a href="#"><img src="../../cake-main/img/footer-logo.png" alt=""></a>
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
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__newslatter">
                    <h6>Subscribe</h6>
                    <p>Get latest updates and offers.</p>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit"><i class="fa fa-send-o"></i></button>
                    </form>
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
<script src="../../js/cartNew.js"></script>


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

</body>
</html>
