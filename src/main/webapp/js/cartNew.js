//when click add to cart btn this store the relevant btn
let carts = document.querySelectorAll(".add-cart");

//all the products
let products=[
    {
        id:"1",
        name:'Lava',
        tag:'Lavatag',
        price:1000,
        inCart:"0"
    },
    {
        id:2,
        name:'Orange',
        tag:'Orangetag',
        price:2000,
        inCart:0
    },
    {
        id:3,
        name:'Cupcake',
        tag:'Cupcaketag',
        price:3000,
        inCart:0
    },
];



//when click add to cart
for (let i = 0; i <carts.length; i++) {
    carts[i].addEventListener('click',()=>{
        cartNumbers(products[i]);
        totalItemCost(products[i]);
    })
}

//refreash the page cart no not change
function onLoadCartNumbers(){
    //get the no of items in cart
    let productNumbers=localStorage.getItem('cartNo');
    console.log("Cart No",productNumbers);

    //if items inside cart this will diplay that no in the icon
    if (productNumbers) {
        document.querySelector('.cart-icon span').textContent= productNumbers;
    }
}

//increment no of items in cart
function cartNumbers(product) {
    console.log("The clicked item :", product);

    //get no of items in cart
    let productNumbers=localStorage.getItem('cartNo');

    productNumbers = parseInt(productNumbers);//convert productNumber string into int

    //if items in cart
    if (productNumbers) {

        //when click add to cart btn increment cart by 1
        localStorage.setItem('cartNo',productNumbers+1);
        document.querySelector('.cart-icon span').textContent=productNumbers+1;
    }
    else {

        //if not have items set as 1
        localStorage.setItem('cartNo', 1);
        document.querySelector('.cart-icon span').textContent=1;
    }
    setAllItems(product);
}

function setAllItems(product) {
    //get all the items stored in cart
    let cartItems=localStorage.getItem('productsAllInCart');
    cartItems=JSON.parse(cartItems);
    console.log("cart",cartItems);

    //this will give the relevent clicked item
    console.log("product",product);


    if(cartItems != null){
        if(cartItems[product.tag] === undefined){
            cartItems={
                ...cartItems,
                [product.tag]:product
            }
        }
        //this will incremnet relevant incart
        cartItems[product.tag].inCart += 1;
    }else {
        product.inCart = 1;
        cartItems = {
            [product.tag]: product
        }
    }
    localStorage.setItem("productsAllInCart",JSON.stringify(cartItems));

}

function totalItemCost(product){
    console.log("Total price:" ,product.price);
    let cartCost=localStorage.getItem('totalItemCost');

    if(cartCost != null){
        cartCost=parseInt(cartCost);
        localStorage.setItem('totalItemCost' ,cartCost+product.price);
        //document.querySelector('.cartTot span').textContent =cartCost+product.price;

    }else{
        localStorage.setItem('totalItemCost' , product.price);
        document.querySelector('.cartTot span').textContent =product.price;


    }
    console.log("My cart cost", cartCost);
}

function loadCart(){

    //get currnt items in cart
    let cartItems=localStorage.getItem('productsAllInCart');
    cartItems=JSON.parse(cartItems);

    //get the table body
    let proContainer=document.querySelector("#products");
    //get the place display the total
    let tot=document.querySelector(".cart__total");

    //get the currant total cost
    let cartCost=localStorage.getItem('totalItemCost');
    console.log(cartItems);

    //fill the table body with clicked item
    if( cartItems && proContainer ){
        proContainer.innerHTML='';
        Object.values(cartItems).map(item => {
            console.log("My cart items:", item);
            proContainer.innerHTML +=`
            
          <td style="display: none;">${item.id}</td>
<td class="product__cart__item"><div class="product__cart__item__pic"><ion-icon name="close-circle" class="remove"></ion-icon><img src="img/${item.tag}.jpg" alt=""></div>
<div class="product__cart__item__text"><h6>${item.name}</h6></div></td>
<td class="product__cart__item"><div class="product__cart__item__text"><h5 class="p" style="padding-bottom:25px;">Rs:${item.price}.00</h5></div></td>
<td><ion-icon name="caret-back-circle" class="dec-btn"></ion-icon><span class="qtyCart">${item.inCart}</span><ion-icon name="caret-forward-circle" class="inc-btn"></ion-icon></td>
<td class="cartPrice"><span class="t">Rs:${item.inCart * item.price}.00</span></td>

<!--                                    <td style="display: none;">${item.id}</td>-->
<!--                                    <td class="product__cart__item">-->
<!--                                        <div class="product__cart__item__pic">-->
<!--                                            <img src="img/${item.tag}.jpg" alt="">-->
<!--                                        </div>-->
<!--                                        <div class="product__cart__item__text">-->
<!--                                            <h6>${item.name}</h6>-->
<!--                                        </div>-->
<!--                                    </td>-->
<!--                                    <td class="product__cart__item">-->
<!--                                        <div class="product__cart__item__text">-->
<!--                                            <h5 class="p">Rs:${item.price}.00</h5>-->
<!--                                        </div>-->
<!--                                    </td>-->
<!--                                    <td class="quantity__item"><ion-icon name="caret-back-circle" class="dec-btn"></ion-icon><span class="qtyCart">${item.inCart}</span><ion-icon name="caret-forward-circle" class="inc-btn"></ion-icon></td>-->
<!--                                    <td class="cartPrice"><span class="t">Rs:${item.inCart * item.price}.00</span></td>-->
<!--                                    <td class="cart__close"><ion-icon name="close-circle" class="remove"></ion-icon></td>-->
                                
                                
`
        });

        //fill the total
        tot.innerHTML +=
            `
                    <h6>Cart total</h6>
                    <ul>
                        <li>Subtotal <span class="totalSub">Rs:${cartCost}.00</span></li>
                        <li>Total <span class="total">Rs:${cartCost}.00</span></li>
                    </ul>
`

        manageQuantity();
        removeItem();




    }
}

