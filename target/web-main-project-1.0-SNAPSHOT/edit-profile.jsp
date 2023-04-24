<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
  <title>Magic Shop - Bakery | Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/profile.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    
    <div class="container emp-profile">
        <div class="row">
            <div class="col-md-4">
                <div class="profile-img">
                    <img src="images/test-image.jpg" alt=""/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="profile-head">
                            <h5>
                                ${username}
                            </h5>
                            <h6>
                                Customer
                            </h6>
                            
                            <div class="card-block">
                                <ul class="social-link list-unstyled m-l m-t-10">
                                    <li><a href="https://www.facebook.com/profile.php?id=100008171112369" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="mdi mdi-facebook feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="https://twitter.com/bts_twt" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter" data-abc="true"><i class="mdi mdi-twitter feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="https://www.instagram.com/uwuchihahaha/?fbclid=IwAR1ParVEn2-FrUCQ6joTdhlmX4urtE3Xpo59sssnft8PEfsVFiH7Te0VmSg" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="mdi mdi-instagram feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <a href="user-profile.jsp">
                    <input type="submit" class="profile-edit-btn" name="btnCancel" value="Cancel"/>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="profile-work">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                        <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <form action ="saveprofile" method="post">
                            <div class="row">
                                <div style="width: 90px">
                                    <label>User Name</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="usernameup" type="text" value="${username}">
                                </div>
                            </div>

                            <div class="row">
                                <div style="width: 90px">
                                    <label>Password</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="passup" type="password" value="${pass}">
                                </div>
                            </div>

                            <div class="row">
                                <div style="width: 90px">
                                    <label>Full Name</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="fullnameup" type="text" value="${fullname}">
                                </div>
                            </div>

                            <div class="row">
                                <div style="width: 90px">
                                    <label>Email</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="emailup" type="email" value="${email}">
                                </div>
                            </div>

                            <div class="row">
                                <div style="width: 90px">
                                    <label>Phone</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="phoneup" type="text" value="${phone}">
                                </div>
                            </div>

                            <div class="row">
                                <div style="width: 90px">
                                    <label>Address</label>
                                </div>
                                <div class="col-md-6">
                                    <input style="min-width: 75%" name="addressup" type="text" value="${address}">
                                </div>
                            </div><br>
                            <div class="col-md-6">
                                <input type="submit" class="profile-edit-btn" name="btnSave" value="Save"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>