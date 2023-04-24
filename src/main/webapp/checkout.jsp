<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/header.jsp" />
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <form action="/Checkout" name="frmthanhtoan" method="post">
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
                            <span class="badge badge-secondary badge-pill">2</span>
                        </h4>
                        
                        <ul class="list-group mb-3">
                            <input type="hidden" name="sanphamgiohang[1][sp_ma]" value="2">
                            <input type="hidden" name="sanphamgiohang[1][gia]" value="39$">
                            <input type="hidden" name="sanphamgiohang[1][soluong]" value="2">

                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">Price</h6>
                                    <small class="text-muted">100$ x 1</small>
                                </div>
                                <span class="text-muted">100 $</span>
                            </li>
                            <input type="hidden" name="sanphamgiohang[2][sp_ma]" value="1">
                            <input type="hidden" name="sanphamgiohang[2][gia]" value="39$">
                            <input type="hidden" name="sanphamgiohang[2][soluong]" value="1">

                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">Price</h6>
                                    <small class="text-muted">700 $ x 2</small>
                                </div>
                                <span class="text-muted">1400 $</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Shipping</span>
                                <span class="text-muted">5$</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Total</span>
                                <strong>1500 $</strong>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Customer Information</h4>

                        <div class="row">
                            <div class="col-md-12">
                                <label for="checkoutName">User Name</label>
                                <input type="text" class="form-control" name="username" id="kh_ten"
                                    value="${username}">
                            </div>
                            <div class="col-md-12">
                                <label for="usersex">Full Name</label>
                                <input type="text" class="form-control" name="fullname" id="kh_ten"
                                    value="${fullname}">
                            </div>
                            <div class="col-md-12">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" name="checkoutAddress" id="kh_diachi"
                                    value="${address}">
                            </div>
                            <div class="col-md-12">
                                <label for="phone">Phone</label>
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
                </div>
            </form>

        </div>
        <!-- End block content -->
    </main>
<c:import url="/footer.jsp" />