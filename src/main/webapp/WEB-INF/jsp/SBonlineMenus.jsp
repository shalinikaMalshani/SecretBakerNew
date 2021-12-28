<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="../../css/SBonlineMenus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

</head>
<body>
<div class="container"><%--    content start--%>

    <p style="font-weight: bold; margin-right: 30px;">${loggerId.userName}</p>
    <button class="cart-icon"><a href="/shoppingCartNew">Cart</a><span style="padding-left: 3px;">0</span></button>
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
                                            <h3 class="text-center"><a href="/foodItem/${e.itemId}" class="thum-title">${e.foodName}</a></h3>
                                            <h3 class="text-center"><span>${e.s_description}</span></h3>
                                            <h3 class="detail-price" style="text-align: center"><a href="/foodItem/${e.itemId}" class="det-price">Details and Price</a></h3>
                                            <a  href="#" class="add-cart">Add To Cart</a>
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
                                            <a href="/foodItem/${e.itemId}" class="goToProduct-btn">Go to Product page</a>
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
<%--<script>--%>

<%--    let carts = document.querySelectorAll(".add-cart");--%>

<%--    // let products=[--%>
<%--    //     {--%>
<%--    //         name:'Lava',--%>
<%--    //         tag:'Lava',--%>
<%--    //         price:12,--%>
<%--    //         inCart:0--%>
<%--    //     },--%>
<%--    //     {--%>
<%--    //         name:'Orange',--%>
<%--    //         tag:'Orange',--%>
<%--    //         price:12,--%>
<%--    //         inCart:0--%>
<%--    //     },--%>
<%--    //     {--%>
<%--    //         name:'Cupcake',--%>
<%--    //         tag:'Cupcake',--%>
<%--    //         price:12,--%>
<%--    //         inCart:0--%>
<%--    //     }--%>
<%--    // ];--%>
<%--&lt;%&ndash;<c:forEach items="${AllFoodItems}" var="r" begin="0" varStatus="loop">&ndash;%&gt;--%>
<%--&lt;%&ndash;   // let products=[&ndash;%&gt;--%>
<%--&lt;%&ndash;        name='${r.foodId}'&ndash;%&gt;--%>
<%--&lt;%&ndash;        tag='${r.foodName}'&ndash;%&gt;--%>
<%--&lt;%&ndash;        price='${r.price}'&ndash;%&gt;--%>
<%--&lt;%&ndash;        inCart=0&ndash;%&gt;--%>
<%--&lt;%&ndash;  //  ];&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach>&ndash;%&gt;--%>

<%--    var products = [];--%>
<%--    <c:forEach items="${AllFoodItems}" var="item">--%>
<%--    products.push("Name:"+"${item.foodName}"+" inCart:"+"${item.inCart}"+" price:"+"${item.price}");--%>
<%--    &lt;%&ndash;products.push("price:"+"${item.price}");&ndash;%&gt;--%>
<%--    &lt;%&ndash;products.push("inCart:"+"${item.inCart}");&ndash;%&gt;--%>
<%--    console.log("Array elements:", products);--%>
<%--    </c:forEach>--%>

