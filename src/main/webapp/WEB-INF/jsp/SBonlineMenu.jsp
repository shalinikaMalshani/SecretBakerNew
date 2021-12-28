<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/1/2021
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secret Baker|Online Menu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<%--    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>--%>
</head>
<body>
<div class="container"><%--    content start--%>
    <button class="cart-icon"><a href="/shoppingCart">Cart</a><span style="padding-left: 3px;">0</span></button>
    <div class="row"><%--    row start--%>

        <div class="col-12 col-lg-3" ><%--      right side of the content start--%>
            <h1 class="text-center">Our Online Menu</h1>

            <div class="category">
                <ul>
                    <li><a href="/foodItemsCakes">All Cakes</a></li>
                    <li><a href="/foodItemsCupcakes">CupCakes</a></li>
                    <li><a href="">Custom designs</a></li>
                    <li><a href="">Birthday Cakes</a></li>
                    <li><a href="">Wedding/Anniversary</a></li>
                </ul>
            </div>

        </div><%--      right side of the content end--%>

        <div class="col-12 col-lg-9 " ><%--      left side of the content start--%>
            <div class="container mt-3">
                <div class="row">
<%--                    <c:forEach items="${AllFoodItems}" var="e">--%>
                        <div class="col-12 col-md-6 col-lg-4 col-xl-3">
                            <div class="product"><%--product start--%>

                                <div class="product-card"><%-- product card start--%>

                                    <div class="product-thumb-img">
                                        <img src="../../img/Lavatag.jpg" alt="" class="mx-auto d-block img-fluid">
                                        <div class="quickView-title">Quick View</div>
                                        <div class="product-thumb-title">
<%--                                            <input type="text" readonly value="Lava Cake" style="border: none;width:100%;font-size:29px;text-align: center;font-weight:600;margin-top: 0;"><a href="#" class="thum-title"></a>--%>
                                            <h3 class="text-center"><a href="#" class="thum-title">Lava Cake</a></h3>
                                            <h3 class="text-center"><span>1kg</span></h3>
                                            <h3 class="detail-price" style="text-align: center"><a href="#" class="det-price">Details and Price</a></h3>
                                            <a  href="#" class="add-cart cart1">Add To Cart</a>

                                        </div>
                                    </div>
                                </div><%--product card end--%>
                            </div>
                        </div>
    <div class="col-12 col-md-6 col-lg-4 col-xl-3">

        <div class="product"><%--product start--%>

            <div class="product-card"><%-- product card start--%>

                <div class="product-thumb-img">
                    <img src="../../img/Cupcaketag.jpg" alt="" class="mx-auto d-block img-fluid">
                    <div class="quickView-title">Quick View</div>
                    <div class="product-thumb-title">
                        <h3 class="text-center"><a href="#" class="thum-title">Cupcake</a></h3>
                        <h3 class="text-center"><span>Box</span></h3>
                        <h3 class="detail-price" style="text-align: center"><a href="#" class="det-price">Details and Price</a></h3>
                        <a  href="#" class="add-cart cart2">Add To Cart</a>

                    </div>
                </div>
            </div><%--product card end--%>
        </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4 col-xl-3">

        <div class="product"><%--product start--%>

            <div class="product-card"><%-- product card start--%>

                <div class="product-thumb-img">
                    <img src="../../img/Orangetag.jpg" alt="" class="mx-auto d-block img-fluid">
                    <div class="quickView-title">Quick View</div>
                    <div class="product-thumb-title">
                        <h3 class="text-center"><a href="#" class="thum-title">Orange</a></h3>
                        <h3 class="text-center"><span>1kg</span></h3>
                        <h3 class="detail-price" style="text-align: center"><a href="#" class="det-price">Details and Price</a></h3>
                        <a  href="#" class="add-cart cart3">Add To Cart</a>

                    </div>
                </div>
            </div><%--product card end--%>
        </div>
    </div>
                                <div class="popup-view"><%--product popup start--%>

                                    <div class="popup-card">
                                        <a><i class="fas fa-times close-btn"></i></a>
                                        <div class="product-img">
                                            <img src="../../img/Lavatag.jpg" alt="">
                                        </div>
                                        <div class="info">
                                            <h2>Lava Cake</h2>
                                            <p >kkkj mmn mmmn n nnn nbb bbb bbb bbb
                                            </p>
                                                <%--                                            <p>Includes:</p>--%>
                                                <%--                                            <ul>--%>
                                                <%--                                                <li>${e.ingredients}</li>--%>
                                                <%--&lt;%&ndash;                                                <li>  5 x Assorted Fruit Tartlets (small)</li>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;                                                <li>  5 x Coffee Cream Buns</li>&ndash;%&gt;--%>
                                                <%--                                            </ul>--%>
                                            <span class="price">2000</span>
                                            <a href="#" class="goToProduct-btn">Go to Product page</a>
                                        </div>
                                    </div>
                                </div><%--product popup end--%>

    <div class="popup-view"><%--product popup start--%>

        <div class="popup-card">
            <a><i class="fas fa-times close-btn"></i></a>
            <div class="product-img">
                <img src="../../img/Cupcaketag.jpg" alt="">
            </div>
            <div class="info">
                <h2>Cupcake</h2>
                <p >mmmn nnnm mmm mmm nnn bbb vvv
                </p>
                <%--                                            <p>Includes:</p>--%>
                <%--                                            <ul>--%>
                <%--                                                <li>${e.ingredients}</li>--%>
                <%--&lt;%&ndash;                                                <li>  5 x Assorted Fruit Tartlets (small)</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;                                                <li>  5 x Coffee Cream Buns</li>&ndash;%&gt;--%>
                <%--                                            </ul>--%>
                <span class="price">3000</span>
                <a href="#" class="goToProduct-btn">Go to Product page</a>
            </div>
        </div>
    </div><%--product popup end--%>

    <div class="popup-view"><%--product popup start--%>

        <div class="popup-card">
            <a><i class="fas fa-times close-btn"></i></a>
            <div class="product-img">
                <img src="../../img/Orangetag.jpg" alt="">
            </div>
            <div class="info">
                <h2>Orange</h2>
                <p >mmj nnj nnh bbbg vvf ddf vvvgb
                </p>
                <%--                                            <p>Includes:</p>--%>
                <%--                                            <ul>--%>
                <%--                                                <li>${e.ingredients}</li>--%>
                <%--&lt;%&ndash;                                                <li>  5 x Assorted Fruit Tartlets (small)</li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;                                                <li>  5 x Coffee Cream Buns</li>&ndash;%&gt;--%>
                <%--                                            </ul>--%>
                <span class="price">5000</span>
                <a href="#" class="goToProduct-btn">Go to Product page</a>
            </div>
        </div>
    </div><%--product popup end--%>

