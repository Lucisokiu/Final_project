<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/img/blogs/adidas.jpg" type="image/x-icon" />
    <title>Happy Shoes Shop | Contact </title>
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

    <link rel="stylesheet" href="css/reponsive.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
    <script src="/js/data.js"></script>
    <script src ="js/main.js"></script>

</head>
<body>

	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-12 col-md d-flex align-items-center">
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409 </a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mở cửa từ thứ Hai đến Chủ Nhật</p>
				</div>
        <div class=" right-content mg-left">
          <c:if test="${sessionScope.acc == null}">
              <a href="./signIn-signUp.jsp" class="avatar">
                  <img src="images/test-image.jpg" alt="" class="avatar-img">
              </a>
          </c:if>

          <c:if test="${sessionScope.acc != null}">
              <a href="./user-profile.jsp" class="avatar">
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
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                <li class="nav-item active"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin == 1}">
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="cartcontrol?action=cartcontrol" class="nav-link">Cartcontrol</a></li>
                <li class="nav-item"><a href="ManagerProductControl?action=ManagerProductControl" class="nav-link">Manager Product</a></li>
                <li class="nav-item"><a href="ManagerAccount?action=ManagerAccount" class="nav-link">Manager Account</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin == 1}">
      <div id="manage">
          <div class="right-content">
                  <a href="./signIn-signUp.jsp" class="avatar">
                  <img src="images/img/icon-img/turn.png" alt="" class="avatar-img">
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
				  <!-- <div class="modal-header">
					<h5 class="modal-title">Cart</h5>
					<span class="close">&times;</span>
				  </div> -->
				  
				  <!-- <div class="modal-body">
					<div class="cart-row">
					  <span class="cart-item cart-header cart-column">Product</span>
					  <span class="cart-price cart-header cart-column">Price</span>
					  <span class="cart-quantity cart-header cart-column">Quantity</span>
					</div>

          <div class="cart-items">



        </div>
	
				  <div class="cart-total">
					<strong class="cart-total-title">Total:</strong>
					<span class="cart-total-price">87$</span>
				  </div> -->
			  
			  
				  <div class="modal-footer">
                                    <button type="button" class="modal-btn btn-secondary close-footer">Close</button>
                                    <c:if test="${sessionScope.acc == null}">
                                        <a href="./signIn-signUp.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                    </c:if>

                                    <c:if test="${sessionScope.acc != null}">
                                        <a href="./checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                    </c:if>
                                  </div>
				</div>
				</div>
		</div>
	</nav>
    <!-- END nav -->

    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/blogs/adidas.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-5">
            <h1 class="mb-2 bread">Contact us</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Contact us <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section contact-section bg-light">
      <div class="container">
        <div class="row d-flex contact-info">
          <div class="col-md-12">
            <h2 class="h4 font-weight-bold">Contact Information</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3 d-flex">
           <div class="dbox">
             <p class="my-shop-inf"><span>Address:</span>01, Vo Van Ngan Street, Linh Chieu, Thu Duc, Ho Chi Minh City, Viet Nam</p>
           </div>
         </div>
         <div class="col-md-3 d-flex">
           <div class="dbox">
             <p ><span>Phone:</span>0909374409</p>
           </div>
         </div>
         <div class="col-md-3 d-flex">
           <div class="dbox">
             <p ><span>Email:</span>nguyenminhnhut435@gmail.com</p>
           </div>
         </div>
         <div class="col-md-3 d-flex">
           <div class="dbox ">
             <p ><span>Website:</span> <a href="https://finalproject147.herokuapp.com/"> Link Website</a></p>
           </div>
         </div>
       </div>
     </div>
    </section>
    <section class="ftco-section ftco-no-pt contact-section">
     <div class="container">
        <div class="row d-flex align-items-stretch no-gutters">
          <div class="col-md-6 p-5 order-md-last">
            <h2 class="h4 mb-5 font-weight-bold">Contact Us</h2>
            <form action="#">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          </div>
        <div class="col-md-6 d-flex align-items-stretch">

      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4700993380798!2d106.77011371474963!3d10.851804692270404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527753482e837%3A0xb9317c992255dce2!2zMDEgxJAuIFbDtSBWxINuIE5nw6JuLCBMaW5oIENoaeG7g3UsIFRo4bunIMSQ4bupYywgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1636686364803!5m2!1svi!2s" width="555" height="656" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4700993380798!2d106.77011371474963!3d10.851804692270404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527753482e837%3A0xb9317c992255dce2!2zMDEgxJAuIFbDtSBWxINuIE5nw6JuLCBMaW5oIENoaeG7g3UsIFRo4bunIMSQ4bupYywgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1636686364803!5m2!1svi!2s" width="600" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe> -->
    </section>

    <c:import url="/footer.jsp" />