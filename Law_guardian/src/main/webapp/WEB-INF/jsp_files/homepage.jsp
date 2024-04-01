<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
 <style>
 

 body {
  background-image: url('https://images.unsplash.com/photo-1494972688394-4cc796f9e4c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed;
}
#report_a_crime{
	position:absolute;
	right:50px;
	background-color:transparent;
	opacity:0.6;
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

h3{
 position: absolute; 
font-family: courier;
color:white;
top: 230px; 
}
#button1{
	position: absolute;
	top:420px;
	left:80px;
	border: none;
	border-radius: 10px;
	font-family: courier;
	cursor: pointer;
	height:40px;
	width:90px;
	background-color: #EAECEE ;
	
}
#button2{
	position: absolute;
	top:420px;
	left:250px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	height:40px;
	font-family: courier;
	width:90px;
	background-color: #EAECEE ;
}
.navbar {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
    font-family: courier;
 }
  .card{
  display:none;
}
#card1{
	position:absolute;
	top:50px;
	left:0px;
	right:350px;
	color:white;
	background-color:transparent;
	font-family: courier;
	
}
#card2{
	position:absolute;
	top:50px;;
	left:35%;
	color:white;
	background-color:transparent;
	font-family: courier;
	
}





 </style>
 
 
	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Law Guardian</title>
</head>
<body>

	
	
 		<!-- nav bar-->
 		 <nav class="navbar navbar-expand-lg navbar-light bg-light">
	  		<a class="navbar-brand" href="#" style="pointer-events: none">Law Guardian</a>
	  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    		<span class="navbar-toggler-icon"></span>
	  		</button>
	  		<div class="collapse navbar-collapse" id="navbarNavDropdown">
	    		<ul class="navbar-nav">
	      			<li class="nav-item active">
	        			<a class="nav-link" href="#" data-card-id="card1">About us <span class="sr-only"></span></a>
	      			</li>
	      			<li class="nav-item">
	        			<a class="nav-link" href="#" data-card-id="card2">contact</a>
	      			</li>
	      			   
	    		</ul>
	  		</div>
	  		
	  		
	  	
	  		
	  		
		</nav>
		<!-- Headline for the homepage -->	
		 <h3>
			 		<div> Either I will come back after hoisting <div>
					<div>the Tricolor,or I will come back wrapped</div> 
					<div>in it. But I will be back for sure.</div>
			  	    <div>--Captain Vikram Batra 
		 </h3>
			  	    
		
		<!-- form for sign in and login -->	  	    
		 <div >
				<form action ="sign_in_police" >
					
					<button id="button1">Signin</button>
			    </form>
			
				<form action="log_in_police">
					<button id="button2">login</button>
				</form>
		 </div> 	
	
		<!-- About us -->    
		<div class="card" id="card1" style="display:none;">
	    	<div >
		    	
		    	
		    	<p><span id="W_Name2">Law Guardian</span> is a Professional <span id="W_Type1">stores the
		    	 criminal data</span> Platform. Here we will provide you only interesting content, which 
		    	 you will like very much. We're dedicated to providing you the best of <span id="W_Type2">
		    	 stores the criminal data</span>, with a focus on dependability and <span id="W_Spec">Law
		    	 and order maintiainence and retirval</span>. We're working to turn our passion for 
		    	 <span id="W_Type3">stores the criminal data</span> into a booming
		    	  online website. We hope you enjoy our <span id="W_Type4">stores the criminal data</span> as much as we enjoy offering them to you.</p>
	       
	   		 </div>   
		</div>
		
		<!-- contact us -->
		<div class="card" style="display:none;" id="card2">
			<div>
				<h4>Contact us</h4>
				<h5>Email:lawguardian@gmail.com</h5>
				<h5>phone:9845672312</h5>
				<p>Thank you for contacting<br>
				we will reply as soon as possible</p>
				
			</div>
		</div>	
		
		<!-- form to report a crime -->
		<div id="report_a_crime">
			<div class="wrapper">
			    <h2>Report a crime</h2>
			    <form action="crime_report"  method="post">
				      <div class="input-box">
				        <input type="text" placeholder="Enter your name" name ="victim_name"required>
				      </div>
				      <div class="input-box">
				        <input type="text" placeholder="Enter your complaint" name="place_where_crime_occured"required>
				      </div>
				      <div class="input-box">
				        <input type="text" placeholder="Description of crime"  name="crime_report_to"required>
				      </div>
				      <div class="input-box">
				        <input type="text" placeholder="identifying marks of criminal" name="identifying_marks_of_criminal" required>
				      </div>
				      <div class="input-box">
				        <input type="text" placeholder="gender of criminal" name="gender_of_criminal" required>
				      </div>
				      
				      <div class="input-box button">
				        <input type="Submit" value="Report">
				      </div>
				      <p>${message}</p>
				      
				    </form>
	  		</div>
  		</div>
		<!-- script for the nav bar -->
		<script>
		//Get all elements with the class 'showCard'
			var showCardButtons = document.querySelectorAll('.nav-link');
		
			// Loop through each button and add event listeners
			showCardButtons.forEach(function(button) {
			  button.addEventListener('click', function(event) {
			    event.preventDefault();
			    
			    // Get the data-card-id attribute value to determine which card to display
			    var cardId = button.getAttribute('data-card-id');
		
			    // Hide all cards
			    document.querySelectorAll('.card').forEach(function(card) {
			      card.style.display = 'none';
			    });
		
			    // Display the specific card
			    document.getElementById(cardId).style.display = 'block';
			  });
			});
		
			document.addEventListener('click', function(event) {
			  // Check if the click is outside any card or button
			  if (!event.target.closest('.card') && !event.target.classList.contains('nav-link')) {
			    // Hide all cards
			    document.querySelectorAll('.card').forEach(function(card) {
			      card.style.display = 'none';
			    });
			  }
			});
	  	 </script>
	
	

	
	
</body>
</html>