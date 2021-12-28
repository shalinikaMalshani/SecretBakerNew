<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12/2/2021
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cupcakes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/SBonlineMenu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
<div class="container"><%--    content start--%>

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
                    <c:forEach items="${AllFoodItems}" var="e">
                        <div class="col-12 col-md-6 col-lg-4 col-xl-3">

                            <div class="product"><%--product start--%>

                                <div class="product-card"><%-- product card start--%>

                                    <div class="product-thumb-img">
                                        <img src="${e.src}"  alt="" class="mx-auto d-block img-fluid">
                                        <div class="quickView-title">Quick View</div>
                                        <div class="product-thumb-title">
                                            <h3 class="text-center"><a href="/foodItem/${e.foodId}" class="thum-title">${e.foodName}</a></h3>
                                            <h3 class="text-center"><span>${e.s_description}</span></h3>
                                            <h3 class="detail-price" style="text-align: center"><a href="/foodItem/${e.foodId}" class="det-price">Details and Price</a></h3>
                                        </div>
                                    </div>
                                </div><%--product card end--%>


                                <div class="popup-view"><%--product popup start--%>

                                    <div class="popup-card">
                                        <a><i class="fas fa-times close-btn"></i></a>
                                        <div class="product-img">
                                            <img src="${e.src}" alt="">
                                        </div>
                                        <div class="info">
                                            <h2>${e.foodName}</h2>
                                            <p >${e.l_description}
                                            </p>
                                                <%--                                            <p>Includes:</p>--%>
                                                <%--                                            <ul>--%>
                                                <%--                                                <li>${e.ingredients}</li>--%>
                                                <%--&lt;%&ndash;                                                <li>  5 x Assorted Fruit Tartlets (small)</li>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;                                                <li>  5 x Coffee Cream Buns</li>&ndash;%&gt;--%>
                                                <%--                                            </ul>--%>
                                            <span class="price">${e.price}</span>
                                            <a href="/foodItem/${e.foodId}" class="goToProduct-btn">Go to Product page</a>
                                        </div>
                                    </div>
                                </div><%--product popup end--%>

                            </div><%--product end--%>

                        </div>
                    </c:forEach>
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
</body>
</html>
