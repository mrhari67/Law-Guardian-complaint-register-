
<%@ page import=" com.sign_in_police.criminal" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
 body {
  background-image: url('https://images.unsplash.com/photo-1509462757601-b142a3aa6061?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed;
}




#input-box-button{
	position: absolute;
	top:450px;
	right:388px;
	cursor: pointer;
	height:30px;
	font-family: courier;
	width:112.2px;
	background-color: #EAECEE ;
	border-radius:12px;
	border:none;
	opacity:0.5;
	background-color:transparent;
}
#input-box-button2{
	position: absolute;
	top:450px;
	right:100px;
	cursor: pointer;
	height:30px;
	font-family: courier;
	width:112.2px;
	background-color: #EAECEE ;
	border-radius:12px;
	border:none;
	opacity:0.5;
	background-color:transparent;
}
#input-box-button3{
	position: absolute;
	top:450px;
	left:362px;
	cursor: pointer;
	height:30px;
	font-family: courier;
	width:200px;
	background-color: #EAECEE ;
	border-radius:12px;
	border:none;
	opacity:0.5;
	background-color:transparent;
}

#update_input{
	position: absolute;
	top:453px;
	right:220px;
	cursor: pointer;
	background-color: #EAECEE ;
	border-radius:12px;
	border:none;
	opacity:0.5;
	background-color:transparent;
}
#crime_report_search{
	position:absolute;
	top:452px;
	left:242px;
	cursor: pointer;
	background-color: #EAECEE ;
	border-radius:12px;
	border:none;
	opacity:0.5;
	background-color:transparent;
}

#firtable{
	position: absolute;
	right:100px;
	top:200px;
	height: 200px;
	width:401px;
	display:inline;
	opacity:0.9;
	overflow:auto;
	background-color:transparent;
}
#crimetable{
	position: absolute;
	left:100px;
	top:200px;
	height: 200px;
	width:400px;
	opacity:0.9;
	overflow:auto;
	background-color:transparent;
}
.table-wrapper-scroll-y {
display: block;
}
.my-custom-scrollbar {
	border-spacing: 0;
	border: none;
	font-family: courier;
	overflow: auto;
	opacity:0.6;
	background-color:transparent;
	overflow: auto;
	font-family: courier;
	border-spacing: 0;
	border: none;
	

}


	table{
	opacity:0.5;
	background-color:transparent;
	border:none;
	border-collapse:collapse;
	border-spacing: 0.9;
	font-family: courier;
	}
	td,th,tr{
	border:none;
	padding: 0;
	border-spacing: 0;
	border: none;
	font-family: courier;
	opacity:0.9;
	
	}




.search{
 	padding-top: 3px;
    padding-bottom: 3px;
    font-family: courier;
    
 }
 

 .fir_no{
 	width:75px;
 	height:25px;
 }

.stats{

    background: #f2f5f8 !important;

    color: #000 !important;
}
.articles{
  font-size:10px;
  color: #a1aab9;
}
.number1{
  font-weight:500;
}
.followers{
    font-size:10px;
  color:#717D7E;

}
.number2{
  font-weight:500;
}
.rating{
    font-size:10px;
  color: #717D7E;
}
.number3{
  font-weight:500;
}

.hidden{
display:none;
}

#cardname{
	position:absolute;
	right:0px;
	top:0px;
	background-color:transparent;
	opacity:0.4;
	
	
}

.cardabout{
display:none;
}


.cardcontact{
display:none;}




#card1{
	position:absolute;
	top:0px;
	left:0px;
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

.navbar {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
    font-family: courier;
 }

</style>

<!-- profile card script -->
<script>
document.addEventListener("DOMContentLoaded", function () { 
    const showCardButton = document.getElementById("showCard");
    const card = document.getElementById("cardname");

    showCardButton.addEventListener("click", function (event) {
        event.preventDefault();
        card.classList.toggle("hidden");
    });

    document.addEventListener("click", function (event) {
        const isClickInsideCard = card.contains(event.target);
        const isClickOnButton = showCardButton.contains(event.target);
		console.log("clicked somewhere else");
        if (!isClickInsideCard && !isClickOnButton && !card.classList.contains("hidden")) {
            card.classList.add("hidden");
        }
    });
});


</script>

<!-- About us script -->
<script>
document.addEventListener("DOMContentLoaded", function () { 
    const showCardButton = document.getElementById("cardab");
    const card = document.getElementById("card1");

    showCardButton.addEventListener("click", function (event) {
        event.preventDefault();
        card.classList.toggle("cardabout");
    });

    document.addEventListener("click", function (event) {
        const isClickInsideCard = card.contains(event.target);
        const isClickOnButton = showCardButton.contains(event.target);
		console.log("clicked somewhere else");
        if (!isClickInsideCard && !isClickOnButton && !card.classList.contains("cardabout")) {
            card.classList.add("cardabout");
        }
    });
});


</script>

<!-- contact us script -->  		
<script>
document.addEventListener("DOMContentLoaded", function () { 
    const showCardButton = document.getElementById("cardco");
    const card = document.getElementById("card2");

    showCardButton.addEventListener("click", function (event) {
        event.preventDefault();
        card.classList.toggle("cardcontact");
    });

    document.addEventListener("click", function (event) {
        const isClickInsideCard = card.contains(event.target);
        const isClickOnButton = showCardButton.contains(event.target);
		console.log("clicked somewhere else");
        if (!isClickInsideCard && !isClickOnButton && !card.classList.contains("cardcontact")) {
            card.classList.add("cardcontact");
        }
    });
});


