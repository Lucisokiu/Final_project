<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/img/blogs/adidas.jpg" type="image/x-icon" />
    <title>Happy Shoes Shop | Blog</title>
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
                <li class="nav-item active"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="ManagerProductControl?action=ManagerProductControl" class="nav-link">Manager Product</a></li>
                <li class="nav-item"><a href="MainControl?action=ManagerAccount" class="nav-link">Manager Account</a></li>
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
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/img/blogs/nike.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center mb-5">
            <h1 class="mb-2 bread">Blog</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Blog <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
     <div class="container">
      <div class="row">
        <div class="col-md-4 ftco-animate">
          <div class="blog-entry">
            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img/blogs/nike.jpg');">
            </a>
            <div class="text px-4 pt-3 pb-4">
              <div class="meta">
                <div><p>August 3, 2021</p></div>
                <div><p>Dương Tôn Phát</p></div>
              </div>
              <h3 class="heading"><a href="blog-single.jsp">Nike phát hành bộ sưu tập giày đá bóng "DAYBREAK"</a></h3>
              <div class="blog-landing-article-excerpt small-paragraph">
                <p>Như vậy là chỉ ít ngày sau khi Nike Phantom GT ra mắt, Nike tiếp tục cho lên kệ phối màu của 2 dòng giày còn lại là Mercurial và Tiempo Legend, tạo nên một bộ sưu tập đầy đủ. Tên gọi được The Swoosh lựa chọn để đặt cho những phối màu mới này là “Daybreak”. Dường như cái tên này đã được Nike lựa chọn từ khá lâu rồi.</p>
              </div>
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
                <div><p>August 2, 2021</p></div>
                <div><p>Thu Hoài </p></div>
              </div>
              <h3 class="heading"><a href="blog-single.jsp">CEO Adidas: Chưa biết khi nào hãng sẽ tiếp tục hoạt động kinh doanh tại Nga</a></h3>
              <div class="blog-landing-article-excerpt small-paragraph">
                <p>Adidas đã báo cáo triển vọng năm 2022 tươi sáng vào 9/3, dự báo doanh số bán hàng sẽ tăng từ 11% đến 13%, có tính đến rủi ro kinh doanh ở Nga và Ukraina.
                </p>
              </div>
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
                <div><p>August 3, 2020</p></div>
                <div><p>Minh Nhựt</p></div>
              </div>
              <h3 class="heading"><a href="blog-single.jsp">Review giày Converse Classic - item thời trang cơ bản không thể thiếu</a></h3>
              <div class="blog-landing-article-excerpt small-paragraph">
                <p>Sở hữu vẻ ngoài cổ điển, thiết kế đơn giản, chính là đặc điểm nổi bật nhất của những đôi Converse Classic. Màu sắc được lựa chọn cũng tương đối đơn giản, vintage, và chất lượng bền bỉ không đối thủ của dòng giày này đã định hình trên toàn thế giới. Để giúp các bạn hiểu được rõ hơn về dòng sản phẩm đỉnh cao này, WearVn đã bỏ công review giày Converse Classic, giúp các bạn chọn đồ đơn giản dễ dàng hơn!</p>
              </div>
              <p class="clearfix">
                <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row no-gutters my-5">
        <div class="col text-center">
          <div class="block-27">
            <ul>
              <li><a href="#">&lt;</a></li>
              <li class="active"><span>1</span></li>
              <!-- <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li> -->
              <li><a href="#">&gt;</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    </section>

    <c:import url="/footer.jsp" />