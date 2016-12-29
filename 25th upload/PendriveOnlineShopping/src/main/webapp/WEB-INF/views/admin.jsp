<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
    background:url('resources/images/pend7.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}


  </style>
  
</head>

<body>
<%@include file="header.jsp"%>
<center>
<h2>Admin</h2></center>
<div class="container">
  
  <br>
<br>
<br>
<br>
<br>

<div class="center-block" style="max-width:100px">
  <a href="form"  class="btn btn-success" style="color:red;">Add Product</a>
<br>
</br>
   <a href="suplrform" class="btn btn-primary" style="color:black;">Add Supplier</a>
<br>
  
</br>
  
 <a href="categform" class="btn btn-info" style="color:white;">Add Category</a>
 
<br>  

  
</div>
  
  
  
</div>
<%@include file="footer.jsp"%>
</body>
</html>

    