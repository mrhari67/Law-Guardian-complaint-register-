<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>   
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> new fir</title> 
    
    
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
  background-image:url('https://plus.unsplash.com/premium_photo-1661901234139-d833950e05e0?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
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
   </head>
<body>
  <div class="wrapper">
    <h2>Insert Fir</h2>
    <form:form action="insert_criminal_data" method="post"   enctype ="multipart/form-data">
     		  <div class="input-box">
        		<input type="text" placeholder="enter the fir_no" name="fir_no" required>
      		  </div>
      <div class="input-box">
        	<input type="file" id="avatar" name="photo" accept="image/*" />
      </div>
      	
      <div class="input-box">
        <input type="text" placeholder="Enter criminal name" name ="name"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter dob of criminal" name="dob" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the gender of criminal"  name="gender"required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the age of criminal" name="age" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the address of criminal" name="address" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the crimes" name="crimes_committed">
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the weapons expert in" name="weapons_expert" >
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the birthmarks" name="birthmarks_scars" >
      </div>
      <div class="input-box">
        <input type="text" placeholder="enter the evidence" name="proofs" >
      </div>
      <div class="input-box button">
        <input type="Submit" value="Insert">
      </div>
      <p>${message}</p>
    </form:form>
  </div>
</body>
</html>