<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vice Clutch</title>
  		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="icon" type="image/png" href="https://png.icons8.com/nolan/50/000000/robot.png">
		
  		
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  		
  		<!-- font awesome -->
  		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  		
  		<!-- three.js 
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/96/three.min.js"></script>
  		-->
  		
  		<!-- OAuth -->
  		<script src="https://apis.google.com/js/platform.js" async defer></script>
   		<meta name="google-signin-client_id" content="134536168908-c7rcocdeqlpquh69aj1650r5o0fq5951.apps.googleusercontent.com">
  
		<!--css file made by me -->
		<link rel="stylesheet" href="style.css">
		
		<!-- js file made by me --> 
		<script src="javascript.js" type="text/javascript"></script>
		
		
	
</head>
<body data-spy="scroll" data-target=".navbar" ">
		
		        <!-- Navigation Bar-->
		        <div class = "page">
		    
		    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		  <a class="navbar-brand" href="#"><img src="https://png.icons8.com/nolan/50/000000/robot.png" alt="iconImage"/>Vice Clutch</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarText">
		    <ul class="navbar-nav ml-auto">
		     
		      
		     <li class="nav-item">
		        <a class="nav-link" href="#aboutEvent" id ="aboutEventBtn"><i class="fa fa-car"></i> Event Details</a>
		      </li>
		      
		     <li class="nav-item">
		        <a class="nav-link active" href="#gallery" id ="galleryBtn"><i class="fa fa-photo"></i> Gallery</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="#register" id="registerBtn"><i class="fa fa-registered"></i> Register Here</a>
		      			
		      
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#aboutUs" id ="aboutUsBtn"><i class="fa fa-heart"></i> About Us</a>
		      
		        </li>
		      <li class="nav-item">
		        <a class="nav-link  btn btn-md btn-outline-danger" href="${pageContext.request.contextPath}/LogOutServlet"><i class="fa fa-sign-out"></i> Log Out</a>
		      </li>
		    </ul>
		    </div>
		</nav>  
		         <!-- END Navigation Bar-->
		         
		         
		         <!-- About Event -->
		         	<div id= "aboutEvent" style="color:#fff" class="text-center">
		         	<h2>ABOUT</h2>
		         	The team has to build a manually controlled robot which can do simple tasks of gripping blocks and putting them in different time zones so that it can complete the route by overcoming the obstacles in its path. The bot can be wired or wireless. In case the participants use a wireless mechanism, they must use a dual frequency remote.
		       <iframe src="https://myhub.autodesk360.com/ue2d47815/shares/public/SHabee1QT1a327cf2b7a512341bf730b8929?mode=embed" width="640" height="480" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"  frameborder="0"></iframe> 
		         	</div>
		         <!-- END About US -->
		         <!-- Gallery -->
		         	<div id= "gallery" class="text-center">
		         	<h2>GALLERY</h2>
		         	<br/>
		         	<div class="row">
		         	<div class="col-md-1"></div>
		         	<div class="col-md-2">
		         	<div class="card" style="width: 18rem;">
					  <img class="card-img-top" src="Images/irc.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Vice Clutch</h5>
					    <p class="card-text">
						While travelling in time, Nova certainly wishes to carry entities along for conservation, sustainability or even as a souvenir. How about a technological companion of Nova which can grip the object efficiently and transport it anywhere between the past, present and future time zones.</p>
					  </div>
					</div>
					</div>
					
		<div class="col-md-2"></div>
					<div class="col-md-2">
					<div class="card" style="width: 18rem;">
					  <img class="card-img-top" src="Images/irc.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Vice Clutch</h5>
					    <p class="card-text">
						While travelling in time, Nova certainly wishes to carry entities along for conservation, sustainability or even as a souvenir. How about a technological companion of Nova which can grip the object efficiently and transport it anywhere between the past, present and future time zones.</p>
					  </div>
					</div>
					</div>
		<div class="col-md-2"></div>			
					<div class="col-md-2">
					<div class="card" style="width: 18rem;">
					  <img class="card-img-top" src="Images/irc.jpg" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Vice Clutch</h5>
					    <p class="card-text">
						While travelling in time, Nova certainly wishes to carry entities along for conservation, sustainability or even as a souvenir. How about a technological companion of Nova which can grip the object efficiently and transport it anywhere between the past, present and future time zones.</p>
					  </div>
					</div>
					</div>
					<div class="col-md-1"></div>
					</div>
		         	</div>
		         <!-- END Gallery -->
		        
		         <!-- Register -->
		         	<div id= "register"  class="text-center">
					<div class="container">
					<h2>REGISTER</h2>
					<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
			        <form action="${pageContext.request.contextPath}/EventRegister">
			        	<div class="form-group">
			        	<label for="name">Name:</label>
			        	<input type = "text" value="${sessionScope.name}" class="form-control" disabled id = "name">
			        	<c:if test="${sessionScope.name == null }">
			        	<c:redirect url="index.jsp"></c:redirect>
			        	</c:if>
			        	</div>
					  <div class="form-group">
					    <label for="email">Email address:</label>
					    <input name="emailDummy" value = "${sessionScope.email}" class="form-control" type ="email" disabled id="emailDummy">
					    <input name="email" type="hidden" value="${sessionScope.email}">
					  </div>
					  
					  <div class="form-group" id="divMobile">	
					  <label for = "mobile">Mobile Number:</label>
					  <input type = "text" class="form-control" id="mobile" name="mobile">
					  <p id="errorMobile"></p>
					  </div>
					  
					  <div class="form-group" id="divCollege">	
					  <label for="college">College Name:</label>
					  <input type = "text" class="form-control" id="college" name="college">
					  <p id="errorCollege"></p>
					  </div>
					  
					  <div class="form-group" id="divBranch">
                            <label>Branch</label> <label class="control-label"></label> <select class="form-control" name="branch" id="branch">
                                <option value="NONE">-- SELECT BRANCH --</option>
                                <option value="CSE">CSE</option>
                                <option value="IT">IT</option>
                                <option value="Mechanical">Mechanical</option>
                                <option value="EC">EC</option>
                                <option value="EX">EX</option>
                                <option value="Automobile">Automobile</option>
                                <option value="PCT">PCT</option>
                                <option value="Civil">Civil</option>
                           		<option value="Other">Other</option>
                            </select>
                            <p id="errorBranch"></p>
                       </div>
                       
                        <div class="form-group" id="divYear">
                            <label>Year</label> <label class="control-label"></label> <select class="form-control" name="year" id="year">
                            <option value="NONE">-- SELECT YEAR --</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select> <span class="help-block"></span>
                            <p id="errorYear"></p>
                        </div>
					  <div class="text-center">
					  <button type="submit"  onclick ="return validateRegister()" class="btn btn-primary">Submit</button>
					  </div>
					</form>
					 </div>
					 </div>
					 
					</div>
		         	</div>
		         <!-- END Register -->
		          
		         <!-- About Us -->
		         	<div id= "aboutUs">
		         	<div class="container">
		         		<h2 class="text-center">ABOUT US</h2>
		         		Phoenix is the oldest official society of UIT RGPV which strives towards the goal of development of
                    students with its highly dedicated committee.
                    <br/>
                    <hr/>
                    <br/>
		         		<h3>LOCATION</h3>
		         		<div id="map" style="height: 500px; width:700px" class="container">
		         		<script>
			            function initMap() {
			                var location = { lat: 23.309704, lng: 77.358432 };
			                var map = new google.maps.Map(document.getElementById("map"), {
			                    zoom: 4,
			                    center: location
			                });
			                var marker = new google.maps.Marker({
			                    position: location,
			                    map: map
			                })
			                map.setZoom(17);
			                map.panTo(curmarker.position);
			            }
			
        			</script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6a_xJ1xKUisJOc2HQyOp9KZ7n4slcwiQ&callback=initMap">

        </script>
		         	</div>
		         	</div>
		         <!-- END About Us -->
		         
		  </div>
			<script>
			// Select all links with hashes
			$('a[href*="#"]')
			  // Remove links that don't actually link to anything
			  .not('[href="#"]')
			  .not('[href="#0"]')
			  .click(function(event) {
			    // On-page links
			    if (
			      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
			      && 
			      location.hostname == this.hostname
			    ) {
			      // Figure out element to scroll to
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			      // Does a scroll target exist?
			      if (target.length) {
			        // Only prevent default if animation is actually gonna happen
			        event.preventDefault();
			        $('html, body').animate({
			          scrollTop: target.offset().top
			        }, 700, function() {
			          // Callback after animation
			          // Must change focus!
			          var $target = $(target);
			          $target.focus();
			          if ($target.is(":focus")) { // Checking if the target was focused
			            return false;
			          } else {
			            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
			            $target.focus(); // Set focus again
			          };
			        });
			      }
			    }
			  });
			</script>
			
</body>
</html>