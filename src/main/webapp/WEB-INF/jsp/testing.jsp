<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/1/2021
  Time: 12:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Secret Baker</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../../css/quickView.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/testing.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12 col-lg-3" ><%--      right side of the page start--%>
            <h1 class="text-center">Our Online Menu</h1>

            <div class="category">
                <ul>
                    <li><a href="">All Cakes</a></li>
                    <li><a href="">CupCakes</a></li>
                    <li><a href="">Custom designs</a></li>
                    <li><a href="">Birthday Cakes</a></li>
                    <li><a href="">Wedding/Anniversary</a></li>
                </ul>
            </div>




        </div><%--      right side of the page end--%>

        <div class="col-12 col-lg-9 " ><%--      left side of the page start--%>
            <div class="container mt-3">
                <div class="row">
<c:forEach items="${AllFoodItems}" var="e">
                    <div class="col-12 col-md-6 col-lg-4 col-xl-3">
        <div class="product">

        <div class="product-thumb">
            <div class="product-thumb-img">
            <img src="../../img/Cupcaketag.jpg" alt="" class="mx-auto d-block img-fluid">
            <div class="quickView-title">Quick View</div>
                <div class="product-thumb-title">
                    <h3 class="text-center"><a href="/foodItem/${e.foodId}" class="thum-title">${e.foodName}</a></h3>
                    <h3 class="text-center"><span>${e.s_description}</span></h3>
                    <h3 class="detail-price" style="text-align: center"><a href="/foodItem/${e.foodId}" class="det-price">Details and Price</a></h3>
                </div>
            </div>
        </div>

        <div class="popup-view">
            <div class="popup-card">
                <a><i class="fas fa-times close-btn"></i></a>
                <div class="product-img">
                    <img src="../../img/Cupcaketag.jpg" alt="">
                </div>
                <div class="info">
                    <h2>${e.foodName}</h2>
                    <p >${e.l_description}
                    </p>
                    <p>Includes:</p>
                    <ul>
                        <li> 5 x Chocolate Eclairs (small)</li>
                        <li>  5 x Assorted Fruit Tartlets (small)</li>
                        <li>  5 x Coffee Cream Buns</li>
                        </ul>
                    <span class="price">${e.price}</span>
                    <a href="#" class="add-cart-btn">Go to Product page</a>
                </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<%--                    <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                        <div class="product">--%>

<%--                            <div class="product-thumb">--%>
<%--                                <div class="product-thumb-img">--%>
<%--                                    <img src="../../img/Cupcaketag.jpg"  alt="" class="mx-auto d-block img-fluid">--%>
<%--                                    <div class="quickView-title">Quick View</div>--%>
<%--                                    <div class="product-thumb-title">--%>
<%--                                        <h3 class="text-center"><a href="" class="thum-title">CupCake</a></h3>--%>
<%--                                        <h3 class="text-center"><span>1kg</span></h3>--%>
<%--                                        <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="popup-view">--%>
<%--                                <div class="popup-card">--%>
<%--                                    <a><i class="fas fa-times close-btn"></i></a>--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="../../img/Cupcaketag.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="info">--%>
<%--                                        <h2>CupCake</h2>--%>
<%--                                        <p >A delicious assortment of sweet treatsto satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.--%>
<%--                                        </p>--%>
<%--                                        <p>Includes:</p>--%>
<%--                                        <ul>--%>
<%--                                            <li> 5 x Chocolate Eclairs (small)</li>--%>
<%--                                            <li>  5 x Assorted Fruit Tartlets (small)</li>--%>
<%--                                            <li>  5 x Coffee Cream Buns</li>--%>
<%--                                        </ul>--%>
<%--                                        <span class="price">$120.00</span>--%>
<%--                                        <a href="#" class="add-cart-btn">Go to Product page</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                        <div class="product">--%>

<%--                            <div class="product-thumb">--%>
<%--                                <div class="product-thumb-img">--%>
<%--                                    <img src="../../img/Cupcaketag.jpg"  alt="" class="mx-auto d-block img-fluid">--%>
<%--                                    <div class="quickView-title">Quick View</div>--%>
<%--                                    <div class="product-thumb-title">--%>
<%--                                        <h3 class="text-center"><a href="" class="thum-title">Orange Cake</a></h3>--%>
<%--                                        <h3 class="text-center"><span>1kg</span></h3>--%>
<%--                                        <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="popup-view">--%>
<%--                                <div class="popup-card">--%>
<%--                                    <a><i class="fas fa-times close-btn"></i></a>--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="../../img/Cupcaketag.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="info">--%>
<%--                                        <h2>Orange Cake</h2>--%>
<%--                                        <p >A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.--%>
<%--                                        </p>--%>
<%--                                        <p>Includes:</p>--%>
<%--                                        <ul>--%>
<%--                                            <li> 5 x Chocolate Eclairs (small)</li>--%>
<%--                                            <li>  5 x Assorted Fruit Tartlets (small)</li>--%>
<%--                                            <li>  5 x Coffee Cream Buns</li>--%>
<%--                                        </ul>--%>
<%--                                        <span class="price">$120.00</span>--%>
<%--                                        <a href="#" class="add-cart-btn">Go to Product page</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                        <div class="product">--%>

<%--                            <div class="product-thumb">--%>
<%--                                <div class="product-thumb-img">--%>
<%--                                    <img src="../../img/Cupcaketag.jpg"  alt="" class="mx-auto d-block img-fluid">--%>
<%--                                    <div class="quickView-title">Quick View</div>--%>
<%--                                    <div class="product-thumb-title">--%>
<%--                                        <h3 class="text-center"><a href="" class="thum-title">Orange Cake</a></h3>--%>
<%--                                        <h3 class="text-center"><span>1kg</span></h3>--%>
<%--                                        <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="popup-view">--%>
<%--                                <div class="popup-card">--%>
<%--                                    <a><i class="fas fa-times close-btn"></i></a>--%>
<%--                                    <div class="product-img">--%>
<%--                                        <img src="../../img/Cupcaketag.jpg" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="info">--%>
<%--                                        <h2>Zebra Cake</h2>--%>
<%--                                        <p >A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.--%>
<%--                                        </p>--%>
<%--                                        <p>Includes:</p>--%>
<%--                                        <ul>--%>
<%--                                            <li> 5 x Chocolate Eclairs (small)</li>--%>
<%--                                            <li>  5 x Assorted Fruit Tartlets (small)</li>--%>
<%--                                            <li>  5 x Coffee Cream Buns</li>--%>
<%--                                        </ul>--%>
<%--                                        <span class="price">$120.00</span>--%>
<%--                                        <a href="#" class="add-cart-btn">Go to Product page</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                    </div>

            </div>
        </div>
    </div>
                    </div>

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

</body>
</html>
