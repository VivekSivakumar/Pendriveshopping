<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signin</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
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


<%@include file="header.jsp"%>

  
</head>
<body>
    <div id="fullscreen_bg" class="fullscreen_bg"/>
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                 <div class="panel-heading">
         <div class="panel-title">Sign In</div>
      <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
     </div>     

    <div style="padding-top:30px" class="panel-body" >
<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
<form id="loginform" class="form-horizontal" role="form">
<div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
       <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
     </div>
                                
   <div style="margin-bottom: 25px" class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
         <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
        </div>
   <div class="input-group">
     <div class="checkbox">
     <label>
  <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
  </label>
   </div>
</div>
<div style="margin-top:10px" class="form-group">
     <!-- Button -->
    <div class="col-sm-12 controls">
       <a id="btn-login" href="#" class="btn btn-success">Sign In  </a>
     <a id="btn-fblogin" href="Home" class="btn btn-danger">Cancel</a>
</div>
  </div>
</form>     
   </div>                     
  </div>  
 </div>
 </div>
</div>
<footer>
<%@include file="footer.jsp"%>


</body>
</head>