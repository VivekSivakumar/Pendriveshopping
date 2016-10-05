
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
  
  <%@include file="header.jsp"%>
  
  <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Pendrive point</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            
                            
                        </div>
                        <c:url var="userRegistration" value="saveUser.html" />
						<form:form id="registerForm"  method="post"
							action="./updateProduct" commandName="prod">
                        
                        <div class="row">
                            <div class="col-sm-6">
                           
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="<c:url value="${prdList.img}" />" alt="" />
                                    </div>
                                  
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${prdList.name}</h2>
                                    <div class="product-inner-price">
                                        <ins>${prdList.price}</ins>
                                    </div>    
                                    
                                    <form action="" class="cart">
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                        <button class="add_to_cart_button" type="submit">Add to cart</button>
                                    </form>   
                                    
                                    <div class="product-inner-category">
                                        
                                  
                             </div> 
                                    
                                    <div role="tabpanel">
                                       
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
                        </form:form>
                      
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
     <%@include file="footer.jsp"%> 
</body>
</html>