function  manageQuantity(){
    //get the inc btn
    let increment = document.querySelectorAll('.inc-btn');
    //get the dec btn
    let decrement = document.querySelectorAll('.dec-btn');
    let value=0;
    let  sum=0;
    let price=0;
    for(let i=0;i<increment.length;i++){
        increment[i].addEventListener('click', () => {
            value = increment[i].parentElement.querySelector('span.qtyCart').textContent;
            let productNumbers=localStorage.getItem('cartNo');
            let cartItems=localStorage.getItem('productsAllInCart');
            cartItems=JSON.parse(cartItems);

            if (isNaN(value) || value < 1) {
                value = 1;

            }
            console.log(value);
            value++;

            cartItems={
                ...cartItems,
                [products[i].tag]:products[i]
            }

            cartItems[products[i].tag].inCart =value;

            localStorage.setItem("productsAllInCart",JSON.stringify(cartItems));

            productNumbers = parseInt(productNumbers);//convert productNumber string into int
            localStorage.setItem('cartNo',productNumbers+1);



            document.querySelector('.cart-icon span').textContent=value;
            console.log("incremnet",value);
            increment[i].parentElement.querySelector('span.qtyCart').textContent = value;
            //let totalPrice = document.querySelector('ul li.total').textContent;

            price = increment[i].parentElement.previousElementSibling.querySelector('h5.p').textContent;
            console.log("Type 1",typeof(price));
            // parseFloat(price);
            // console.log("Type 2",typeof(price));
            let p=Number(price.replace(/[^0-9.-]+/g,""));
            console.log("Type 2",typeof(p));
            sum = p * value;
            console.log("type of sum",typeof(sum));
            // let s=Number(sum.replace(/[^0-9.-]+/g,""));

            let cartCost=localStorage.getItem('totalItemCost');

            //if(cartCost != null){
            cartCost=parseInt(cartCost);
            localStorage.setItem('totalItemCost' ,cartCost+parseInt(price));

            increment[i].parentElement.nextElementSibling.querySelector('span.t').textContent = "Rs:"+sum+".00";


            // }else{
            //localStorage.setItem('totalItemCost' , products.price);

            // }

            updateTotal();
            updateCart();


        });

        decrement[i].addEventListener('click', () => {
            value = decrement[i].parentElement.querySelector('span.qtyCart').textContent;
            let productNumbers=localStorage.getItem('cartNo');
            let cartItems=localStorage.getItem('productsAllInCart');
            cartItems=JSON.parse(cartItems);


            if (isNaN(value) || value < 1) {
                value = 1;
            }

            value--;
            // let productNumbers=localStorage.getItem('cartNo');

            cartItems={
                ...cartItems,
                [products[i].tag]:products[i]
            }

            cartItems[products[i].tag].inCart =value;

            localStorage.setItem("productsAllInCart",JSON.stringify(cartItems));



            productNumbers = parseInt(productNumbers);//convert productNumber string into int
            localStorage.setItem('cartNo',productNumbers-1);

            document.querySelector('.cart-icon span').textContent=value;
            decrement[i].parentElement.querySelector('span.qtyCart').textContent = value;
            //let totalPrice = document.querySelector('.basketTotal .total').textContent;
            price = decrement[i].parentElement.previousElementSibling.querySelector('h5.p').textContent;
            let p=Number(price.replace(/[^0-9.-]+/g,""));
            sum = p * value;

            let cartCost=localStorage.getItem('totalItemCost');

            //if(cartCost != null){
            cartCost=parseInt(cartCost);
            localStorage.setItem('totalItemCost' ,cartCost-parseInt(price));


            // let s=Number(sum.replace(/[^0-9.-]+/g,""));
            decrement[i].parentElement.nextElementSibling.querySelector('span.t').textContent = "Rs:"+sum+".00";

            updateTotal();
            updateCart();



        });


    }

}


