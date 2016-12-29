
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><img src="<c:url value='resources/images/logo4.jpg'/>" style="width:85px;height:30px;"/></a>
    </div>
    <ul class="nav navbar-nav">
    <li><a>Pendrive Point</a></li>
      <li><a href="Home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li><a href="Aboutus"><span class="glyphicon glyphicon-globe"></span>About Us</a></li>
          </ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="edu"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
<!-- <li><a href="cartdetails" ><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li> -->
<!-- <li><a href="addr">Address</a></li> -->

<li><a href="listgrid">Product Lists</a></li>
<!--       <li><a href="form">Product</a></li> -->
<!--       <li><a href="categform">Categories</a></li> -->
<!--     <li><a href="suplrform">Supplier</a></li> -->
     <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a></li>
    <li><a href="Signin">Sign In</a></li> 
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
<li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h4 style="color: #bfff00;">Welcome : ${pageContext.request.userPrincipal.name} ||
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h4> 
                 </c:if> 
</li>	

  						
 <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
</ul>
</div>
</nav><br><br><br>
</body>
</html>