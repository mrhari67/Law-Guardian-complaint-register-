<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<div class="cards">
			<div id="card2">
				<h3>Contact us</h3>
				<h4>Email:lawguardian@gmail.com</h4>
				<h4>phone:9845672312</h4>
				<p>Thank you for contacting<br>
				we will reply as soon as possible</p>
				
			</div>
		</div>
		
		<script>
			document.addEventListener('DOMContentLoaded',function(){
		document.getElementById('showCardLink3').addEventListener('click', function(event) { 
		event.stopPropagation();
	    document.getElementById('cardContainer2').style.display = 'block';
	    document.addEventListener('click', clickOutsideCard);
			});
		});	
		
	
	
	
		function clickOutsideCard(event) {
	    	const cardContainer = document.getElementById('cardContainer2');
	    	const card = document.getElementById('card2');
	
	    	if (!cardContainer.contains(event.target) || card.contains(event.target)) {
		        cardContainer.style.display = 'none';
		        document.removeEventListener('click', clickOutsideCard);
	    	}
		}
	</script>
</body>
</html>