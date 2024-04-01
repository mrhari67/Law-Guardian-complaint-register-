<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
document.addEventListener('DOMContentLoaded',function(){
document.getElementById('showCardLink').addEventListener('click', function(event) { 
	event.stopPropagation();
    document.getElementById('cardContainer').style.display = 'block';
    document.addEventListener('click', clickOutsideCard);
	});
});	
	



function clickOutsideCard(event) {
    const cardContainer = document.getElementById('cardContainer');
    const card = document.getElementById('card');

    if (!cardContainer.contains(event.target) || card.contains(event.target)) {
        cardContainer.style.display = 'none';
        document.removeEventListener('click', clickOutsideCard);
    }
}

	<div class="cards">
    	<div id="card1">
	    	<h2>About Us!</h2>
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
	
	
#cardContainer{
 	display:none;
 }

#card{
	position:absolute;
	right:50px;
	top:50px;
	background-color:transparent;
	opacity:0.4;
	font-family: courier;
	color:black;
}

	
	