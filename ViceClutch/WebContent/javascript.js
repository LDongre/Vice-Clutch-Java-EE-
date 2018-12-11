function onSignIn(googleUser) {
      var profile = googleUser.getBasicProfile();     
      var gName=profile.getName();
      var gEmail=profile.getEmail();      
      document.getElementById("gName").value = gName;
      document.getElementById("gEmail").value = gEmail;
     
      if(document.getElementById("hide").value == "show") {
    	  document.getElementById("logInForm").submit();
      }
      if(document.getElementById("hide").value == "hide") {
    	  onSignOut();
    	  window.location.replace("http://localhost:8080/ViceClutch/index.jsp");
      }
}	
	
function onSignOut() {
    gapi.auth2.getAuthInstance().disconnect();
   //location.reload();
}

function validateLogin() {
	
	error = "Please fill this field.";
	var email = document.getElementById("logInEmail").value;
	  if (!email) {
	    document.getElementById("errorLogInEmail").innerHTML = error;
	    document.getElementById("divLogInEmail").className =
	      "alert alert-danger alert-dismissible";
	    return false;
	  }
	  document.getElementById("errorLogInEmail").innerHTML = "";
	  document.getElementById("divLogInEmail").className = "form-group has-success";

	  var password = document.getElementById("logInPass").value;
	  if (password == null || password === "") {
	    document.getElementById("errorLogInPass").innerHTML = error;
	    document.getElementById("divLogInPass").className = "alert alert-danger ";
	    return false;
	  }
	  else if(password.length < 8) {
		  document.getElementById("errorLogInPass").innerHTML = 'Atleast 8 characters required';
		  document.getElementById("divLogInPass").className = "alert alert-danger ";
		  return false;
		    
	  }
	  document.getElementById("errorLogInPass").innerHTML = "";
	  document.getElementById("divLogInPass").className =
	    "form-group has-success";
	  

}

function validateForm() {
  error = "Please fill this field.";

  var name = document.getElementById("name").value;
  if (name == null || name === "") {
    document.getElementById("errorName").innerHTML = error;
    document.getElementById("divName").className =
      "alert alert-danger aler-dismissible";
    return false;
  }
    var nameValid = /^[a-zA-Z ]+$/;
    if (!nameValid.test(name)) {
      document.getElementById("errorName").innerHTML = "Invalid Name";
      document.getElementById("divName").className =
        "alert alert-danger alert-dismissible";
      return false;
    }
    
  document.getElementById("errorName").innerHTML = "";
  document.getElementById("divName").className = "form-group has-success";

  var email = document.getElementById("email").value;
  if (!email) {
    document.getElementById("errorEmail").innerHTML = error;
    document.getElementById("divEmail").className =
      "alert alert-danger alert-dismissible";
    return false;
  }
  document.getElementById("errorEmail").innerHTML = "";
  document.getElementById("divEmail").className = "form-group has-success";

  var password = document.getElementById("password").value;
  if (password == null || password === "") {
    document.getElementById("errorPassword").innerHTML = error;
    document.getElementById("divPassword").className = "alert alert-danger ";
    return false;
  }
  else if(password.length < 8) {
	  document.getElementById("errorPassword").innerHTML = 'Atleast 8 characters required';
	  document.getElementById("divPassword").className = "alert alert-danger ";
	  return false;
	    
  }
  document.getElementById("errorPassword").innerHTML = "";
  document.getElementById("divPassword").className =
    "form-group has-success";
  
  var confirmPass = document.getElementById("confirmPass").value;
  if (confirmPass == null || confirmPass === "") {
    document.getElementById("errorConfirmPass").innerHTML = error;
    document.getElementById("divConfirmPass").className = "alert alert-danger ";
    return false;
  }
  else if(password != confirmPass) {
	  document.getElementById("errorConfirmPass").innerHTML = 'Passwords don\'t match';
	  document.getElementById("divConfirmPass").className = "alert alert-danger ";
	  return false;
	    
  }
  else if(confirmPass.length() < 8) {
	  document.getElementById("errorConfirmPass").innerHTML = 'password must be minimum 8 characters';
	  document.getElementById("divConfirmPass").className = "alert alert-danger ";
	  return false;
	    
  }
  document.getElementById("errorConfirmPass").innerHTML = "";
  document.getElementById("divConfirmPass").className =
    "form-group has-success";
}

function validateRegister() {
	var error = "Please fill this field.";
	var mobile = document.getElementById("mobile").value;
	
	  if (mobile == null || mobile === "") {
		document.getElementById("errorMobile").innerHTML = error;
		document.getElementById("divMobile").className = "alert alert-danger ";
		return false;
	 }
	var phoneno = /^\d{10}$/;
	  if (!phoneno.test(mobile)) {
	    document.getElementById("errorMobile").innerHTML =
	      "Invalid Phone Mobile Number";
	    document.getElementById("divMobile").className = "alert alert-danger ";
	    return false;
	  }
	  document.getElementById("errorMobile").innerHTML = "";
	  document.getElementById("divMobile").className = "form-group has-success";
	  
	  var college = document.getElementById("college").value;
	  if(college == null || college === "") {
		  document.getElementById("errorCollege").innerHTML = error;
		  document.getElementById("divCollege").className = "alert alert-danger";
		  return false;
	  }
	  document.getElementById("errorCollege").innerHTML = "";
	  document.getElementById("divCollege").className = "form-group has-success";

	  var branch = document.getElementById("branch").value;	 
	  if(branch == "NONE") {
		  document.getElementById("errorBranch").innerHTML = error;
		  document.getElementById("divBranch").className = "alert alert-danger";
		  return false;
	  }
	  document.getElementById("errorBranch").innerHTML = "";
	  document.getElementById("divBranch").className = "form-control has-success";
	  
	  var year = document.getElementById("year").value;	 
	  if(year == "NONE") {
		  document.getElementById("errorYear").innerHTML = error;
		  document.getElementById("divYear").className = "alert alert-danger";
		  return false;
	  }
	  document.getElementById("errorYear").innerHTML = "";
	  document.getElementById("divYear").className = "form-control has-success";
}
