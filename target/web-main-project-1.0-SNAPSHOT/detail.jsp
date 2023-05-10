<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <title>Happy Shoes Shop | Product Details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/animate.css">
  
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/jquery.timepicker.css">

  
  <link rel="stylesheet" href="css/flaticon.css">

  
  <link rel="stylesheet" href="css/flaticon.css">

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"><div class="pd-wrap">
  
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="css/product-detail/cheese-roll.css">

  <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
  <script src="order/js/data.js"></script>
  </div>
</head>

    <div class="wrap">
      <div class="container">
          <div class="row justify-content-between">
            <div class="col-12 col-md d-flex align-items-center">
              <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
            </div>
            <div class="col-12 col-md d-flex justify-content-md-end">
              <p class="mb-0">Mở cửa từ thứ Hai đến Chủ Nhật</p>
            </div>
            <div class=" right-content mg-left">
              <c:if test="${sessionScope.acc == null}">
                  <a href="signIn-signUp.jsp" class="avatar">
                      <img src="images/test-image.jpg" alt="" class="avatar-img">
                  </a>
              </c:if>
  
              <c:if test="${sessionScope.acc != null}">
                  <a href="user-profile.jsp" class="avatar">
                      <img src="images/test-image.jpg" alt="" class="avatar-img">
                  </a>
              </c:if>
          </div>
          </div>
        </div>
    </div>

      
      <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
       <div class="container">
         <a class="navbar-brand" href="MainControl?action=home">Happy Shoes <span>Shop</span></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
           <span class="oi oi-menu"></span> Menu
         </button>
      
         <c:if test="${sessionScope.acc.isAdmin != 1}">
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                    <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                    <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                    <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                    <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                    <li class="nav-item"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
                </ul>
            </div>
        </c:if>

        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                    <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                    <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                    <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
                    <li class="nav-item"><a href="ManagerProductControl?action=manager_product" class="nav-link">Manager Product</a></li>
                    <li class="nav-item"><a href="MainControl?action=manager_account" class="nav-link">Manager Account</a></li>
                </ul>
            </div>
        </c:if>
          
        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <div id="manage">
                <div class="right-content">
                    <a href="#"><i style="color:#fff; width: 36px;" class="fa-solid fa-gear"></i></a>
                </div>
            </div>
        </c:if>

        <c:if test="${sessionScope.acc.isAdmin != 1}">
            <div id="cart">
                <div class="right-content">
                  <div class="dot-inf"></div>
                  <i class="fas fa-shopping-cart"></i>
                </div>
            </div>
        </c:if>

            
        <!-- <form id="myModal" class="modal" method="post" action="/initcard"> -->

          <div id="myModal" class="modal">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Cart</h5>
                <span class="close">&times;</span>
              </div>
              
              <div class="modal-body">
                <div class="cart-row">
                  <span class="cart-item cart-header cart-column">Product</span>
                  <span class="cart-price cart-header cart-column">Price</span>
                  <span class="cart-quantity cart-header cart-column">Quantity</span>
                </div>

                <div class="cart-items">
                  <c:forEach items="${listCart}" var = "o">

                  <div class="cart-row">
                          <div class="cart-item cart-column">
                                  <img class="cart-item-image" src="${o.productImg_path}" width="100" height="100">
                                  <span class="cart-item-title">${o.product_name}</span>
                          </div>  

                          <span class="cart-price cart-column">${o.price}</span>

                          <div class="cart-quantity cart-column">
                                <input class="cart-quantity-input" type="number" value="${o.quantity}">
                                <button class="modal-btn btn-danger" type="button">Delete</button>
                          </div>

                        </div>
                  </c:forEach>

              </div>

              <div  id= "totalPrice" class="cart-total">

                <c:set var="total" value="0" />
                <c:forEach var="o" items="${list}">
                  <c:set var="subtotal" value="${o.quantity * o.price}" />
                  <c:set var="total" value="${total + subtotal}" />
                </c:forEach>

                <strong class="cart-total-title">Total: ${total}</strong>

                
                
                <span class="cart-total-price"></span>
              </div>
          
          
              <div class="modal-footer">
                    <button type="button" class="modal-btn btn-secondary close-footer">Close</button>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="signIn-signUp.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                    </c:if>

                    <c:if test="${sessionScope.acc != null}">
                        <a href="checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                    </c:if>
              </div>
            </div>
            </div>
         
          
          </div>
        <!-- </form> -->


      </nav>
      <!-- END nav -->
      <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/img-size-l/slide-img1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center mb-5">
              <h1 class="mb-2 bread">Product details</h1>
              <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="MainControl?action=menu">Menu <i class="fa fa-chevron-right"></i></a></span> <span>Product Details <i class="fa fa-chevron-right"></i></span></p>
            </div>
          </div>
        </div>
      </section>
      
      <div class="container">
        <br><br>
        
        <div class="row">
          <div class="col-md-6">
            <div id="slider" class="owl-carousel product-slider">

          <div class="item">
              <img class="main_img" src="${detail.productImg_path}" />
          </div>
          <div class="item">
              <img src="${detail.productImg_path}" />
          </div>
          <div class="item">
              <img src="${detail.productImg_path}" />
          </div>
          
        </div>
        <div id="thumb" class="owl-carousel product-thumb">
        </div>
      </div>
          <div class="col-md-6">
            <div class="product-dtl">
              <div class="product-info">
                <div class="product-name">${detail.product_name}</div>
                <div class="reviews-counter">
                  <c:if test="${detail.enable == 1}">
                    <span>còn hàng</span>
                  </c:if>
                  <c:if test="${detail.enable != 1}">
                    <span>hết hàng</span>
                  </c:if>
                </div>
                <div class="product-price-discount"><span class="product-price">${detail.price} $</span></div>
              </div>
              <p>${detail.description}</p>
              
              <div class="product-count">
                <label for="">Quantity</label>
                  <form id="myForm" class="display-flex" style="height: 48px">
                      <!-- các trường input của form -->
                      <div class="qtyminus">-</div>
                      <input type="text" name="quantity" value="1" class="qty" id = "count_product">
                      <div class="qtyplus">+</div>
                      <input type="hidden" name="product_id" value="${detail.product_id}">
                      <!-- ... -->
                      <button type="submit" class="round-black-btn" style="margin: 0 8px 0 8px">Submit</button>
                      <button class="round-black-btn goCart-btn" style="margin: 0 8px 0 8px">Buy Now</button>
                  </form>
