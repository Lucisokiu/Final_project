<!DOCTYPE html>
<html lang="en">
<head>
  <title>Magic Shop - Bakery | Product Details</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="../css/animate.css">
  
  <link rel="stylesheet" href="../css/owl.carousel.min.css">
  <link rel="stylesheet" href="../css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../css/magnific-popup.css">

  <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="../css/jquery.timepicker.css">

  
  <link rel="stylesheet" href="../css/flaticon.css">

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
  <link rel="stylesheet" href="../css/product-detail/cheese-roll.css">
  
  <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
  <script src="../order/js/data.js"></script>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
    <div class="wrap">
      <div class="container">
          <div class="row justify-content-between">
            <div class="col-12 col-md d-flex align-items-center">
              <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
            </div>
            <div class="col-12 col-md d-flex justify-content-md-end">
              <p class="mb-0">Mở cửa từ thứ Hai đến Chủ Nhật</p>
              <div class="social-media">
                <p class="mb-0 d-flex">
                  <a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                  <a href="https://twitter.com/portos" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                  <a href="https://www.instagram.com/portosbakery/" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
      
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class=" right-content mg-left">
            <c:if test="${sessionScope.acc == null}">
                <a href="../signIn-signUp.jsp" class="avatar">
                    <img src="../images/customer_1.jpg" alt="" class="avatar-img">
                </a>
            </c:if>

            <c:if test="${sessionScope.acc != null}">
                <a href="../user-profile.jsp" class="avatar">
                    <img src="../images/customer_1.jpg" alt="" class="avatar-img">
                </a>
            </c:if>
        </div>
    </div>

      
      <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
       <div class="container">
         <a class="navbar-brand" href="../MainControl?action=home">Magic <span>Shop</span></a>
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
                  <div class="cart-row">
                  <div class="cart-item cart-column">
                    <img class="cart-item-image" src="../images/bread-5-detail1.jpg" width="100" height="100">
                    <span class="cart-item-title">Cheese Roll</span>
                  </div>
                  
                  <span class="cart-price cart-column">29$</span>
                  <div class="cart-quantity cart-column">
                    <input class="cart-quantity-input" type="number" value="1">
                    <button class="modal-btn btn-danger" type="button">Delete</button>
                  </div>
                </div>
                <div class="cart-row">
                  <div class="cart-item cart-column">
                    <img class="cart-item-image" src="../images/bread12-detail1.jpg" width="100" height="100">
                    <span class="cart-item-title">Meat Pie (Pastel De Carne)</span>
                  </div>
                  <span class="cart-price cart-column">29$</span>
                  <div class="cart-quantity cart-column">
                    <input class="cart-quantity-input" type="number" value="2">
                    <button class="modal-btn btn-danger" type="button">Delete</button>
                  </div>
                </div>
                
              </div>

              <div class="cart-total">
                <strong class="cart-total-title">Total:</strong>
                <span class="cart-total-price">87$</span>
              </div>
          
          
              <div class="modal-footer">
                <button type="button" class="modal-btn btn-secondary close-footer">Close</button>
                <c:if test="${sessionScope.acc == null}">
                    <a href="../signIn-signUp.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                </c:if>

                <c:if test="${sessionScope.acc != null}">
                    <a href="../checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                </c:if>
              </div>
            </div>
            </div>
         
          
        </div>
      </nav>
      <!-- END nav -->
      <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_5.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center mb-5">
              <h1 class="mb-2 bread">Product details</h1>
              <p class="breadcrumbs"><span class="mr-2"><a href="../MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="../MainControl?action=menu">Menu <i class="fa fa-chevron-right"></i></a></span> <span>Product Details <i class="fa fa-chevron-right"></i></span></p>
              <!-- <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Contact us <i class="fa fa-chevron-right"></i></span></p> -->
            </div>
          </div>
        </div>
      </section>
      
      <div class="container">
        <br><br>
        
        <div class="row">
          <div class="col-md-6">
            <div id="slider" class="owl-carousel product-slider">
          <!-- <div class="item">
              <img src="../images/bread-12.png" />
          </div> -->
          <div class="item">
              <img class="main_img" src="../images/bread12-detail1.jpg" />
          </div>
          <div class="item">
              <img src="../images/bread12-detail2.jpg" />
          </div>
          <div class="item">
              <img src="../images/bread12-detail3.jpg" />
          </div>
          
        </div>
        <div id="thumb" class="owl-carousel product-thumb">
          <!-- <div class="item">
              <img src="../images/bread-12.png" />
          </div> -->
          <div class="item">
              <img src="../images/bread12-detail1.jpg" />
          </div>
          <div class="item">
              <img src="../images/bread12-detail2.jpg" />
          </div>
          <div class="item">
              <img src="../images/bread12-detail3.jpg" />
          </div>
          
        </div>
          </div>
          <div class="col-md-6">
            <div class="product-dtl">
              <div class="product-info">
                <div class="product-name">Meat Pie (Pastel De Carne)</div>
                <div class="reviews-counter">
              
                <span>100 Purchases</span>
                </div>
                <div class="product-price-discount"><span class="product-price">39$</span><span class="line-through">49$</span></div>
              </div>
              <p>A guest favorite! Traditional puff pastry made with European style butter with Porto's signature cream cheese filling, topped with sugar.</p>
              
              <div class="product-count">
                <label for="size">Quantity</label>
                <form action="#" class="display-flex">
                <div class="qtyminus">-</div>
                <input type="text" name="quantity" value="1" class="qty" id = "count_product">
                <div class="qtyplus">+</div>
                </form>
                
                <button class="round-black-btn">Add to Cart</button>
                <button class="round-black-btn goCart-btn">Buy Now</button>
              </div>
            </div>
          </div>
        </div>
      </div>
        
  <div class="related-container">
    <h5 class="related-heading" style="padding-bottom: 15px; padding-left:42%;">Other Delicious Items:</h5>
    <div class="row">
        <div class="col">
            <div class="related-owl-carousel">
                <div class="product-card">
                    <a  href="chicken-empanada.jsp" data-abc="true"><img class="product-thumb" src="../images/bread-10.png" alt="Product"></a>
                    <h3 class="product-title"><a href="chicken-empanada.jsp" data-abc="true">Chicken Empanada</a></h3>
                    <p class= "price-title">Price: <del style="margin-left: 5px;">39$</del></p> 
                    <h4 class="product-price">29$ </h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
                <div class="product-card">
                  <a href="cheese-roll.jsp" data-abc="true"><img class="product-thumb" class="product-thumb" src="../images/bread-5.png" alt="Product"></a>
                  <h3 class="product-title"><a href="cheese-roll.jsp" data-abc="true">Cheese Roll</a></h3>
                  <p class= "price-title">Price: <del style="margin-left: 5px;">39$</del></p> 
                    <h4 class="product-price">29$ </h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
                <div class="product-card">
                  <a href="milk-berries.jsp" data-abc="true"><img class="product-thumb" src="../images/wine-2.jpg" alt="Product"></a>
                  <h3 class="product-title"><a href="milk-berries.jsp" data-abc="true">Milk's Berries Cake Round</a></h3>
                  <p class= "price-title">Price: <del style="margin-left: 5px;">39$</del></p> 
                    <h4 class="product-price">29$ </h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
                <div class="product-card">
                  <a href="chocolate-cookie.jsp" data-abc="true"><img class="product-thumb" src="../images/bread-14.png" alt="Product"></a>
                  <h3 class="product-title"><a href="chocolate-cookie.jsp" data-abc="true">Chocolate Chip Cookie</a></h3>
                  <p class= "price-title">Price: <del style="margin-left: 5px;">39$</del></p> 
                    <h4 class="product-price">29$ </h4>
                    <div class="product-buttons"><button class="btn btn-outline-primary btn-sm" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Product" data-toast-message="successfuly added to cart!">Add to Cart</button> </div>
                </div>
                
                
            </div>
        </div>
    </div>
  </div>


      <footer class="ftco-footer ftco-no-pb ftco-section">
        <div class="container">
          <div class="row mb-5">
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Magic Shop</h2>
                <p><b style="color: rgba(255, 255, 255, 0.9);">Need help?</b> <br> Email us at: <a style="text-decoration: underline;" href="">magicshop@gmail.com</a> <br> or give us a call at: <a style="text-decoration: underline;" href="">+84 792 204 127</a>.</p>
                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                  <li class="ftco-animate"><a href="https://www.facebook.com/dhspkt.hcmute"><span class="fa fa-twitter"></span></a></li>
                  <li class="ftco-animate"><a href="https://twitter.com/portos"><span class="fa fa-facebook"></span></a></li>
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
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-1.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-2.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-3.jpg);">
                  </a>
                </div>
                <div class="thumb d-flex">
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-4.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-5.jpg);">
                  </a>
                  <a href="#" class="thumb-menu img" style="background-image: url(../images/insta-6.jpg);">
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Newsletter</h2>
                <p><b style="color: rgba(255, 255, 255, 0.9);">Magic Shop's in your Inbox</b> <br> For special offers, new goodies, and the latest news join our mailing list.</p>
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
        </footer>
    

        

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/bootstrap-datepicker.js"></script>
  <script src="../js/jquery.timepicker.min.js"></script>
  <script src="../js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../js/google-map.js"></script>
  <script src="../js/main.js"></script>
<!-- cua Thuan -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/ScrollTrigger.min.js"></script>
<script src="../order/js/scrollTrigger.js"></script>
<script src="../order/js/app.js"></script>

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

</body>
</html>