<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/test-image.jpg" type="images/x-icon" />
    <title>Happy Shoes Shop | Home</title>
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
        <form action="/MainControl" method="post"></form>
    <div class="wrap">
        <div class="container">
                <div class="row justify-content-between">
                        <div class="col-12 col-md d-flex align-items-center">
                                <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">nguyenminhnhut435@gmail.com</a></p>
                        </div>
                        <div class="col-12 col-md d-flex justify-content-md-end">
                                <p class="mb-0">Mở cửa từ thứ Hai đến Chủ Nhật</p>
                                <c:if test="${sessionScope.acc != null}">
                                        <div class="right-content">
                                                <a href="Logout?action=logout" class="avatar">
                                                <img src="images/logout.png" alt="" class="avatar-img">
                                                </a>
                                        </div>
                                </c:if>

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
                        <c:if test="${not empty notice}">
                            <script>
                                alert("${notice}");
                            </script>
                        </c:if>

                        <form action="<c:url value="/InterpreterController"/>" method="post">
                            <label for="search-input">kiểm tra:</label>
                            <input  type="text" id="search-input" name="acModel" placeholder="nhập code">
                        </form>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                            <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                            <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                                <!-- <li class="nav-item"><a href="./order/order.jsp" class="nav-link">Booking</a></li> -->
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
                            <li class="nav-item"><a href="cartcontrol?action=cartcontrol" class="nav-link">Cartcontrol</a></li>
                            <li class="nav-item"><a href="ManagerProductControl?action=ManagerProductControl" class="nav-link">Manager Product</a></li>
                            <li class="nav-item"><a href="ManagerAccount?action=ManagerAccount" class="nav-link">Manager Account</a></li>
                        
                        </ul>
                    </div>
                </c:if>
                
                
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <div id="manage">
                        <div class="right-content">
                                <a href="/signIn-signUp.jsp" class="avatar">
                                <img src="images/img/icon-img/turn.png" alt="" class="avatar-img">
                                </a>
                        </div>
                    </div>
                </c:if>
                
                <c:if test="${sessionScope.acc.isAdmin != 1}">
                        <div>

                        </div>
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
                                        <!-- <span class="cart-price cart-column">${o.quantity}</span> -->
              
              
                                        <div class="cart-quantity cart-column">
                                              <input class="cart-quantity-input" type="number" value="${o.quantity}">
                                              <button class="modal-btn btn-danger" type="button">Delete</button>
                                        </div>
              
                                      </div>
                                </c:forEach>
              
                            </div>

                            <div  id= "totalPrice" class="cart-total">

                                <c:set var="total" value="0" />
                                <c:forEach var="o" items="${sessionScope.listCard}">
                                  <c:set var="subtotal" value="${o.quantity * o.price}" />
                                  <c:set var="total" value="${total + subtotal}" />
                                </c:forEach>
                
                                <strong class="cart-total-title">Total: ${total}</strong>
                
                                
                                
                                <span class="cart-total-price"></span>
                              </div>
                      </div>
                            <div class="modal-footer">
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

    <section class="hero-wrap">
            <div class="home-slider owl-carousel js-fullheight">
                    <div class="slider-item js-fullheight" style="background-image:url(images/img/img-size-l/slide-img2.jpg);">
                            <div class="overlay"></div>
                            <div class="container">
                                    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
                                            <div class="col-md-12 ftco-animate">
                                                    <div class="text w-100 mt-5 text-center">
                                                            <span class="subheading">Happy Shoes Shop</span>
                                                            <h1>Happy Shoes Shop Xin Chào</h1>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>

                    <div class="slider-item js-fullheight" style="background-image:url(images/img/img-size-l/slide-img1.jpg);">
                            <div class="overlay"></div>
                            <div class="container">
                                    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
                                            <div class="col-md-12 ftco-animate">
                                                    <div class="text w-100 mt-5 text-center">
                                                            <span class="subheading">Happy Shoes Shop</span>
                                                            <h1>Best Quality</h1>
                                                            <span class="subheading-2 sub">Shoes</span>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>



    <section class="ftco-section ftco-wrap-about ftco-no-pb ftco-no-pt">
            <div class="container">
                    <div class="row no-gutters">
                            <div class="col-sm-4 p-4 p-md-5 d-flex align-items-center justify-content-center bg-primary">
                                    <form action="booking" method="post" class="appointment-form">
                                        <h3 class="mb-3">Đặt lịch hẹn để chúng tôi hỗ trợ bạn</h3>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingName" type="name" class="form-control" placeholder="Name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingEmail" type="email" class="form-control" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingPhone" type="text" class="form-control" placeholder="Phone">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="input-wrap">
                                                                <div class="icon"><span class="fa fa-calendar"></span></div>
                                                                <input name="bookingDate" type="text" class="form-control book_date" placeholder="Check-In">
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="input-wrap">
                                                                <div class="icon"><span class="fa fa-clock-o"></span></div>
                                                                <input name="bookingTime" type="text" class="form-control book_time" placeholder="Time">
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="form-field">
                                                                <div class="select-wrap">
                                                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                                        <select name="bookingQuantity" id="" class="form-control">
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="">Nhân viên</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="1">Nhut</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="2">Hoai</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="3">Phat</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="4">Messi</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="5">Ronaldo</option>
                                                                        </select>
                                                                </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="submit" value="Checkin Now" class="btn btn-white py-3 px-4">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                            </div>
                            <div class="col-sm-8 wrap-about py-5 ftco-animate img" style="background-image: url(images/img/img-size-l/m_bn_2_2.jpg);">
                                    <div class="row pb-5 pb-md-0">
                                            <div class="col-md-12 col-lg-7">
                                                    <div class="heading-section mt-5 mb-4">
                                                            <div class="pl-lg-3 ml-md-5">
                                                                    <span class="subheading">About</span>
                                                                    <h2 class="mb-4">Welcome to <br> Happy Shoes Shop</h2>
                                                            </div>
                                                    </div>
                                                    <!-- <div class="pl-lg-3 ml-md-5">
                                                            <p>p-content</p>
                                                    </div> -->
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section ftco-intro" style="background-image: url(images/img/img-size-l/ps-testimonialt.jpg);">
            <div class="overlay"></div>
            <div class="container">
                    <div class="row">
                            <div class="col-md-12 text-center">
                                    <span>Now Booking</span>
                                    <h2>Private Appointments &amp; Happy Hours</h2>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">Specialties</span>
                                    <h2 class="mb-4">Our Menu</h2>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="menu-wrap">
                                    <div class="heading-menu text-center ftco-animate">
                                            <h3><a href="MainControl?action=menu">Nike</a></h3>
                                    </div>
                                    <c:forEach items="${ListP1}" var = "o">
                                        <div class="menus d-flex ftco-animate">
                                            <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                                <div class="text">
                                                        <div class="d-flex">
                                                                <div class="one-half">
                                                                        <h3><a href="detail?pid=${o.product_id}">${o.product_name}</a></h3>
                                                                </div>
                                                                <div class="one-forth">
                                                                        <span class="price">$ ${o.price}</span>
                                                                </div> 
                                                        </div>
                                                        <p>${o.description}</p>
                                                </div>
                                            </div>
                                    </c:forEach>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4">
                            <div class="menu-wrap">
                                <div class="heading-menu text-center ftco-animate">
                                        <h3><a href="MainControl?action=menu">Adidas</a></h3>
                                </div>
                                <c:forEach items="${ListP2}" var = "o">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                            <div class="text">
                                                <div class="d-flex">
                                                        <div class="one-half">
                                                                <h3><a href="detail?pid=${o.product_id}">${o.product_name}</a></h3>
                                                        </div>
                                                        <div class="one-forth">
                                                                <span class="price">$ ${o.price}</span>
                                                        </div>
                                                </div>
                                                <p>${o.description}</p>
                                            </div>
                                        </div>
                                </c:forEach>
                            </div>
                        </div>

                            <div class="col-md-6 col-lg-4">
                                    <div class="menu-wrap">
                                            <div class="heading-menu text-center ftco-animate">
                                                    <h3><a href="MainControl?action=menu">Converse</a></h3>
                                            </div>
                                            <c:forEach items="${ListP3}" var = "o">
                                                <div class="menus d-flex ftco-animate">
                                                    <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                                        <div class="text">
                                                                <div class="d-flex">
                                                                        <div class="one-half">
                                                                                <h3><a href="detail?pid=${o.product_id}">${o.product_name}</a></h3>
                                                                        </div>
                                                                        <div class="one-forth">
                                                                                <span class="price">$ ${o.price}</span>
                                                                        </div>
                                                                </div>
                                                                <p>${o.description}</p>
                                                        </div>
                                                    </div>
                                            </c:forEach>
                                    </div>
                            </div>
                    </div>
            </div>

    </section>

    <section class="ftco-section testimony-section" style="background-image: url(images/img/img-size-l/slide-img2.jpg);">
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
                                                                    <p class="mb-4">The staff are lovely and very attentive. The shoes are very High quality.</p>
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
                                                                    <p class="mb-4">Shoes at the shop are very good and diverse. We will visit again.</p>
                                                                    <div class="user-img mb-4" style="background-image: url(images/img/customers/mbappe.jpg)">
                                                                            <span class="quote d-flex align-items-center justify-content-center">
                                                                                    <i class="fa fa-quote-left"></i>
                                                                            </span>
                                                                    </div>
                                                                    <p class="name">Kylian Mbappe</p>
                                                                    <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                      <div class="text p-3">
                                                                    <p class="mb-4">The shop space is very spacious. The shoes are comfortable. Staff is very cute.</p>
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
                                                                    <p class="mb-4">I just wanted to tell you that I love the Jordan.  All the products I have received are excellent!  I will be your customer for a long time!</p>
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
                                                                    <p class="mb-4">I just wanted to say thank you, received my order and everything was perfect!</p>
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

    <section class="ftco-section bg-light">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">               
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">CEO</span>
                                    <h2 class="mb-4">Our CEO</h2>
                            </div>
                    </div>
                    <div class="row">
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/img/CEO/ElonMusk.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Phan Hồng Sơn</h3>
                                                    <span class="position mb-2">CEO, Co Founder</span>
                                                    <div class="faded">
                                                            <p>Shoes are not just a fashion statement, they are also an essential accessory that protects our feet from injury and provides comfort during long hours of standing or walking.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/img/CEO/leminhtai.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Lê Minh Tài</h3>
                                                    <span class="position mb-2">Leader</span>
                                                    <div class="faded">
                                                            <p>Finding the perfect pair of shoes can be a challenging task, but once you do, they can make all the difference in your daily routine.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/img/CEO/Nhut.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Nguyễn Minh Nhựt</h3>
                                                    <span class="position mb-2">CEO</span>
                                                    <div class="faded">
                                                            <p>A good pair of running shoes can enhance your performance and prevent injuries, while a stylish pair of heels can add a touch of sophistication to any outfit</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/img/CEO/ElonMusk.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Phạm Hoàng Huy</h3>
                                                    <span class="position mb-2">Share holder</span>
                                                    <div class="faded">
                                                            <p>Shoes come in all shapes, sizes, and styles, from sneakers and sandals to boots and loafers, and each serves its unique purpose.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                    <div class="row d-flex">
                            <div class="col-md-6 d-flex">
                                    <div class="img img-2 w-100 mr-md-2" style="background-image: url(images/img/img-size-l/m_bn_2_1.jpg);"></div>
                                    <div class="img img-2 w-100 ml-md-2" style="background-image: url(images/img/img-size-l/m_bn_2_3.jpg);"></div>
                            </div>
                            <div class="col-md-6 ftco-animate makereservation p-4 p-md-5">
                                    <div class="heading-section ftco-animate mb-5">
                                            <span class="subheading">This is our secrets</span>
                                            <h2 class="mb-4">The Chosen One</h2>
                                            <p>Adidas, Nike, Converse and other footwear brands made headlines with their shoe marketing campaigns. Nike, for example, focuses on creating meaningful stories that evoke emotions. Adidas has emerged as a brand built on innovation, while Zappos delivers highly personalized customer experiences. While you may not have the same budget as these brands, you can still grow your shoe business and stay competitive by thinking outside the box.
                                            </p>
                                            <p><a href="reservation.jsp" class="btn btn-primary">Learn more</a></p>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section bg-light">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">Blog</span>
                                    <h2 class="mb-4">Recent Blog</h2>
                            </div>
                    </div>
                    <div class="row">
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img/blogs/nike.jpg');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>Oct 3, 2022</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp">Nike phát hành bộ sưu tập giày đá bóng "DAYBREAK". Cùng vào chiêm ngưỡng nào</a></h3>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img/blogs/adidas.jpg');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>Oct 23, 2021</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp">CEO Adidas: Chưa biết khi nào hãng sẽ tiếp tục hoạt động kinh doanh tại Nga</a></h3><br>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img/blogs/conv.jpg');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>June 29, 2021</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp"></a>Review giày Converse Classic - item thời trang cơ bản không thể thiếu</h3><br>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-intro bg-primary">
            <div class="container py-5">
                    <div class="row py-2">
                            <div class="col-md-12 text-center">
                                    <h2>Niềm vui của bạn là hạnh phúc của chúng tôi</h2>
                                    <a href="reservation.jsp" class="btn btn-white btn-outline-white">Let me help you</a>
                            </div>
                    </div>
            </div>
    </section>
<script>
        $(document).ready(function() {
          var totaldetail = $('#totalPrice span').text;
        });
</script>
<c:import url="/footer.jsp" />
<!-- <script>
    var close_footer = document.getElementsByClassName("close-footer")[0];
    close_footer.onclick = function () {
    modal.style.display = "none";
  };
</script>-->