<%--                <form action="/initcard?action=add" class="display-flex">--%>
<%--                    <div class="qtyminus">-</div>--%>
<%--                    <input type="text" name="quantity" value="1" class="qty" id = "count_product">--%>
<%--                    <div class="qtyplus">+</div>--%>
<%--                    <input type="hidden" name="product_id" value="${detail.product_id}">--%>
<%--                </form>--%>
<%--                <button onclick="submitForm()" class="round-black-btn">Add to Cart</button>--%>
<%--                <button class="round-black-btn goCart-btn">Buy Now</button>--%>

              </div>
            </div>
          </div>
        </div>
      </div>
<%--<script>--%>
<%--  function submitForm() {--%>
<%--  document.forms[0].submit();--%>
<%--  }--%>
<%--</script>--%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $("#myForm").submit(function(event) {
            // Ngăn chặn form được submit theo cách truyền thống.
            event.preventDefault();

            // Gửi dữ liệu form bằng AJAX.
            $.ajax({
                url: "process-form.php", // đường dẫn đến script xử lý form trên máy chủ
                type: "POST", // phương thức gửi dữ liệu (POST hoặc GET)
                data: $(this).serialize(), // dữ liệu form được gửi đi
                success: function(response) {
                    // Xử lý phản hồi từ máy chủ nếu cần thiết.
                    // Ví dụ, bạn có thể cập nhật trang web mà không cần tải lại.
                },
                error: function(xhr) {
                    // Xử lý lỗi nếu có.
                }
            });
        });
    });
