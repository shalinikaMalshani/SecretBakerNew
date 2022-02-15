<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/14/2022
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Secret Baker | Home</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://patskailua.com/font-email/font/flaticon.css" rel="stylesheet">
    <link rel="stylesheet" href="../../css/home.css" type="text/css">

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
<script>
    localStorage.clear();
</script>
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
                        <li class="active"><a href="home">Home</a></li>
                        <li><a href="/about">About</a></li>
                        <li><a href="/shop">Shop</a></li>
                        <li><a href="/blog_cakes">Blog</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero">
    <div class="hero__slider owl-carousel">
        <div class="hero__item set-bg" data-setbg="../../cake-main/img/1home.jpg">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="hero__text">
                            <h2>Making your life sweeter one bite at a time!</h2>
                            <a href="#" class="primary-btn">Our cakes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__item set-bg" data-setbg="../../cake-main/img/home3.jpg">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="hero__text">
                            <h2>Making your life sweeter one bite at a time!</h2>
                            <a href="#" class="primary-btn">Our cakes</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->



<!-- Categories Section Begin -->
<div class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">
                        <h5>Cupcake</h5>
                    </div>
                </div>
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">

                        <h5>Butter</h5>
                    </div>
                </div>
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">

                        <h5>Red Velvet</h5>
                    </div>
                </div>
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">

                        <h5>Biscuit</h5>
                    </div>
                </div>
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">

                        <h5>Donut</h5>
                    </div>
                </div>
                <div class="categories__item">
                    <div class="categories__item__icon">
                        <img style="border-radius: 50%;" src="../../img/cupcake.jpg" alt="" height="170">

                        <h5>Cupcake</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Categories Section End -->



<!-- Instagram Section Begin -->
<section class="instagram spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 p-0">
                <div class="instagram__text">
                    <div class="section-title">
                        <span>Follow us on facebook</span>
                        <h2>Sweet moments are saved as memories.</h2>
                    </div>
                    <h5><i class="fa fa-facebook"></i> @secretbaker</h5>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="../../cake-main/img/instagram/instagram-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic middle__pic">
                            <img src="../cake-main/img/instagram/instagram-2.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="../cake-main/img/instagram/instagram-3.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="../cake-main/img/instagram/instagram-4.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic middle__pic">
                            <img src="../cake-main/img/instagram/instagram-5.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                        <div class="instagram__pic">
                            <img src="../cake-main/img/instagram/instagram-3.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Instagram Section End -->


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



</body>



</html>
