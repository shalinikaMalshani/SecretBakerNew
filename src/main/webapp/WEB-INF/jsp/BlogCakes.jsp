<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2/10/2022
  Time: 9:22 PM
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
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../../css/blog.css" type="text/css">
    <link rel="stylesheet" href="../../css/home.css" type="text/css">

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
        <a href="home"><img src="../../cake-main/img/logo.png" alt=""></a>
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
                            <a href=""><img src="../../cake-main/img/logo.png" alt=""></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links">
                                <a href="/signUp" class="register">Register</a>
                                <a href="/signIn" class="signIn">SignIn</a>
                            </div><br>
                            <div class="header__top__right__cart" style="float: right;margin-right:20px;">
                                <a href="/shoppingCartNew" class="cart-icon"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                            </div>
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
                        <li ><a href="/home">Home</a></li>
                        <li><a href="../cake-main/about.html">About</a></li>
                        <li><a href="/shop">Shop</a></li>
                        <li class="active"><a href="/blog">Blog</a></li>
                        <li><a href="../cake-main/contact.html">Contact</a></li>
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
                    <h2>Blog</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="index.html">Home</a>
                    <span>Blog</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
<section class="shop spad">
    <div class="container">
        <center>
            <div class="row">
                <div class="col-12">
                    <button class="button-top"><a href="/blog_cakes">Cakes</a></button>
                    <button class="button-top"><a href="/blog_birthdaycakes">Birthday</a></button>
                    <button class="button-top"><a href="/blog_annicakes">Annivarsary</a></button>
                    <button class="button-top"><a href="/blog_seasoncakes">Seasonal Special</a></button>
                    <button class="button-top"><a href="/blog_cupcakes">Cupcake</a></button>
                </div>
            </div>
        </center><br><br>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog2.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog8.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog8new.jpg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog12.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog14.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog15.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog19.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog22.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog24.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog26.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="../../img/blog/blog61.jpeg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">butter icing </a></h6>
                        <h6><a href="#">butter icing </a></h6>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- Shop Section End -->

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


</body>
</html>
