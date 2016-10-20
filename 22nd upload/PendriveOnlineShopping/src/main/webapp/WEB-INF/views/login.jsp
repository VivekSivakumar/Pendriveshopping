
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Login </title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/form.css'/>" rel="stylesheet"/>
	<style>
  body {
    background:url('resources/images/pend1.jpg');
    
 background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;

}
  </style>
  
          <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">

        </script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
<script src="js/form-validation.js"></script>
<script src="js/jquery.validate.min.js">
<script type="text/javascript" src="jquery.validate.js"></script>
  <script type="text/javascript">
  $(document).ready(function () {

	  $('#forms').validate({
	      rules: {
	          userName: {
	              minlength: 2,
	              required: true
	          },
	          email: {
	              required: true,
	              email: true
	          },
	          message: {
	              minlength: 2,
	              required: true
	          }
	      },
	      highlight: function (element) {
	          $(element).closest('.control-group').removeClass('success').addClass('error');
	      },
	      success: function (element) {
	          element.text('OK!').addClass('valid')
	              .closest('.control-group').removeClass('error').addClass('success');
	      }
	  });
	  });
</script>  

</head>
<body>

   <%@include file="header.jsp"%>
    <form:form action="./loginSubmit" name="submitForm" method="POST" id="forms">
         <div id="fullscreen_bg" class="fullscreen_bg"/>
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                 <div class="panel-heading">
         <div class="panel-title">Sign In</div>
<!--       <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div> -->
     </div>     

    <div style="padding-top:30px" class="panel-body" >
<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
<form id="loginform" class="form-horizontal" role="form">
<div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input id="login-username" type="text" class="form-control" name="userName" value="" placeholder="username or email">                                        
     </div>
                                
   <div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
         <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
        </div>
   <div class="input-group">
     <div class="checkbox">
<!--      <label> -->
<!--   <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me -->
<!--   </label> -->
   </div>
</div>
<div style="margin-top:10px" class="form-group">
     <!-- Button -->
    <div class="col-sm-12 controls">
    <input  type="submit" value="Submit" />
<!--        <a id="btn-login" href="#" class="btn btn-success">Sign In  </a> -->
<!--      <a id="btn-fblogin" href="Home" class="btn btn-danger">Cancel</a> -->
</div>
  </div>
</form>     
   </div>                     
  </div>  
 </div>
 </div>
</div><center>
 <div style="color: red">${error}</div>
        </div>
        </center>
    </form:form>
    <%@include file="footer.jsp"%>
</body>
</html>