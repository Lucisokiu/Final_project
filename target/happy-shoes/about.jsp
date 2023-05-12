<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/img/blogs/adidas.jpg" type="image/x-icon" />
    <title>Happy Shoes Shop - Shoes | About</title>
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
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mở của từ thứ Hai đến Chủ Nhật</p>

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
                            <li class="nav-item "><a href="MainControl?action=home" class="nav-link">Home</a></li>
                            <li class="nav-item active"><a href="MainControl?action=about" class="nav-link">About</a></li>
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
                            <li class="nav-item "><a href="MainControl?action=home" class="nav-link">Home</a></li>
                            <li class="nav-item active"><a href="MainControl?action=about" class="nav-link">About</a></li>
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
                  <c:forEach items="${sessionScope.listCard}" var = "o">

                  <div class="cart-row">
                          <div class="cart-item cart-column">
                                  <img class="cart-item-image" src="${o.productImg_path}" width="100" height="100">
                                  <span class="cart-item-title">${o.product_name}</span>
                          </div>  

                          <span class="cart-price cart-column">${o.price}</span>
                          <span class="cart-price cart-column">${o.quantity}</span>


                          <div class="cart-quantity cart-column">
                                <input class="cart-quantity-input" type="number" value="${o.quantity}">
                                <button class="modal-btn btn-danger" type="button">Delete</button>
                          </div>

                        </div>
                  </c:forEach>

              </div>

              <div class="cart-total">
                <strong class="cart-total-title">Total:</strong>
                <span class="cart-total-price">Price</span>
              </div>
          
          
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
        
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/blogs/nike.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-5">
            <h1 class="mb-2 bread">About</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>About <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>


    <section class="ftco-section ftco-no-pt ftco-no-pb">
    <div class="container">
      <div class="row d-flex">
        <div class="col-md-6 d-flex">
        <div class="img img-2 w-100 mr-md-2" style="background-image: url(images/img/blogs/adidas.jpg);"></div>
        <div class="img img-2 w-100 ml-md-2" style="background-image: url(images/img/customers/mbappe.jpg);"></div>
      </div>
      <div class="col-md-6 ftco-animate makereservation p-4 p-md-5">
        <div class="heading-section ftco-animate mb-5">
          <span class="subheading">Happy Shoes Shop</span>
          <h2 class="mb-4">Perfect Shoes</h2>
          <p>Adidas, Nike, Zappos and other footwear brands made headlines with their shoe marketing campaigns. Nike, for example, focuses on creating meaningful stories that evoke emotions. Adidas has emerged as a brand built on innovation, while Zappos delivers highly personalized customer experiences. While you may not have the same budget as these brands, you can still grow your shoe business and stay competitive by thinking outside the box.
          </p>
        </div>
      </div>
    </div>
    </div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/img/logo/sec_store_bg.jpg);" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row d-md-flex align-items-center justify-content-center">
      <div class="col-lg-10">
        <div class="row d-md-flex align-items-center">
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="100">0</strong>
                <span>Shoes About

                </span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="4000">0</strong>
                <span>Shoes Served</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="5">0</strong>
                <span>Shoes</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18">
              <div class="text">
                <strong class="number" data-number="7000">0</strong>
                <span>Happy Customers</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </section>

    

    <section class="ftco-section testimony-section" style="background-image: url(images/img/CEO/Hoai.jpg);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row justify-content-center mb-3 pb-2">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <span class="subheading">Testimony</span>
            <h2 class="mb-4">Happy Customer</h2>
          </div>
        </div>

        <div class="row ftco-animate justify-content-center">
          <div class="col-md-7">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <div class="item">
                <div class="testimony-wrap text-center">
                 <div class="text p-3">
                   <p class="mb-4">Happy Shoes Shop - Hạnh phúc của bạn là niềm vui của chúng tôi</p>
                    <div class="user-img mb-4" style="background-image: url(images/img/customers/messi.jpg)">
                     <span class="quote d-flex align-items-center justify-content-center">
                         <i class="fa fa-quote-left"></i>
                      </span>
                    </div>
                    <p class="name">Lionel Messi</p>
                    <span class="position">Customer</span>
                  </div>
               </div>
              </div>

              <div class="item">
                <div class="testimony-wrap text-center">
                  <div class="text p-3">
                    <p class="mb-4">Hãy giới thiệu thêm nhiều người bạn của bạn.</p>
                    <div class="user-img mb-4" style="background-image: url(images/img/customers/MasonMount.jpg)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="fa fa-quote-left"></i>
                      </span>
                    </div>
                    <p class="name">Mason Mount</p>
                    <span class="position">Customer</span>
                  </div>
                </div>
              </div>

              <div class="item">
                <div class="testimony-wrap text-center">
                  <div class="text p-3">
                    <p class="mb-4">Những chiếc giày đẹp sẽ làm cho đôi chân đẹp</p>
                    <div class="user-img mb-4" style="background-image: url(images/img/customers/mbappe.jpg)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="fa fa-quote-left"></i>
                      </span>
                    </div>
                    <p class="name">Kylian Mbappe</p>
                    <span class="position">
                      Customer
                    </span>
                  </div>
                </div>
              </div>

              <div class="item">
                <div class="testimony-wrap text-center">
                  <div class="text p-3">
                    <p class="mb-4">Một bộ quần áo đẹp là chưa đủ. Chúng ta cũng cần một ĐÔI GIÀY ĐẸP</p>
                    <div class="user-img mb-4" style="background-image: url(images/img/customers/neymar.jpg)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="fa fa-quote-left"></i>
                      </span>
                    </div>
                    <p class="name">Neymar Jr</p>
                    <span class="position">Customer</span>
                  </div>
                </div>
              </div>

              <div class="item">
                <div class="testimony-wrap text-center">
                  <div class="text p-3">
                    <p class="mb-4">Cảm ơn vì đã sử dụng dịch vụ của chúng tôi</p>
                    <div class="user-img mb-4" style="background-image: url(images/img/customers/ronaldo.jpg)">
                      <span class="quote d-flex align-items-center justify-content-center">
                        <i class="fa fa-quote-left"></i>
                      </span>
                    </div>
                    <p class="name">Cristiano Ronaldo</p>
                    <span class="position">Customer</span>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
<c:import url="/footer.jsp" />