</script>




  <div class="related-container">
    <!-- <h5 class="related-heading" style="padding-bottom: 15px; padding-left:42%;">Other Delicious Items:</h5> -->
    <div class="row">
        <div class="col">
            <div class="related-owl-carousel">
              <c:forEach items="${ListP1}" var = "o">
                <div class="product-card">
                    <a  href="detail?pid=${o.product_id}" data-abc="true"><img class="product-thumb" src="${o.productImg_path}" alt="Product"></a>
                    <h3 class="product-title"><a href="detail?pid=${o.product_id}" data-abc="true">${o.product_name}</a></h3>
                    <p class= "price-title">Sale: <del style="margin-left: 5px;"></del></p> 
                    <h4 class="product-price">      ${o.price} $</h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
              </c:forEach>
            </div>
            <div class="related-owl-carousel">
              <c:forEach items="${ListP2}" var = "o">
                <div class="product-card">
                    <a  href="detail?pid=${o.product_id}" data-abc="true"><img class="product-thumb" src="${o.productImg_path}" alt="Product"></a>
                    <h3 class="product-title"><a href="detail?pid=${o.product_id}" data-abc="true">${o.product_name}</a></h3>
                    <p class= "price-title">Sale: <del style="margin-left: 5px;"></del></p> 
                    <h4 class="product-price">      ${o.price} $</h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
              </c:forEach>
            </div>
            <div class="related-owl-carousel">
              <c:forEach items="${ListP3}" var = "o">
                <div class="product-card">
                    <a  href="detail?pid=${o.product_id}" data-abc="true"><img class="product-thumb" src="${o.productImg_path}" alt="Product"></a>
                    <h3 class="product-title"><a href="detail?pid=${o.product_id}" data-abc="true">${o.product_name}</a></h3>
                    <p class= "price-title">Sale: <del style="margin-left: 20px;"> </del></p> 
                    <h4 class="product-price">      ${o.price} $</h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
              </c:forEach>
            </div>
        </div>
    </div>
  </div>


      <footer class="ftco-footer ftco-no-pb ftco-section">
        <div class="container">
          <div class="row mb-5">
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Happy Shoes Shop</h2>
                <p><b style="color: rgba(255, 255, 255, 0.9);">Need help?</b> <br> Email us at: <a style="text-decoration: underline;" href="">nguyenminhnhut435gmail.com</a> <br> or give us a call at: <a style="text-decoration: underline;" href="">0909374409</a>.</p>
                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                  <li class="ftco-animate"><a href="https://twitter.com/portos"><span class="fa fa-twitter"></span></a></li>
                  <li class="ftco-animate"><a href="https://www.facebook.com/dhspkt.hcmute"><span class="fa fa-facebook"></span></a></li>
                  <li class="ftco-animate"><a href="https://www.instagram.com/portosbakery/"><span class="fa fa-instagram"></span></a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Open Hours</h2>
                <ul class="list-unstyled open-hours">
                  <li class="d-flex"><span>Monday</span><span>9:00 - 24:00</span></li>
                  <li class="d-flex"><span>Tuesday</span><span>9:00 - 24:00</span></li>
                  <li class="d-flex"><span>Wednesday</span><span>9:00 - 24:00</span></li>
                  <li class="d-flex"><span>Thursday</span><span>9:00 - 24:00</span></li>
                  <li class="d-flex"><span>Friday</span><span>9:00 - 02:00</span></li>
                  <li class="d-flex"><span>Saturday</span><span>9:00 - 02:00</span></li>
                  <li class="d-flex"><span>Sunday</span><span> Closed</span></li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Instagram</h2>
                <div class="thumb d-sm-flex">
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-1.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-2.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-3.jpg);">
                  </a>
                </div>
                <div class="thumb d-flex">
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-4.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-5.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(images/insta-6.jpg);">
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Newsletter</h2>
                <p><b style="color: rgba(255, 255, 255, 0.9);">Happy Shoes Shop in your Inbox</b> <br> For special offers, new goodies, and the latest news join our mailing list.</p>
                <form action="#" class="subscribe-form">
                  <div class="form-group">
                    <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
                    <input type="submit" value="Subscribe" class="form-control submit px-3">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="container-fluid px-0 bg-primary py-3">
          <div class="row no-gutters">
            <div class="col-md-12 text-center">
      
              <p class="mb-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
              </div>
            </div>
          </div>
          <c:if test="${sessionScope.acc.isAdmin != 1}">
          <div class="collapse navbar-collapse" id="ftco-nav">
              <c:if test="${not empty notice}">
              <script>
                  alert("${notice}");
              </script>
              </c:if>
                  </c:if>
          </div>
        </footer>