function updateCart() {

    let cartsItem = document.querySelectorAll('.qtyCart');
    let productNumbers=localStorage.getItem('cartNo');
    let cart=0;
    for (let i = 0; i < cartsItem.length; i++) {
        cart = +cart + +parseInt(cartsItem[i].parentElement.querySelector('span.qtyCart').textContent);
        console.log("cart item length",cartsItem.length);

    }
    console.log("updated cart no",cart);
    localStorage.setItem('cartNo',cart);

    document.querySelector('.cart-icon span').textContent = cart;
}
function updateTotal() {

    let cartsItem = document.querySelectorAll('.qtyCart');
    let sumItem = document.querySelectorAll('.cartPrice');
    let cartCost=localStorage.getItem('totalItemCost');
    let total=0;

    for (let i = 0; i < sumItem.length; i++) {
        let sItem=Number(sumItem[i].querySelector('span.t').textContent.replace(/[^0-9.-]+/g,""));
        console.log("item tot",sItem);
        total = +total + +sItem;
        console.log("New total",total);

    }
    localStorage.setItem('totalItemCost',total);

//     if(cartsItem.length == 0){
//         console.log("empty");
//         let empty=document.querySelector("#products");
//          console.log("called",empty);
//          empty.innerHTML='';
//          empty.innerHTML +=`
//
//  <td id="cart-empty">Cart is Empty</td>
//
// `

    // document.querySelector('.basketTotal .total').innerHTML ='';
    // }else {
    document.querySelector('ul li .totalSub').textContent ="Rs:"+total+".00";
    document.querySelector('ul li .total').textContent ="Rs:"+total+".00";
    document.querySelector('.cartTot span').textContent ="Rs:"+total+".00";

    // }

}


function removeItem() {
    //get removed btn
    let removeItem = document.getElementsByClassName('remove');

    //get current cart no
    let productNumbers=localStorage.getItem('cartNo');

    //get current cart items
    let cartItems=localStorage.getItem('productsAllInCart');
    cartItems=JSON.parse(cartItems);

    let i;
    for (i = 0; i < removeItem.length; i++) {

        let button = removeItem[i];
        button.addEventListener('click', function (event) {

            let removeItem = event.target;
            removeItem.parentElement.parentElement.parentElement.remove();


            //localStorage.setItem('productsAllInCart',products.splice(i,1));
            updateCart();
            updateTotal();

            localStorage.removeItem('productsAllInCart');



        });
    }




}

function getValue() {

    var list = [];
    // var processing="Processing...";
    var numberOfRows = $("#products tr").length;
    console.log("rows",numberOfRows);
    var odId = $("#barIdNo").text();
    var cId = $("#customerId").text();
    var str,stre="" ;
    for (var i = 0; i < numberOfRows; i++) {
        var itemId = $("#products tr:nth-child(" + (i + 1) + ") td:nth-child(1)").text();
        console.log("item id",itemId);
        console.log(typeof (itemId));
        var name = $("#products tr:nth-child(" + (i + 1) + ") td:nth-child(2)").text();
        console.log("item name",name);
        var price = $("#products tr:nth-child(" + (i + 1) + ") td:nth-child(3)").text().replace("Rs:","");
        var p=parseInt(price);
        console.log("item price",p);
        console.log(typeof (price));
        var qty = $("#products tr:nth-child(" + (i + 1) + ") td:nth-child(4)").text();
        console.log("item qty",qty);
        console.log(typeof (qty));
        var total = $("#products tr:nth-child(" + (i + 1) + ") td:nth-child(5)").text();


        if (i >= 0) {
            list.push({
                itemCode:itemId,
                itemName: name,
                itemPrice: p,
                qty: qty,
                totalPrice: total

            });

            console.log("list",list);
            str =  itemId+" "+p+" "+qty+" ";
            console.log("str",str);
            stre+= str;
            console.log("stre",stre);
        }
    }

    // $("#pay").val(stre);

    //var v=document.getElementById('pay').value;
    $("#pay").val(stre);
    //console.log("order",orderRes);
    localStorage.setItem('orderRes',stre);
    // $("#submitPay").text(processing);


    //localStorage.clear();

}

function  getValueNew(){
    var val=JSON.parse(JSON.stringify(localStorage.getItem('orderRes') ));
    console.log("local storage",val);
    $("#payNew").val(val);

    //localStorage.clear();
}

//manQty(products[i]);
onLoadCartNumbers();
loadCart();
//displayOne();