</script>  		
  		
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<title>Home</title>

</head>
<body>
		<!--. nav bar..-->
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  		<a class="navbar-brand" href="#" style="pointer-events: none">Law Guardian</a>
		  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    		<span class="navbar-toggler-icon"></span>
		  		</button>
		  		<div class="collapse navbar-collapse" id="navbarNavDropdown">
		    		<ul class="navbar-nav">
		      			
		      			<li class="nav-item">
		        			<a class="nav-link" href="#" id="cardab">About us </a>
		      			</li>
		      			<li class="nav-item">
		        			<a class="nav-link" href="#" id="cardco">Contact</a>
		      			</li>     
		    		</ul>
		  		</div>
	  		<!--. username in the nav bar..-->
	  		 <div class="d-flex">
	  				<form action="search_criminal" method="post" class="search">
	  				<input type="text"  name="username" value="${username}" style="display:none" >
					<input type="text"  name="email" value="${email}" style="display:none" >
						<input type="text" class="fir_no" name="fir_no" placeholder=" fir_no" class="input">
						<button type="submit" class="btn" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
							</svg>
						</button> 
					</form>
	  					<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
	  					<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
	  					<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
	  					</svg>
	  					<a class="navbar-brand" href="#"  id="showCard"> ${username}</a>
	  				</div>
	  		</nav>
	

	

			<!-- table displaying the fir and names -->
			<div style="display:block">
				<div class="table-wrapper-scroll-y my-custom-scrollbar">
		
		  		<table class="table table-borderless table-striped mb-0" id="firtable" style="overflow-y:auto;">
		  
				      <thead>
							<tr>
								<th>Fir_Num</th>
								<th>Criminal Name</th>
								<th>Sex of criminal </th>
							</tr>
						</thead>
				    
		    			<tbody>
							<c:forEach var="item" items="${criminalList}">
								<tr>
									<td>${item.getFir_no()}</td>
									<td>${item.getName()}</td>
									<td>${item.getGender()}</td>
								</tr>
							</c:forEach>
						</tbody>
		   
		  		</table>
		  		
		  		

				</div>
			</div>
			
			<!-- table for displaying the crimes -->	
		
				<div class="table-wrapper-scroll-y my-custom-scrollbar">
					<table class="table table-borderless table-striped mb-0" id="crimetable" style="overflow-y:auto;display:inline;">
						<thead>
							<tr>
								<th>Name</th>
								<th>Report</th>
								<th>BirthMarks</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${criminal_Report_List}">
							<tr>
									<td>${item.getVictim_name()}</td>
									<td>${item.getPlace_where_crime_occured()}</td>
									<td>${item.getIdentifying_marks_of_criminal()}</td>
							</tr>	
							</c:forEach>
						</tbody>
					</table>
				</div>
			
			
			
			<!-- inserting criminal form -->
			<form action ="insert_criminal" >
				<div id="input-box-button">
					<button>Insert FIR</button>
				</div>
			</form>
			
			<!-- updateing criminal form -->
			<form action="update_criminal_page" method="post">
				<div id="update_input">
					<input type="text"  class="fir_no" name="fir_no" placeholder=" fir_no" class="input">
				</div>
		
				<div id="input-box-button2">
					<button>Update FIR</button>
				</div>
				
				<!-- Names to display in the profile card -->
				<input type="text"  name="username" value="${username}" style="display:none" >
				<input type="text"  name="email" value="${email}" style="display:none" >
			</form>
			
			<!-- searching the  criminal Report -->
			<form action="search_victim" method="post">
				<div id="crime_report_search">
					<input type="text"  class="victim_name" name="victim_name" placeholder="Victime Name"  class="input" style="width:110px;">
				</div>
		
				<div id="input-box-button3">
					<button>Crime Details</button>
				</div>
				
				<!-- Names to display in the profile card -->
				<input type="text"  name="username" value="${username}" style="display:none" >
				<input type="text"  name="email" value="${email}" style="display:none" >
			</form>
	
			<!-- profile card -->
			<div >
				<div id="cardname" class="hidden">
			
					<div class="container mt-5 d-flex justify-content-center">
							<div class="card p-3">
								<div class="d-flex align-items-center">
									<div class="image">
                						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc3AHLIWAFfnJG135KywgwNfQ5o6ZplrDUlg&usqp=CAU" class="rounded" width="155" >
                					</div>
									<div class="ml-3 w-100">
                    					<h4 class="mb-0 mt-0">${username}</h4>
                   							<span>${email}</span><br>
                   							
                   								<a href="<c:url value='/change_pswd_page'/>?username=${param.username}" style="color:#717D7E">Change Password</a>
                   							
                   							
                 						<div class="button mt-2 d-flex flex-row align-items-center">
											<form action="log_out">
												 <button class="btn btn-sm btn-primary w-100 ml-2" style="background-color:#717D7E" >Logout</button>
											</form>
               							</div>
               						</div>
								</div>
                			</div>
             		</div>
				</div>
			</div>
	
			
			<!-- about us -->
			<div class="cardabout" id="card1" >
	    		<div >
		    	
			    	<h3 style="text-align: center;">Welcome To <span id="W_Name1">Law Guardian</span></h3>
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
			<div class="cardcontact"  id="card2">
				<div>
					<h4>Contact us</h4>
					<h5>Email:lawguardian@gmail.com</h5>
					<h5>phone:9845672312</h5>
					<p>Thank you for contacting<br>
					we will reply as soon as possible</p>
					
				</div>
			</div>	
	

	
	
</body>
</html>