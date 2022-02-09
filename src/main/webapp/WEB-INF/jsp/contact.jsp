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
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
        <div class="offcanvas__cart__links">
            <a href="#" class="search-switch"><img src="../../cake-main/img/icon/search.png" alt=""></a>
            <a href="#"><img src="../../cake-main/img/icon/heart.png" alt=""></a>
        </div>
        <div class="offcanvas__cart__item">
            <a href="#"><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="cart__price">Cart: <span>$0.00</span></div>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="home"><img src="../../cake-main/img/logo.png" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
<%--    <div class="offcanvas__option">--%>
<%--        <ul>--%>
<%--            <li>USD <span class="arrow_carrot-down"></span>--%>
<%--                <ul>--%>
<%--                    <li>EUR</li>--%>
<%--                    <li>USD</li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li>ENG <span class="arrow_carrot-down"></span>--%>
<%--                <ul>--%>
<%--                    <li>Spanish</li>--%>
<%--                    <li>ENG</li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__top__inner">
<%--                        <div class="header__top__left">--%>
<%--                            <ul>--%>
<%--                                <li>USD <span class="arrow_carrot-down"></span>--%>
<%--                                    <ul>--%>
<%--                                        <li>EUR</li>--%>
<%--                                        <li>USD</li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <li>ENG <span class="arrow_carrot-down"></span>--%>
<%--                                    <ul>--%>
<%--                                        <li>Spanish</li>--%>
<%--                                        <li>ENG</li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
                        <div class="header__logo">
                            <a href="home"><img src="../../cake-main/img/logo.png" alt=""></a>
                        </div>
                        <div class="header__top__right">
                            <div class="header__top__right__links">
                                <a href="/signUp" class="register" style="color: black">Register</a>
                                <a href="/signIn" class="signIn" style="color: black">SignIn</a>
                            </div><br>
                            <div class="header__top__right__cart" style="float: right;margin-right:20px;">
                                <a href="/shoppingCartNew" class="cart-icon" ><img src="../../cake-main/img/icon/cart.png" alt=""> <span>0</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li><a href="home">Home</a></li>
                        <li><a href="about">About</a></li>
                        <li><a href="shop">Shop</a></li>
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
                        <li class="active"><a href="./contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Contact Section Begin -->
<section class="contact spad">
    <div class="container">
        <div class="map">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-4 col-md-7">
                        <div class="map__inner">
                            <h6>Secret Baker</h6>
                            <ul>
                                <li>No 12,Green view garden,Green view garden,Kotagedara Road,Piliyandala.</li>
                                <li>secretbaker123@gmail.com</li>
                                <li>+1 800-786-1000</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="map__iframe">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.7513406552903!2d79.92193491379787!3d6.800077021775116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae24ff6ba97f809%3A0x884f202638db7b6e!2sPrasad%20Textiles!5e0!3m2!1sen!2slk!4v1644326385196!5m2!1sen!2slk" width="800" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        <div class="contact__address">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="contact__address__item">
                        <h6>san bernardino</h6>
                        <ul>
                            <li>
                                <span class="icon_pin_alt"></span>
                                <p>795 W 5th St, San Bernardino, CA 92410, USA</p>
                            </li>
                            <li><span class="icon_headphones"></span>
                                <p>+1 800-786-1000</p>
                            </li>
                            <li><span class="icon_mail_alt"></span>
                                <p>Sweetcake@support.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="contact__address__item">
                        <h6>Los angeles</h6>
                        <ul>
                            <li>
                                <span class="icon_pin_alt"></span>
                                <p>639 S Spring St, Los Angeles, CA 90014, USA</p>
                            </li>
                            <li><span class="icon_headphones"></span>
                                <p>+1 213-612-3000</p>
                            </li>
                            <li><span class="icon_mail_alt"></span>
                                <p>Sweetcake@support.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="contact__address__item">
                        <h6>san bernardino</h6>
                        <ul>
                            <li>
                                <span class="icon_pin_alt"></span>
                                <p>1000 Lakepoint Dr, Frisco, CO 80443, USA</p>
                            </li>
                            <li><span class="icon_headphones"></span>
                                <p>+1 800-786-1000</p>
                            </li>
                            <li><span class="icon_mail_alt"></span>
                                <p>Sweetcake@support.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="contact__text">
                    <h3>Contact With us</h3>
                    <ul>
                        <li>Representatives or Advisors are available:</li>
                        <li>Mon-Fri: 5:00am to 9:00pm</li>
                        <li>Sat-Sun: 6:00am to 9:00pm</li>
                    </ul>
                    <img src="../../cake-main/img/cake-piece.png" alt="">
                </div>
            </div>
            <div class="col-lg-8">
                <div class="contact__form">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Name">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Email">
                            </div>
                            <div class="col-lg-12">
                                <textarea placeholder="Message"></textarea>
                                <button type="submit" class="site-btn">Send Us</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

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
                        <li>Green view garden,</li>
                        <li>Kotagedara Road,</li>
                        <li>Piliyandala.</li>
                    </ul>
                    <br>
                    <H6>EMAIL</H6>
                    <ul>
                        <li>secretbaker123@gmail.com</li>
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