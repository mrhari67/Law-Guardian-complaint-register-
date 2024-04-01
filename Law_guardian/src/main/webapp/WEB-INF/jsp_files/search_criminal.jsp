
<%@ page import=" com.sign_in_police.criminal" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&family=Roboto:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<title>Search criminal</title>
<style>
	
 body {
  background-image: url('https://images.unsplash.com/photo-1546450334-5a84ac3a1f0e?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed;
}
main {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 50px;
  font-family: 'Roboto', sans-serif;
  opacity:0.8;
  background-color:transparent;
}

.card {
  width: 24rem;
  height: 34rem;
  border-radius: 10px;
  overflow: hidden;
  cursor: pointer;
  position: relative;
  color: $color-primary-white;
  box-shadow: 0 10px 30px 5px rgba(0, 0, 0, 0.2);
 
  img {
    position: absolute;
    object-fit: cover;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    opacity: 0.9;
    transition: opacity .2s ease-out;
  }

  h3 {
    position: absolute;
    inset: auto auto 30px 30px;
    margin: 0;
    transition: inset .3s .3s ease-out;
    font-family: 'Roboto Condensed', sans-serif;
    font-weight: normal;
    text-transform: uppercase;
    color:white;
  }
  
  p, a {
    position: absolute;
    opacity: 0;
    max-width: 80%;
    transition: opacity .3s ease-out;
    color:white;
  }
  
  p {
    inset: auto auto 80px 30px;
    color:white;
  }
  
  a {
    inset: auto auto 40px 30px;
   	color:white;
    text-decoration: none;
  }
  
  &:hover h3 {
    inset: auto auto 330px 30px;
    transition: inset .3s ease-out;
    
  }
  
  &:hover p, &:hover a {
    opacity: 1;
    transition: opacity .5s .1s ease-in;
   
  }
  
  &:hover img {
    transition: opacity .3s ease-in;
    opacity: 1;
    color:grey;
  }

}

.material-symbols-outlined {
  vertical-align: middle;
}

.navbar {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
    font-family: courier;
 }
 .cardabout{
display:none;
}


.cardcontact{
display:none;}




#card1{
	position:absolute;
	top:32px;
	right:75%;
	color:white;
	background-color:transparent;
	font-family: courier;
	
}
#card2{
	position:absolute;
	top:50px;;
	left:75%;
	color:white;
	background-color:transparent;
	font-family: courier;
	
}
 
</style>
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
 


</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  		<a class="navbar-brand" href="#" style="pointer-events: none">Law Guardian</a>
	  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    		<span class="navbar-toggler-icon"></span>
	  		</button>
	  		<div class="collapse navbar-collapse" id="navbarNavDropdown">
	    		<ul class="navbar-nav">
	      			<li class="nav-item active">
	        			<a class="nav-link" href="#" id="cardab">about us </span></a>
	      			</li>
	      			<li class="nav-item">
	        			<a class="nav-link" href="#" id="cardco">Contact</a>
	      			</li>
	      			   
	    		</ul>
	  		</div>
	  		
	  		
	  		
	  		
		</nav>		
	
	

<main>
	
	<c:forEach var="item" items="${criminalList}">
  <div class = "card">
    <img src="images/${item.getPhoto_path()}" alt="">
    <div class="card-content">
      <h3>
       	${item.getName()}<br>
      </h3>
     
        <p>
        	
        		
	        	
	        	Fir_NO: ${item.getFir_no()}<br>
	        	Gender:${item.getGender()}<br>
	        	Address:${item.getAddress()}<br>
	        	Date of Birth:${item.getDob()}<br>
	        	Crimes Done:${item.getCrimes_committed()}<br>
	        	Usage of weapons:${item.getWeapons_expert()}<br>
	        	BirthMarks/Scars:${item.getBirthmarks_scars()}<br>
	        	Proofs:${item.getProofs()}
        		
        	
		</p>
		
		      
    </div>
    
  </div>
  </c:forEach>
  
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
		
</main>	
</body>
</html>