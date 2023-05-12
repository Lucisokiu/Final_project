<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/img/img-size-l/m_bn_2_1.jpg" type="image/x-icon" />
    <title>Happy Shoes Shop</title>
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

<!--        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="/lib/jquery.min.js"></script>
    <script src="/lib/jquery.plugin.js"></script>
    -->
    <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
    <script src="/js/data.js"></script>
    <script src ="js/main.js"></script>

</head>
<body>

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
            <a href="./user-profile.jsp" class="avatar">
                <img src="images/test-image.jpg" alt="" class="avatar-img">
            </a>
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
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="MainControl?action=cartcontrol" class="nav-link">Cartcontrol</a></li>
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

            <c:forEach items="${ListP1}" var = "o">

            <div class="cart-row">
                    <div class="cart-item cart-column">
                            <img class="cart-item-image" src="${o.productImg_path}" width="100" height="100">
                            <span class="cart-item-title">${o.product_name}</span>
                    </div>

                    <span class="cart-price cart-column">${o.price}</span>

                    <div class="cart-quantity cart-column">
                          <input class="cart-quantity-input" type="number" value="0">
                          <button class="modal-btn btn-danger" type="button">Delete</button>
                    </div>

                  </div>
            </c:forEach>


            <c:forEach items="${ListP2}" var = "o">

            <div class="cart-row">
                    <div class="cart-item cart-column">
                            <img class="cart-item-image" src="${o.productImg_path}" width="100" height="100">
                            <span class="cart-item-title">${o.product_name}</span>
                    </div>

                    <span class="cart-price cart-column">${o.price}</span>

                    <div class="cart-quantity cart-column">
                          <input class="cart-quantity-input" type="number" value="0">
                          <button class="modal-btn btn-danger" type="button">Delete</button>
                    </div>

                  </div>
            </c:forEach>

            <c:forEach items="${ListP3}" var = "o">

                    <div class="cart-row">
                            <div class="cart-item cart-column">
                                    <img class="cart-item-image" src="${o.productImg_path}" width="100" height="100">
                                    <span class="cart-item-title">${o.product_name}</span>
                            </div>

                            <span class="cart-price cart-column">${o.price}</span>

                            <div class="cart-quantity cart-column">
                                  <input class="cart-quantity-input" type="number" value="0">
                                  <button class="modal-btn btn-danger" type="button">Delete</button>
                            </div>

                          </div>
                    </c:forEach>

        </div>
	
				  <div class="cart-total">
					<strong class="cart-total-title">Total:</strong>
					<span class="cart-total-price">87$</span>
				  </div>
			  
			  
				  <div class="modal-footer">
					<button type="button" class="modal-btn btn-secondary close-footer">Close</button>
					<a href="./checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
				  </div>
				</div>
				</div>
		</div>
	</nav>
    <!-- END nav -->
    
    

<script>
    // Add active class to the current button (highlight it)
    var navitem = document.getElementsByClassName("nav-item");
    for (var i = 0; i < navitem.length; i++) {
      navitem[i].addEventListener("click", function() {
      var current = document.getElementsByClassName("active");
      current[0].className = current[0].className.replace(" active", "");
      this.className += " active";
      });
    }
</script>