<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/ScrollTrigger.min.js"></script>
<script src="order/js/scrollTrigger.js"></script>
<script src="order/js/app.js"></script>

<script>
  $(document).ready(function() {
		    var slider = $("#slider");
		    var thumb = $("#thumb");
		    var slidesPerPage = 4; //globaly define number of elements per page
		    var syncedSecondary = true;
		    slider.owlCarousel({
		        items: 1,
		        slideSpeed: 2000,
		        nav: false,
		        autoplay: false, 
		        dots: false,
		        loop: true,
		        responsiveRefreshRate: 200
		    }).on('changed.owl.carousel', syncPosition);
		    thumb
		        .on('initialized.owl.carousel', function() {
		            thumb.find(".owl-item").eq(0).addClass("current");
		        })
		        .owlCarousel({
		            items: slidesPerPage,
		            dots: false,
		            nav: true,
		            item: 4,
		            smartSpeed: 200,
		            slideSpeed: 500,
		            slideBy: slidesPerPage, 
		        	navText: ['<svg width="18px" height="18px" viewBox="0 0 11 20"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M9.554,1.001l-8.607,8.607l8.607,8.606"/></svg>', '<svg width="25px" height="25px" viewBox="0 0 11 20" version="1.1"><path style="fill:none;stroke-width: 1px;stroke: #000;" d="M1.054,18.214l8.606,-8.606l-8.606,-8.607"/></svg>'],
		            responsiveRefreshRate: 100
		        }).on('changed.owl.carousel', syncPosition2);
		    function syncPosition(el) {
		        var count = el.item.count - 1;
		        var current = Math.round(el.item.index - (el.item.count / 2) - .5);
		        if (current < 0) {
		            current = count;
		        }
		        if (current > count) {
		            current = 0;
		        }
		        thumb
		            .find(".owl-item")
		            .removeClass("current")
		            .eq(current)
		            .addClass("current");
		        var onscreen = thumb.find('.owl-item.active').length - 1;
		        var start = thumb.find('.owl-item.active').first().index();
		        var end = thumb.find('.owl-item.active').last().index();
		        if (current > end) {
		            thumb.data('owl.carousel').to(current, 100, true);
		        }
		        if (current < start) {
		            thumb.data('owl.carousel').to(current - onscreen, 100, true);
		        }
		    }
		    function syncPosition2(el) {
		        if (syncedSecondary) {
		            var number = el.item.index;
		            slider.data('owl.carousel').to(number, 100, true);
		        }
		    }
		    thumb.on("click", ".owl-item", function(e) {
		        e.preventDefault();
		        var number = $(this).index();
		        slider.data('owl.carousel').to(number, 300, true);
		    });


            $(".qtyminus").on("click",function(){
                var now = $(".qty").val();
                if ($.isNumeric(now)){
                    if (parseInt(now) -1> 0)
                    { now--;}
                    $(".qty").val(now);
                }
            })            
            $(".qtyplus").on("click",function(){
                var now = $(".qty").val();
                if ($.isNumeric(now)){
                    $(".qty").val(parseInt(now)+1);
                }
            });
		});
</script>
<script>
  $(document).ready(function() {




$('.owl-carousel').slick({
infinite: true,
centerMode: false,
slidesToShow: 3,
slidesToScroll: 3,
arrows: false,
autoplay: true,
autoplaySpeed: 3000,


});

});
</script>

<script>
  $(document).ready(function() {
    var totaldetail = $('#totalPrice span').text;
  });
  </script>
</body>
</html>