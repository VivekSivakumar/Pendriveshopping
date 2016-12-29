<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Edit Product</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    
    <link href="<c:url value='resources/css/owl.carousel.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/style.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/responsive.css'/>" rel="stylesheet"/>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>

<body>
<%@include file="header.jsp" %>

		<c:url var="userRegistration"  value="saveUser.html" />
		<form:form   method="post"
			action="./addCart" commandName="prod">
			<div class="single-product-area">
      
        <div class="container">
            <div class="row">
                
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            
                            <a href="cartlist">Cart Details</a>
                        </div>
                        
                        <div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="pid" value="${prdList.pid}"  readonly="true" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="name" value="${prdList.name}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="description" value="${prdList.description}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="price" value="${prdList.price}"  class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
       	    
       	    <div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                	
                    <form:input type="hidden" path="img" value="${prdList.img}"  class="form-control input-sm"/>
                    
                </div>
            </div>
       	    </div>
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="<c:url value="${prdList.img}" />" alt="image"
												height="200px" weight="200px" />
                                    </div>
                                  
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${prdList.name}</h2>
                                    <div class="product-inner-price">
                                        <i class="fa fa-rupee">${prdList.price}</i>
                                    </div>    
                                    
                                    <form action="" class="cart">
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                        <button class="add_to_cart_button" type="submit">Add to cart</button>
                                    </form>   
                                    
                                    
                                    
                                     <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p>${prdList.description}</p>

                                               
                                           
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
               
                      
                    </div>                    
                </div>
            </div>
        </div>
    </div>

   
    <script src="<c:url value='https://code.jquery.com/jquery.min.js'/>"></script>
    
    
    <!-- jQuery sticky menu -->
    <script src="<c:url value='resources/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='resources/js/jquery.sticky.js'/>"></script>
    
    <!-- jQuery easing -->
    <script src="<c:url value='resources/js/jquery.easing.1.3.min.js'/>"></script>
    
    <!-- Main Script -->
    <script src="<c:url value='resources/js/main.js'/>"></script>
			
			
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="pid" value="${prdList.pid}"  readonly="true" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="name" value="${prdList.name}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="description" value="${prdList.description}" class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
			<div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                    <form:input type="hidden" path="price" value="${prdList.price}"  class="form-control input-sm"/>
                </div>
            </div>
       	    </div>
       	    
       	    <div class="row">
            <div class="form-group col-md-12">
                
                <div class="col-md-7">
                	
                    <form:input type="hidden" path="img" value="${prdList.img}"  class="form-control input-sm"/>
                    
                </div>
            </div>
       	    </div>
       	 
     
  </form:form>
   <a href="cartlist">Click Here to see cart details </a>
  
</body>
</html>