<%--    for (let i = 0; i <carts.length; i++) {--%>
<%--&lt;%&ndash;            <c:forEach items="${AllFoodItems}" var="r" begin="0" varStatus="loop">&ndash;%&gt;--%>
<%--&lt;%&ndash;                carts['${r.foodId}'-1].addEventListener('click',()=>{&ndash;%&gt;--%>
<%--        carts[i].addEventListener('click', () => {--%>

<%--            &lt;%&ndash;cartNumbers(["Name:"+'${r.foodName}'+" tag:"+'${r.foodName}'+ " Price:"+ '${r.price}'+ " inCart:"+ '${r.inCart}']);&ndash;%&gt;--%>
<%--                    cartNumbers(products[i]);--%>
<%--        })--%>
<%--         }--%>
<%--&lt;%&ndash;                </c:forEach>&ndash;%&gt;--%>

<%--        //refreash the page cart no not change--%>
<%--        function onLoadCartNumbers() {--%>

<%--            let productNumbers = localStorage.getItem('cartNumbers');--%>

<%--            if (productNumbers) {--%>
<%--                document.querySelector('.cart-icon span').textContent = productNumbers;--%>
<%--            }--%>

<%--        }--%>

<%--        //increment no of items in cart--%>
<%--        function cartNumbers(product) {--%>
<%--            console.log("The clicked item is:", product);--%>
<%--            let productNumbers = localStorage.getItem('cartNumbers');--%>

<%--            productNumbers = parseInt(productNumbers);//convert productNumber string into int--%>

<%--            if (productNumbers) {--%>

<%--                localStorage.setItem('cartNumbers', productNumbers + 1);--%>
<%--                document.querySelector('.cart-icon span').textContent = productNumbers + 1;--%>
<%--            } else {--%>
<%--                localStorage.setItem('cartNumbers', 1);--%>
<%--                document.querySelector('.cart-icon span').textContent = 1;--%>
<%--            }--%>
<%--            setItems(product);--%>
<%--        }--%>
<%--        &lt;%&ndash;function setItems(product) {&ndash;%&gt;--%>
<%--        &lt;%&ndash;    //console.log("Inside setItem Function");&ndash;%&gt;--%>
<%--        &lt;%&ndash;    //console.log("My product is:", product.inCart);&ndash;%&gt;--%>

<%--        &lt;%&ndash;    let cartItems=localStorage.getItem('productsInCart');&ndash;%&gt;--%>
<%--        &lt;%&ndash;    cartItems=JSON.parse(cartItems);&ndash;%&gt;--%>
<%--        &lt;%&ndash;   // console.log("My cart items are:", cartItems);&ndash;%&gt;--%>
<%--        &lt;%&ndash;    product.inCart=1;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    cartItems={&ndash;%&gt;--%>
<%--        &lt;%&ndash;        [product.Name]:product&ndash;%&gt;--%>
<%--        &lt;%&ndash;    }&ndash;%&gt;--%>

<%--        &lt;%&ndash;    localStorage.setItem("productsInCart",JSON.stringify(cartItems));&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;let cartItems=localStorage.getItem('productsInCart');&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;cartItems=JSON.parse(cartItems);&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;console.log("My cart items are:", cartItems);&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    //    product.inCart=1;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;   ${foodItem.inCart} = 1;&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;    cartItems={&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;        [${foodItem.foodName}]:${foodItem/foodItem.foodId}&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;    &lt;%&ndash;    }&ndash;%&gt;&ndash;%&gt;--%>

<%--        &lt;%&ndash;    &lt;%&ndash;localStorage.setItem("productsInCart",JSON.stringify(cartItems));&ndash;%&gt;&ndash;%&gt;--%>
<%--        &lt;%&ndash;}&ndash;%&gt;--%>
<%--    <c:forEach items="${AllFoodItems}" var="item">--%>
<%--    function setItems(${item}) {--%>
<%--        let cartItems=localStorage.getItem('productsInCart');--%>
<%--        cartItems=JSON.parse(cartItems);--%>

<%--        if(cartItems != null){--%>
<%--            if(cartItems[${item.foodName}] === undefined){--%>
<%--                cartItems={--%>
<%--                    ...cartItems,--%>
<%--                    [${item.foodName}]:'${item}'--%>
<%--                }--%>
<%--            }--%>
<%--            cartItems[${item.inCart}] += 1;--%>
<%--        }else {--%>
<%--            ${item.inCart} = 1;--%>
<%--            cartItems = {--%>
<%--                [${item.foodName}]: '${item}'--%>
<%--            }--%>
<%--        }--%>

<%--        localStorage.setItem("productsInCart",JSON.stringify(cartItems));--%>
<%--    }--%>
<%--    </c:forEach>--%>

<%--    onLoadCartNumbers();--%>


<%--</script>--%>
<script src="../../js/cartNew.js"></script>
</body>
</html>
