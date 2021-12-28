//
// let carts = document.querySelectorAll(".add-cart");
//
//     let products=[
//         {
//             id:1,
//             name:'Lava',
//             tag:'Lavatag',
//             price:2000,
//             inCart:0
//         },
//         {
//             id:2,
//             name:'Cupcake',
//             tag:'Cupcaketag',
//             price:3000,
//             inCart:0
//         },
//         {
//             id:3,
//             name:'Orange',
//             tag:'Orangetag',
//             price:5000,
//             inCart:0
//         }];
//
//     for (let i = 0; i <carts.length; i++) {
//     carts[i].addEventListener('click',()=>{
//           cartNumbers(products[i]);
//           totalCost(products[i]);
//     })
// }
//
//     //refreash the page cart no not change
//     function onLoadCartNumbers(){
//         let productNumbers=localStorage.getItem('cartNumbers');
//
//         if (productNumbers) {
//             document.querySelector('.cart-icon span').textContent= productNumbers;
//         }
//
//     }
//
//     //increment no of items in cart
//     function cartNumbers(product) {
//     console.log("The clicked item is:", product);
//     let productNumbers=localStorage.getItem('cartNumbers');
//
//     productNumbers = parseInt(productNumbers);//convert productNumber string into int
//
//     if (productNumbers) {
//
//     localStorage.setItem('cartNumbers',productNumbers+1);
//     document.querySelector('.cart-icon span').textContent=productNumbers+1;
// }
//     else {
//     localStorage.setItem('cartNumbers', 1);
//     document.querySelector('.cart-icon span').textContent=1;
// }
//     setItems(product);
// }
//
// function setItems(product) {
//     let cartItems=localStorage.getItem('productsInCart');
//     cartItems=JSON.parse(cartItems);
//     console.log("cart",cartItems);
//     console.log("product",product);
//     if(cartItems != null){
//         if(cartItems[product.tag] === undefined){
//                 cartItems={
//                     ...cartItems,
//                     [product.tag]:product
//                 }
//         }
//         cartItems[product.tag].inCart += 1;
//    }else {
//         product.inCart = 1;
//         cartItems = {
//             [product.tag]: product
//         }
//     }
//     localStorage.setItem("productsInCart",JSON.stringify(cartItems));
//     //deleteButtons(product);
// }
//
//     function totalCost(product){
// //console.log("Total price:" ,product.price);
// let cartCost=localStorage.getItem('totalCost');
//
// if(cartCost != null){
//     cartCost=parseInt(cartCost);
//     localStorage.setItem('totalCost' ,cartCost+product.price);
// }else{
//     localStorage.setItem('totalCost' , product.price);
//
// }
// //console.log("My cart cost", totalCost);
//     }
//
//     function loadCart(){
// let cartItems=localStorage.getItem('productsInCart');
// cartItems=JSON.parse(cartItems);
// let proContainer=document.querySelector(".products");
//         let cartCost=localStorage.getItem('totalCost');
// console.log(cartItems);
// if( cartItems && proContainer ){
//     proContainer.innerHTML='';
//      Object.values(cartItems).map(item => {
//          console.log("My cart items:", item);
//         proContainer.innerHTML +=`
// <div class="item-content">
//             <div class="product">
//                 <ion-icon name="close-circle" class="remove"></ion-icon>
//                 <img src="../../img/${item.tag}.jpg" alt="">
//                 <span class="itemName">${item.name}</span>
//             </div>
//             <div class="pricee">
//             <span class="v-itemPrice">Item price:</span>
//             <span class="p">Rs:${item.price}.00</span>
//             </div>
//             <div class="qtyy">
//             <span class="v-itemQty">Item qty:</span>
//                 <ion-icon name="caret-back-circle" class="dec-btn"></ion-icon>
//                 <span class="qtyCart">${item.inCart}</span>
//                 <ion-icon name="caret-forward-circle" class="inc-btn"></ion-icon>
//             </div>
//             <div class="totall">
//             <span class="v-itemTot">Item total:</span>
//                <span class="t">Rs:${item.inCart*item.price}.00</span>
//             </div>
//      </div>
//                 `
//      });
//      proContainer.innerHTML +=
//          `<div class="basketTotalContainer">
// <h5 class="basketTotalTitle">
// Total Amount
// </h5>
// <h5 class="basketTotal"><span class="total">
// Rs:${cartCost}.00
// </span>
// </h5>
// </div>`
//
//    manageQuantity();
//      removeItem();
//      //removeCartItem();
//     //remove();
// }
//     }
//
// function  manageQuantity(){
// let increment = document.querySelectorAll('.inc-btn');
// let decrement = document.querySelectorAll('.dec-btn');
// let value=0;
// let  sum=0;
//
// let price=0;
//     for(let i=0;i<increment.length;i++){
//     increment[i].addEventListener('click', () => {
//         value = increment[i].parentElement.querySelector('span.qtyCart').textContent;
//
//         if (isNaN(value) || value < 1) {
//             value = 1;
//         }
//         console.log(value);
//         value++;
//         document.querySelector('.cart-icon span').textContent=value;
//         console.log("incremnet",value);
//         increment[i].parentElement.querySelector('span.qtyCart').textContent = value;
//         let totalPrice = document.querySelector('.basketTotal .total').textContent;
//
//         price = increment[i].parentElement.previousElementSibling.querySelector('span.p').textContent;
//         console.log("Type 1",typeof(price));
//         // parseFloat(price);
//         // console.log("Type 2",typeof(price));
//         let p=Number(price.replace(/[^0-9.-]+/g,""));
//         console.log("Type 2",typeof(p));
//         sum = p * value;
//         console.log("type of sum",typeof(sum));
//         // let s=Number(sum.replace(/[^0-9.-]+/g,""));
//         increment[i].parentElement.nextElementSibling.querySelector('span.t').textContent = "Rs:"+sum+".00";
//
//         updateTotal();
//         updateCart();
//
//
//     });
//
//         decrement[i].addEventListener('click', () => {
//             value = decrement[i].parentElement.querySelector('span.qtyCart').textContent;
//
//             if (isNaN(value) || value < 1) {
//                 value = 1;
//             }
//
//             value--;
//             document.querySelector('.cart-icon span').textContent=value;
//             decrement[i].parentElement.querySelector('span.qtyCart').textContent = value;
//             let totalPrice = document.querySelector('.basketTotal .total').textContent;
//             price = decrement[i].parentElement.previousElementSibling.querySelector('span.p').textContent;
//             let p=Number(price.replace(/[^0-9.-]+/g,""));
//             sum = p * value;
//
//             // let s=Number(sum.replace(/[^0-9.-]+/g,""));
//             decrement[i].parentElement.nextElementSibling.querySelector('span.t').textContent = "Rs:"+sum+".00";
//
//             updateTotal();
//             updateCart();
//
//
//
//         });
//
//
//     }
//
// }
// function updateCart() {
//
//     let cartsItem = document.querySelectorAll('.qtyCart');
//     let cart=0;
//     for (let i = 0; i < cartsItem.length; i++) {
//         cart = +cart + +parseInt(cartsItem[i].parentElement.querySelector('span.qtyCart').textContent);
//         console.log("cart item length",cartsItem.length);
//
//     }
//     console.log("updated cart no",cart);
//
//     document.querySelector('.cart-icon span').textContent = cart;
// }
//     function updateTotal() {
//
//         let cartsItem = document.querySelectorAll('.qtyCart');
//     let sumItem = document.querySelectorAll('.totall');
//     let total=0;
//     let t;
//
//     for (let i = 0; i < sumItem.length; i++) {
//                 let sItem=Number(sumItem[i].querySelector('span.t').textContent.replace(/[^0-9.-]+/g,""));
//                 total = +total + +sItem;
//
//                 console.log("total",total);
//     }
//         if(cartsItem.length == 0){
//             document.querySelector('.basketTotalContainer').innerHTML =`<p class="cart-empty">Cart is empty</p>`;
//
//
//         }else {
//             document.querySelector('.basketTotal .total').textContent ="Rs:"+total+".00";
//         }
//
// }
//
//
// function removeItem() {
//     let removeItem = document.getElementsByClassName('remove');
//      console.log(removeItem)
//      for (let i = 0; i < removeItem.length; i++) {
//          let button = removeItem[i];
//          button.addEventListener('click', function (event) {
//             console.log('clicked',i);
//              let removeItem = event.target;
//              removeItem.parentElement.parentElement.remove();
//              updateCart();
//              updateTotal();
//
//
//
//          });
//      }
// }
// function displayOne(){
//         //let item=document.querySelectorAll();
//     console.log("called displayOne");
//     console.log(products);
// }
//
// onLoadCartNumbers();
// loadCart();
// displayOne();
