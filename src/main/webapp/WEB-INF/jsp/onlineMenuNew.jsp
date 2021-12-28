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








</head>
<body>


<div class="container"><%--content section start--%>
    <div id="blur">
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

      <div class="product-thumb">
          <div class="product-thumb-img">
              <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">
              <div class="quickView-title" onclick="toggle()">Quick View</div>
              <div class="product-thumb-title">
                  <h3 class="text-center"><a href="/foodItem/${e.foodId}" class="thum-title">${e.foodName}</a></h3>
                  <h3 class="text-center"><span>${e.s_description}</span></h3>
                  <h3 class="detail-price" style="text-align: center"><a href="/foodItem/${e.foodId}" class="det-price">Details and Price</a></h3>
              </div>
          </div>

      </div>

        </div>
</c:forEach>
<%--                <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                    <div class="product-thumb">--%>
<%--                        <div class="product-thumb-img">--%>
<%--                            <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">--%>
<%--                            <div class="quickView-title" onclick="toggle()">Quick View</div>--%>
<%--                            <div class="product-thumb-title">--%>
<%--                                <h3 class="text-center"><a href="" class="thum-title">Cake</a></h3>--%>
<%--                                <h3 class="text-center"><span>nnj mmk mml mmki mmj</span></h3>--%>
<%--                                <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                    <div class="product-thumb">--%>
<%--                        <div class="product-thumb-img">--%>
<%--                            <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">--%>
<%--                            <div class="quickView-title" onclick="toggle()">Quick View</div>--%>
<%--                            <div class="product-thumb-title">--%>
<%--                                <h3 class="text-center"><a href="" class="thum-title">Cupcake</a></h3>--%>
<%--                                <h3 class="text-center"><span>nnj mmk mml mmki mmj</span></h3>--%>
<%--                                <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="col-12 col-md-6 col-lg-4 col-xl-3">--%>
<%--                    <div class="product-thumb">--%>
<%--                        <div class="product-thumb-img">--%>
<%--                            <img src="../../img/Cupcaketag.jpg" alt="cupcake" class="mx-auto d-block img-fluid">--%>
<%--                            <div class="quickView-title" onclick="toggle()">Quick View</div>--%>
<%--                            <div class="product-thumb-title">--%>
<%--                                <h3 class="text-center"><a href="" class="thum-title">Cupcake</a></h3>--%>
<%--                                <h3 class="text-center"><span>nnj mmk mml mmki mmj</span></h3>--%>
<%--                                <h3 class="detail-price" style="text-align: center"><a href="" class="det-price">Details and Price</a></h3>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


            </div>
        </div>

  </div><%--      left side of the page end--%>

</div>

    </div>

    <%--quick view pop up start--%>
<%--    <c:forEach items="${AllFoodItems}" var="f">--%>
<%--<c:forEach items="${AllFoodItems}" var="e">--%>
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

<%--    </c:forEach>--%>

    <div class="popup">

        <div class="close-btn" onclick="toggle()">X</div>
        <div class="product-big-img">
            <img src="../../img/Cupcaketag.jpg" alt="cupcake">
        </div>
        <div class="product-des">
            <h2>Cupcake</h2>
            <h4>A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.
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
<%--        <button class="goToProduct-btn"><a href="/foodItem/${e.foodId}" class="product-btn">Go to product page</a></button>--%>

    </div>
<%--</c:forEach>--%>
    <div class="popup">
        <div class="close-btn" onclick="toggle()">X</div>
        <div class="product-big-img">
            <img src="../../img/Cupcaketag.jpg" alt="cupcake">
        </div>
        <div class="product-des">
            <h2>Orange Cake</h2>
            <h4>A delicious assortment of sweet treats to satisfy those cravings. This dessert platter, which comes in a box, holds 30 cocktail size items.
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
<%--        <button class="goToProduct-btn">Go to product page</button>--%>

    </div>

<%--    <div id="popup">--%>
<%--        <div class="close-btn" onclick="toggle()">X</div>--%>
<%--        <div class="product-big-img">--%>
<%--            <img src="../../img/Cupcaketag.jpg" alt="cupcake">--%>
<%--        </div>--%>
<%--        <div class="product-des">--%>
<%--            <h2>Cupcake</h2>--%>
<%--            <h4>thr bcehdbc hvber bryecb yberuybceb byrybcyr  vchreyhye cberv erybc</h4>--%>
<%--        </div>--%>
<%--        <button class="goToProduct-btn">Go to product page</button>--%>

<%--    </div>--%>

    <%--quickview popup end--%>

</div><%--content section end--%>


<%--js for blur and popup--%>
<script>
    function toggle(){
        var blur=document.getElementById('blur');
        blur.classList.toggle('active');
        // for (var i = 0; i < blur.length; i++) {
        //     blur[i].classList.toggle('active');
        // }
        var popup=document.getElementsByClassName('popup');
        //popup.classList.toggle('active');
        for (var i = 0; i < popup.length; i++) {
            popup[i].classList.toggle('active');
         }
    }
</script>
<%--<script type="text/javascript" src="../../js/jquery-2.1.3.min.js"></script>--%>
<%--<script type="text/javascript">--%>
<%--$(document).ready(function (){--%>
<%--    $('.quickView-title').click(function () {--%>
<%--        const $popup = $(this).parent().parent().next();--%>
<%--        $($popup).fadeIn('1000');--%>
<%--        --%>
<%--    });--%>
<%--});--%>
<%--</script>--%>
</body>
</html>
