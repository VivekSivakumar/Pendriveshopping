<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

       
 

</head>
<body>
<%@include file="header.jsp"%>
<div class="img">
<c:forEach items="${Products}" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.img }"/>" width="300" height="200">
  </a>
  <div class="desc">$${p.price}</div><br>
  <div class="row" align="justify"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div><br>
</div>
</form>
</c:forEach>

 <%@include file="footer.jsp"%>
</body>
</html>


    