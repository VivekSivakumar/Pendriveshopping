<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Address</title>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <style>
  body {
    background:url('resources/images/pend5.jpg');
    background-size: cover;
    background-repeat: no-repeat;}
  </style>
</head>
<body  style="background-color:#b3ffb3;">


<%@include file="header.jsp"%>
<div class="container">
        <div class="row centered-form">
         <div style="margin-top:50px;" class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
         <div class="panel panel-default">
        <div class="panel-heading">
	 <h3 class="panel-title">Address</h3>
	</div>
	<div class="panel-body">
	<form role="form">
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<div class="form-group">
</div>
</div>	
</div>

<div class="form-group">
	<input type="bill" name="bill" id="bill" class="form-control input-sm" placeholder="Billing Address">
</div>

<div class="form-group">
	<input type="ship" name="ship" id="ship" class="form-control input-sm" placeholder="Shipping Address">
</div>


<div class=" text-center">
<a class="btn btn-success" href=" " role="button">Continue</a>
<a class="btn btn-danger" href="Home" role="button">Cancel</a>
   </div>

</form>
</div>
</div>
   </div>
 </div>
</div>  


<%@include file="footer.jsp"%>

</body>
</html>

