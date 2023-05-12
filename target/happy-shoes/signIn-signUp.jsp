<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="icon" href="/images/test-image.jpg" type="image/x-icon" />
  <title>Happy Shoes Shop | Sign In/Up</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/signIn-Up.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
  
</head>
<body>
    <br>
    <h2>Sign In or Sign Up</h2>
        <div class="container" id="container" style="width: 795px;max-width: 100%;min-height: 535px;">
            <div class="form-container sign-up-container">
                <form action="signup" method="post">
                    <h1>Create Account</h1>
                    
                    <input name="user" type="text" placeholder="User name" />
                    <input name="email" type="email" placeholder="Email"/>
                    <input name="pass" type="password" placeholder="Password"/>
                    <input name="confirm" type="password" placeholder="Confirm password">
                    <input name="fullName" type="text" placeholder="Full Name">
                    <input name="address" type="text" placeholder="Address" />
                    <input name="phone" type="text" placeholder="Phone Number"/>
                    <input name="admin" type="text" placeholder="Admin Password"/>
                    <a href="./checkout.jsp"><button type="submit">Sign Up</button></a>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="signin" method="post">
                    <h1>Sign in</h1><br>
                    <span>or use your account</span>
                    <p class="text-danger" style="color: #ff4458">${mess}</p>
                    <input name ="user" type="text" placeholder="User name" />
                    <input name="pass" type="password" placeholder="Password" />
                    <!-- <a href="#">Forgot your password?</a> -->
                    <a href="./checkout.jsp"><button type="submit">Sign In</button></a>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');
    
        signUpButton.addEventListener('click', () => {
            container.classList.add('right-panel-active');
        });
    
        signInButton.addEventListener('click', () => {
            container.classList.remove('right-panel-active');
        });
    </script>

</body>
</html>