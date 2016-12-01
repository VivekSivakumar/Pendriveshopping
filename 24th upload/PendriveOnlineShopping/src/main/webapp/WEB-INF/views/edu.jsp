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

       
 
<style>
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
   height: 90%;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<%@include file="header.jsp"%>
<div class="img">
<c:forEach items="${Products}" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.img }"/>" width="300" height="200">
  </a>
  <div class="desc">$${p.price}</div>
  <div class="row" align="right"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div>
</div>
</form>
</c:forEach>
<%-- 
 <div class="img">
 
    <img src="<c:url value='/resources/images/img1.jpg'/>" width="300" height="200">
  </a>
  <div class="desc">Price $10000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img2.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $6000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img3.jpg'/>"  width="600" height="400">
  </a>
  <div class="desc">Price $7000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img4.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img5.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img6.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $500<</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img7.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $60000<</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img8.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img9.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $100000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img10.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img11.jpg'/>" width="300" height="200">
  </a>
  <div class="desc">Price $10000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img12.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $6000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img13.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $7000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img14.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img15.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="img16.jpg" width="600" height="400">
  </a>
  <div class="desc">Price $500<</div>
</div> --%>
 <%@include file="footer.jsp"%>
</body>
</html>


    