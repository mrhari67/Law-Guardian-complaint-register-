<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
    	@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-image:url('https://images.unsplash.com/photo-1569242840510-9fe6f0112cee?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px #EAECEE;
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background:#EAECEE;
  color: black;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #EAECEE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #EAECEE;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: black;
  letter-spacing: 1px;
  border: none;
  background: #EAECEE;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #EAECEE;
}
form .text h3{
 color: #EAECEE;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color:#EAECEE;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
    </style>
    <title>sign in</title>
   </head>
<body>
  <div class="wrapper">
    <h2>Registration</h2>
    <form action="sign_in_police_register" method="post">
      <div class="input-box">
        <input type="text" placeholder="Enter your police ID name" name ="username"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email" name="email"required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password"  name="password"required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Confirmpassword" name="confirmPassword" required>
      </div>
      
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
      <p>${message}</p>
      
    </form>
  </div>
</body>
</html>