<%--                            </div>&lt;%&ndash;product end&ndash;%&gt;--%>

                        </div>
<%--                    </c:forEach>--%>
                </div>
            </div>
        </div><%--      left side of the content end--%>
    </div><%--    row end--%>

</div><%--    content end--%>


<%--js for popup--%>
<script type="text/javascript">
    var popupViews = document.querySelectorAll('.popup-view');
    var popupBtns = document.querySelectorAll('.quickView-title');
    var closeBtns = document.querySelectorAll('.close-btn');

    //javascript for quick view button
    var popup = function(popupClick){
        popupViews[popupClick].classList.add('active');
    }

    popupBtns.forEach((popupBtn, i) => {
        popupBtn.addEventListener("click", () => {
            popup(i);
        });
    });

    //javascript for close button
    closeBtns.forEach((closeBtn) => {
        closeBtn.addEventListener("click", () => {
            popupViews.forEach((popupView) => {
                popupView.classList.remove('active');
            });
        });
    });
</script>

<%--<script>--%>
<%--    var carts = document.querySelectorAll(".add-cart"), i;--%>

<%--    let product=[--%>
<%--        {--%>
<%--            name:'Cupcake1',--%>
<%--            tag:'Cupcake',--%>
<%--            price:12,--%>
<%--            inCart:0--%>
<%--        },--%>
<%--        {--%>
<%--            name:'Cupcake2',--%>
<%--            tag:'Cupcake',--%>
<%--            price:12,--%>
<%--            inCart:0--%>
<%--        },--%>
<%--        {--%>
<%--            name:'Cupcake3',--%>
<%--            tag:'Cupcake',--%>
<%--            price:12,--%>
<%--            inCart:0--%>
<%--        },--%>
<%--        {--%>
<%--            name:'Cupcake4',--%>
<%--            tag:'Cupcake',--%>
<%--            price:12,--%>
<%--            inCart:0--%>
<%--        }--%>
<%--    ]--%>

<%--    for (i = 0; i <carts.length; ++i) {--%>
<%--        carts[i].addEventListener('click',()=>{--%>
<%--            cartNo();--%>
<%--        })--%>
<%--    }--%>

<%--    function cartNo() {--%>

<%--        var productNumbers=localStorage.getItem('cartNo');--%>
<%--        var cart = JSON.parse(productNumbers);--%>
<%--        //cart.products.push(product);--%>
<%--        //productNumbers++;--%>
<%--        productNumbers = parseInt('productNumbers');//convert productNumber string into int--%>
<%--        //console.log(productNumbers);--%>
<%--        if (productNumbers) {--%>
<%--            localStorage.setItem('cartNo', cart+1);--%>
<%--           }else {--%>
<%--            localStorage.setItem('cartNo', 1);--%>
<%--            }--%>
<%--        }--%>

<%--</script>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
<%--<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>--%>
<script src="../../js/cart.js"></script>
<%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>--%>
</body>
</html>
