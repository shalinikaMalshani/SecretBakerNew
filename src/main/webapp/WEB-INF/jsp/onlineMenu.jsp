<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/28/2021
  Time: 6:14 PM
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>


<div class="container"><%--content section start--%>

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

                            <div class="col-12 col-md-6 col-lg-4 col-xl-3">

                                <div class="product-thumb">
                                    <div class="product-thumb-img">
                                        <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">
                                        <div class="quickView-title" >Quick View</div>
                                        <div class="product-thumb-title">
                                            <h3 class="text-center"><a href="/foodItem/${e.foodId}" class="thum-title">Cupcake</a></h3>
                                            <h3 class="text-center"><span>kkio mmn nnbg hhytre</span></h3>
                                            <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>
                                        </div>
                                    </div>

                                </div>
                            </div>
                                <div class="popup">
                                    <div class="close-btn" onclick="toggle()">X</div>

                                    <div class="product-big-img">
                                        <img src="../../img/Cupcaketag.jpg" alt="cupcake" id="food-img">
                                    </div>
                                    <div class="product-des">
                                        <%--            <h4>${e.foodId}</h4>--%>
                                        <h2 id="food-name">Lava Cake</h2><br>
                                        <h4 id="food-des">A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.
                                        </h4>
                                        <p>Includes:</p>
                                        <ul>
                                            <li> 5 x Chocolate Eclairs (small)</li>
                                            <li>  5 x Assorted Fruit Tartlets (small)</li>
                                            <li>  5 x Coffee Cream Buns</li>
                                            <li>  5 x Cashew & Chocolate</li>
                                            <li>  5 x Almandine</li>
                                            <li>5 x Bakewell (pc) (small)</li></ul><br>
                                    </div>
                                    <%--        <button class="goToProduct-btn"> <a href="/foodItem/${e.foodId}" class="product-btn">Go to product page</a></button>--%>

                                </div>
                        <div class="col-12 col-md-6 col-lg-4 col-xl-3">

                            <div class="product-thumb">
                                <div class="product-thumb-img">
                                    <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">
                                    <div class="quickView-title" >Quick View</div>
                                    <div class="product-thumb-title">
                                        <h3 class="text-center"><a href="/foodItem/${e.foodId}" class="thum-title">Cupcake</a></h3>
                                        <h3 class="text-center"><span>kkio mmn nnbg hhytre</span></h3>
                                        <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="popup">
                            <div class="close-btn" onclick="toggle()">X</div>

                            <div class="product-big-img">
                                <img src="../../img/Cupcaketag.jpg" alt="cupcake">
                            </div>
                            <div class="product-des">
                                <%--            <h4>${e.foodId}</h4>--%>
                                <h2 id="food-name">Lava Cake</h2><br>
                                <h4 id="food-des">A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.
                                </h4>
                                <p>Includes:</p>
                                <ul>
                                    <li> 5 x Chocolate Eclairs (small)</li>
                                    <li>  5 x Assorted Fruit Tartlets (small)</li>
                                    <li>  5 x Coffee Cream Buns</li>
                                    <li>  5 x Cashew & Chocolate</li>
                                    <li>  5 x Almandine</li>
                                    <li>5 x Bakewell (pc) (small)</li></ul><br>
                            </div>
                            <%--        <button class="goToProduct-btn"> <a href="/foodItem/${e.foodId}" class="product-btn">Go to product page</a></button>--%>

                        </div>

                        <div class="col-12 col-md-6 col-lg-4 col-xl-3">

                            <div class="product-thumb">
                                <div class="product-thumb-img">
                                    <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">
                                    <div class="quickView-title" >Quick View</div>
                                    <div class="product-thumb-title">
                                        <h3 class="text-center"><a href="" class="thum-title">Cupcake</a></h3>
                                        <h3 class="text-center"><span>kkio mmn nnbg hhytre</span></h3>
                                        <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="popup">
                            <div class="close-btn" onclick="toggle()">X</div>

                            <div class="product-big-img">
                                <img src="../../img/Cupcaketag.jpg" alt="cupcake">
                            </div>
                            <div class="product-des">
                                <%--            <h4>${e.foodId}</h4>--%>
                                <h2 id="food-name">Lava Cake</h2><br>
                                <h4 id="food-des">A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.
                                </h4>
                                <p>Includes:</p>
                                <ul>
                                    <li> 5 x Chocolate Eclairs (small)</li>
                                    <li>  5 x Assorted Fruit Tartlets (small)</li>
                                    <li>  5 x Coffee Cream Buns</li>
                                    <li>  5 x Cashew & Chocolate</li>
                                    <li>  5 x Almandine</li>
                                    <li>5 x Bakewell (pc) (small)</li></ul><br>
                            </div>
                            <%--        <button class="goToProduct-btn"> <a href="/foodItem/${e.foodId}" class="product-btn">Go to product page</a></button>--%>

                        </div>





                    </div>
                </div>

            </div><%--      left side of the page end--%>

        </div>

    </div>





</div><%--content section end--%>


<%--js for blur and popup--%>
<script type="text/javascript">
    var popupViews = document.querySelectorAll('.popup');
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
