
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/img/blogs/adidas.jpg" type="image/x-icon" />
    <title>Happy Shoes Shop | Cartcontrol</title>
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
    <link rel="stylesheet" href="css/manager.css">

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
                <li class="nav-item "><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
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
                <li class="nav-item "><a href="ManagerProductControl?action=ManagerProductControl" class="nav-link">Manager Product</a></li>
                <li class="nav-item active"><a href="ManagerAccount?action=ManagerAccount" class="nav-link">Manager Account</a></li>
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
			  
                    <!-- <div id="myModal" class="modal">
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
                            <span class="cart-total-price">price</span>
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
		</div> -->
	</nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/img-size-l/m_bn_2_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                    <div class="row no-gutters slider-text align-items-end justify-content-center">
                            <div class="col-md-9 ftco-animate text-center mb-5">
                                    <h1 class="mb-2 bread">Manager Account</h1>
                                    <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Manager Account<i class="fa fa-chevron-right"></i></span></p>
                            </div>
                    </div>
            </div>
    </section>
    
    <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Account</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <!-- <a href="#addEmployeeModal" id="addNewProduct"  class="btn btn-success" data-toggle="modal"><i class=" material-icons fa-solid fa-circle-plus"></i><span>Add New Account</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons fa-solid fa-circle-minus"></i> <span>Delete</span></a>						 -->
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Checkbox</th>
                            <th>ID_account</th>
                            <th>ID_product</th>
                            <th>Product_Name</th>
                            <th>Quantity</th>
                            <th>Odered</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.listAllCard}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.account_id}</td>
                                <td>${o.product_id}</td>
                                <td>${o.product_name}</td>
                                <td>${o.quantity}</td>
                                <td>${o.enable}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <a href="MainControl?action=home"><button type="button" class="btn btn-primary">Back to home</button></a>

        </div>
        <!-- Edit Modal HTML -->
        <!-- <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div> -->
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </a>
    <script src="js/manager.js" type="text/javascript"></script>

<script src="js/manager.js" type="text/javascript"></script>

<c:import url="/footer.jsp" />

