<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/test-image.jpg" type="images/x-icon" />
    <title>Happy Shoes Shop | Checkout</title>
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
<!--  -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/img-size-l/m_bn_2_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-5">
            <h1 class="mb-2 bread">Check out</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Check out <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    
    <main role="main">
        <div class="container mt-4">
            <form action="${pageContext.request.contextPath}/checkout" name="frmthanhtoan" method="post">
                <input type="hidden" name="checkoutName" value="${username}">

                <div class="py-5 text-center">
                    <i style="color: #e52b34;" class="fa fa-credit-card fa-4x " aria-hidden="true"></i>
                    <h2>Check out</h2>
                    <p class="lead">Please check customer information, cart information before placing an order.</p>
                </div>


                <div class="row">
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Cart</span>
                            <!-- <span class="badge badge-secondary badge-pill">2</span> -->
                        </h4>
                        <ul class="list-group mb-3">
                            <!-- <input type="hidden" name="sanphamgiohang[1][sp_ma]" value="2">
                            <input type="hidden" name="sanphamgiohang[1][gia]" value="39$">
                            <input type="hidden" name="sanphamgiohang[1][soluong]" value="2"> -->
                            <c:forEach items="${sessionScope.listCard}" var = "o">
                                <input type="hidden" name="product_id" value="${o.product_id}">
                                <input type="hidden" name="quantity" value="${o.quantity}">

                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">Price</h6>
                                    <small class="text-muted">${o.price} x ${o.quantity}</small>
                                <!-- <span class="text-muted">${o.price}</span> -->
                                    <h6 class="my-0">Name Shoes</h6>
                                    <small class="text-muted">${o.product_name}</small>
                                </div>

                            </li>

                            </c:forEach>

                            <!-- <input type="hidden" name="sanphamgiohang[2][soluong]" value="1"> -->

                            <!-- <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">Price</h6>
                                    <small class="text-muted">700 $ x 2</small>
                                </div>
                                <span class="text-muted">1400 $</span>
                                    <h6 class="my-0">Name Shoes</h6>
                                    <small class="text-muted">39$ x 1</small>
                                </div>
                                <span class="text-muted">39$</span> -->
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Shipping</span>
                                <span class="text-muted">5$</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total</span>
                                <c:set var="total" value="0" />
                                <c:forEach var="o" items="${sessionScope.listCard}">
                                  <c:set var="subtotal" value="${o.quantity * o.price}" />
                                  <c:set var="total" value="${total + subtotal}" />
                                </c:forEach>
                                <strong>${total}</strong>
                            </li>
                        </ul>
                    </div>
                </div>

                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Customer Information</h4>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="kh_tenUser">User Name</label>
                                <input type="text" class="form-control" name="username" id="kh_tenUser"
                                    value="${username}">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_tenName">Full Name</label>
                                <input type="text" class="form-control" name="fullname" id="kh_tenName"
                                    value="${fullname}">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_diachi">Address</label>
                                <input type="text" class="form-control" name="checkoutAddress" id="kh_diachi"
                                    value="${address}">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_dienthoai">Phone</label>
                                <input type="text" class="form-control" name="checkoutPhone" id="kh_dienthoai"
                                    value="${phone}">
                            </div>
                            <div class="col-md-12">
                                <label for="kh_email">Email</label>
                                <input type="text" class="form-control" name="checkoutEmail" id="kh_email"
                                    value="${email}">
                            </div>
                            
                        </div>
                        <br>
                        <h4 class="mb-3">Payment</h4>

                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="httt-3" name="httt_ma" type="radio" class="custom-control-input" required=""
                                    value="3">
                                <label class="custom-control-label" for="httt-3">Ship COD</label>
                            </div>
                        </div>
                        <hr class="mb-4">
                        <button class="btn btn-primary btn-lg btn-block" type="submit" name="btnDatHang">Order</button>
                   <br><br>
                    </div>

            </form>

        </div>
        <!-- End block content -->
    </main>
<c:import url="/footer.jsp" />