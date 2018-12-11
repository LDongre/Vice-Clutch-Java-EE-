<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
  		
  		<!-- Date picker 
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css"></script>
  		-->
  		
  		<!-- three.js 
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/96/three.min.js"></script>
  		-->
  		
  		<!-- OAuth -->
  		<script src="https://apis.google.com/js/platform.js" async defer></script>
   		<meta name="google-signin-client_id" content="134536168908-c7rcocdeqlpquh69aj1650r5o0fq5951.apps.googleusercontent.com">
  
  		<!-- particle.js -->
	  	<script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js" type="text/javascript"></script>
		  
		<!--css file made by me -->
		<link rel="stylesheet" href="style.css">
		
		<!-- js file made by me --> 
		<script src="javascript.js" type="text/javascript"></script>
		
		
		<c:if test="${sessionScope.name != null }">
		<c:redirect url="UserMenu.jsp"></c:redirect>
		</c:if>
	</head>
	<body>
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
        <a class="nav-link" href="#" data-toggle = "modal" data-target = "#signUpModal"><i class="fa fa-pencil"></i> Sign Up</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle = "modal" data-target = "#logInModal"><i class="fa fa-sign-in"></i> Log In</a>
      </li>
    </ul>
    </div>
</nav>  
         <!-- END Navigation Bar-->
         
         <!-- modal signUp -->
		<div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  			<div class="modal-dialog modal-dialog-centered" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
        				<h5 class="modal-title" id="exampleModalLongTitle">SIGN UP</h5>
        				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
        				</button>
      				</div>
      			<div class="modal-body">
        			<form name = "signUpForm" action = "/ViceClutch/SignUpServlet" method = "post" >
         				
         						<div class="form-group" id="divName">
  									<label for="name">Name:</label>
  									<input type="text" class="form-control" name = "name" id="name">
  									<p id="errorName"></p>
								</div>
								
								<!-- 
								<div class="form-group" id="divMobile">
                            		<label for="mobile">Mobile Number:</label>
                            		<input type="text" class="form-control" name = "mobile" id="mobile">
                            		<p id="errorMobile"></p>
                        		</div>
                        		-->
                        		
		                        <div class="form-group" id="divEmail">
		                              <label for="email">Email</label>
		                              <input type="email" class="form-control" name = "email" id="email" oninput="$('#errorEmail').load('/ViceClutch/EmailServer?em='+ $(this).val())">
		                              <p id="errorEmail"></p>
		                        </div>
                        		<div class="form-group" id="divPassword">
                              		<label for="password">Password:</label>
                              		<input type="password" class="form-control" id="password" name = "password">
                              		<p id ="errorPassword"></p>
                        		</div>
                        		<div class="form-group" id="divConfirmPass">
                              		<label for="confirmPass">Confirm password:</label>
                                  	<input type="password" class="form-control" name = "confirmPass" id="confirmPass" >
                                  	<p id="errorConfirmPass"></p>
                        		</div>
                        		
                        		<!-- 
                        		<div class="form-group">
								    <label for="datepicker">Date of Birth</label>                    		
                        			<input class = "form-control" type = "date" id="datepicker" placeholder="dd-mm-yyyy" name="datepicker" required>
                        		</div>
                        		 -->
                    		
         				<div class = "modal-footer">
         					<button type = "submit" class = "btn btn-outline-primary btn-info center-block" onclick = "return validateForm();">Submit</button>
         				</div>
 				</form>
 			</div>
 		</div>	
 		</div>	
	</div>

         <!--  END modal signUp -->



         
         <!-- modal logIn -->
         <div class="modal fade" id="logInModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">LOG IN</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
 	<form action = "/ViceClutch/LogInServlet" method = "post" id="logInForm" name = "logInForm" >
 						<div class="form-group" id ="divLogInEmail">
		                     <label for="logInEmail">Email</label>
		                     <input type="email" class="form-control" name = "logInEmail" id="logInEmail"">
		                     <p id="errorLogInEmail"></p>
		                </div>
                        <div class="form-group" id ="divLogInPass">
                              		<label for="logInPass">Password:</label>
                            <input id="logInPass" type="password" class="form-control"  name="logInPassword">
                            <p id="errorLogInPass"></p>
                        </div>
                        <div class="text-center">
                        <button type = "submit"  onclick = " return validateLogin()" class = "btn btn-outline-primary btn-info center-block">Submit</button>
                        </div>
                        <hr/>
                        <p class="d-flex justify-content-center">-- OR --</p>
                        <div class="g-signin2 d-flex justify-content-center" data-onsuccess="onSignIn" id="myP"></div>
                        <br/>
                        <input type="hidden" value="" name = "gName" id="gName">
                        <input type="hidden" value="" name = "gEmail" id="gEmail">
         	</form>
    
      </div>
    </div>
  </div>
</div>

<!--  END modal logIn -->
 <!-- Canvas 
	<script>
		var scene = new THREE.Scene();
		var camera = new THREE.PerspectiveCamera(75, window.innerWidth/ window.innerHeight, 0.1, 1000);
		var renderer = new THREE.WebGLRenderer();
		renderer.setSize(window.innerWidth, window.innerHeight);
		document.body.appendChild(renderer.domElement);
		
		//game logic
		var update = function() {
			
		};
		var render = function() {
			renderer.render(scene, camera);
		};
		var GameLoop = function(){
			requestAnimationFrame(GameLoop);
			update();
			render();
		};
		GameLoop();
	</script>
 END Canvas -->
 
 <div id="particles-js">

 </div>
 <script>
 	particlesJS.load('particles-js','particles.json',function() {
 		console.log('particles.json loaded');
 	});
 </script>
 
 
  	
  		<input type ="hidden" value = "show" id = "hide">
	<c:if test="${param.msg == 'logout' }">
  	<script>
  		
  		document.getElementById("hide").value="hide";
  	</script>
	</c:if> 
                 
                 
                 
    </div> 
    <!-- END page -->
    
          
     	<!-- jQuery -->
     	<script>
     	
     /*	$(document).ready(function() {
     		$("#email").blur(function() {
     			var em = $(this).val();
     			$.ajax({
     				url: "/ViceClutch/EmailServer",
     				method: "post",
     				data: {email:em},
     				dataType: "text",
     				success: function(html) {
     					$("#divEmail").html(html);
     				}
     			})
     		});
     	});
     */
     	/*
     		    $('.datepicker').datepicker({
     		      format: "dd/mm/yyyy"
     		    });
     	*/
     		$(document).ready(function() {
     	    	$("#signUpForm").get(0).reset();
     	    	$("#logInForm").get(0).reset();
     		});
     	</script>
     	<!-- END jQuery -->

	</body>
</html>