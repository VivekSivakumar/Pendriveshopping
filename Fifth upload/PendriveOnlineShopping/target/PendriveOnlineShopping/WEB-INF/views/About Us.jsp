<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>About Us</title>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/jquery-2.2.3.min.js"></script>
<style>
  body {
    background:url('resources/images/pend3.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
  </style>
  </head>
<body style="background-color:#b3ffb3;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><img src="<c:url value='resources/images/logo4.jpg'/>" style="width:80px;height:35px;"/></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Home.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li><a href="About Us.jsp"><span class="glyphicon glyphicon-globe"></span>About Us</a></li>
          </ul>
<ul class="nav navbar-nav navbar-right">
      <li><a href="Signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Signin.jsp"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
    </ul>

</div>
</nav>

    <div class="container">
        <div class="row">
            
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> About US</legend>
         <h3>
        <p style="color: #1a75ff;">Store and share your world with USB Flash Drives. Available in a variety of styles to meet all your storage needs.
          </form>
        </div>
    </div>
</div>

<nav class="navbar navbar-inverse navbar-fixed-bottom">
<div class="container">
  <div class="row">
  <hr>
    <div class="col-lg-12">
      <div class="col-md-8">
           
      </div>
      <div class="col-md-4">
        <p class="text-success pull-right">� 2016 Pendrive Point. All rights reserved</p>
      </div>
    </div>
  </div>
</div>
</nav>
</body>
</html>
