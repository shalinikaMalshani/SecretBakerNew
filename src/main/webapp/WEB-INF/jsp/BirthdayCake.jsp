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

    <link rel="stylesheet" href="../../css/shop.css">
    <link rel="stylesheet" href="../../css/home.css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

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

    <style>
        div.background{
            background-image: url('../../cake-main/img/birthCake8.jpg');
            background-repeat: no-repeat;
        }
        .background.image{
            height: 500px;
            weight:100%;
        }

    </style>

</head>
<body>
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
                        <li class="/home"><a href="home">Home</a></li>
                        <li><a href="/about">About</a></li>
                        <li class="active"><a href="/shop">Shop</a></li>
                        <li><a href="/blog">Blog</a></li>
                        <li><a href="/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<div class="container">
    <div class="shop__option" style="margin-top:50px;">
        <div class="row">
            <div class="col-lg-7 col-md-7">
                <div class="shop__option__search">
                    <form action="#">
                        <select onchange="javascript:handleSelect(this)">
                            <option value="">Categories</option>
                            <option value="/shop">All Cakes</option>
                            <option value="/cake">Cake</option>
                            <option value="/home">Cupcake</option>
                            <option value="/birthdayCake">Birthday Cake</option>
                            <option value="/weddingCake">Wedding Cake</option>
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
</div>


<section class="signup">
    <div class="container2" style="margin-top: -50px; width:100%;">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text" style="margin-left: 10px;margin-top: 10px;">
                    <br>
                    <h2 style="font-size:40px;">Birthday Cake</h2>
                    <br>
                </div>
                <div class="signup-form">
                    <div class="background image" style="height:400px; width:100%; margin-left:-15px;  margin-bottom: 40px;">
                        <div class="container" style="height:300px; opacity:0.7; width: 100%;">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <div  style="color: #0b0b0b; background: white; height: 300px; margin-top: 30px; width: 100%;" >
                                        <h3 style="color: #0b0b0b; opacity:1; padding-top: 30px;
                                                     padding-left: 30px; padding-right:30px; text-orientation: mixed; font-family: SimSun;">
                                            If You Want to Delicious Your Birthday, Join With Us...</h3>
                                        <button type="submit" value="/customDesign"
                                                style="margin-left: 200px; margin-top:60px; height: 60px; width: 250px;">
                                            <a href="/customDesign" style="color: #0b0b0b;"><h5 style="color: #0b0b0b;"><b>submit Your Order</b></h5></a></button>
                                    </div>
                                </div>
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
<%--<script src="../../js/cartNew.js"></script>--%>

<!-- JS -->
<script src="../../signupTemp/vendor/jquery/jquery.min.js"></script>
<script src="../../signupTemp/js/main.js"></script>





</body>
</html>
