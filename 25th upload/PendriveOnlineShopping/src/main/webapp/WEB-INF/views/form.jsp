<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<title>Add products</title>

<script>
	var vs=${conj};
	angular.module('penApp',[]).controller('PendriveController',function($scope)
			
	{
		$scope.cd=vs;
		
	});
	


</script>
</head>
<style>
  body {
    background:url('resources/images/pend.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
  </style>
<body bgcolor="#70dbd8">
<%@include file="header.jsp"%>


 <center>

  <div style="color: #d08c49; font-size: 30px">Add Product</div>
<!--   <div class="container" ng-app="myApp" ng-controller="PendriveController"> -->



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct" enctype="multipart/form-data">
   
   <table width="400px" height="150px">
   
    <tr>
     <td><label for="name">Product name</label>
     </td>
     <td><form:input class="form-control" path="name"/>
     </td>
     <td><form:errors path="name" class="error" /></td>
    </tr>
    
    <tr>
     <td><form:label path="description" >Product description</form:label>
     </td>
     <td><form:input class="form-control" path="description"/>
     </td>
     <td><form:errors path="description" class="error" /></td>
    </tr>
    
    <tr>
     <td><form:label path="price">Product price</form:label>
     </td>
     <td><form:input class="form-control" path="price"/>
     </td>
     <td><form:errors path="price" class="error" /></td>
    </tr>
    
    <tr>
     <td><label>Product category</label>
     </td>
     <td>
     <form:select path="catname">
     <option  value="-1">Select a type</option>         
      <c:forEach items="${lstCat}" var="category">
          <option value="${category.catname}">${category.catname}</option>
      </c:forEach>
   </form:select>
     </td>
     </tr>
     
     <tr>
     <td><label>Product supplier</label>
     </td>
     <td>
     <form:select path="spname">
     <option value="-1">Select a type</option>         
      <c:forEach items="${lstSupplier}" var="supplier">
          <option value="${supplier.spname}">${supplier.spname}</option>
      </c:forEach>
   </form:select>
     </td>
    </tr>
    
    <tr>
    <td><label class="control-label" for="name">Upload file</label></td>
    <td>
    <input name="file" id="fileToUpload" type="file" />
    </td>
    </tr>
    
   
    
    <tr>
     <td></td>
     <td><br><input type="submit" value="Add" class="btn btn-primary btn-sm"/></td>
    </tr>
    
   </table>
   
  </form:form>
<br>

  

<img src="<c:url value="${img}" />" alt="image" height="100px" weight="100px" />
  </center>
  
  <div class="container" ng-app="penApp" ng-controller="PendriveController">
  
  <input type="text" placeholder="search product name" class="form-control" ng-model="test.name">
  <center>

		<div style="color: #f05c79; font-size: 30px">User Details</div>


		<%--    <c:if test="${!empty productList}">  --%>
		<table border="1" bgcolor="black" width="600px">

	<tr style="background-color: #66d9ff; color: black; text-align: center;"
				height="40px">
				<td>Product id</td>
				<td>Product name</td>
				<td>Product description</td>
				<td>Product price</td>
				<td>Category</td>
				<td>Supplier</td>
				<td>Image</td> 
				<td>Edit</td>
				<td>Delete</td>
			</tr>
			

					<tr ng-repeat="pd in cd | filter:test" style="background-color: #F0FFFF; color: black; text-align: center;"
					height="30px">
						<td>{{pd.pid}}</td>
						<td>{{pd.name}}</td>
						<td>{{pd.description}}</td>
						<td>{{pd.price}}</td>
						<td>{{pd.catname}}</td>
						<td>{{pd.spname}}</td>
						<td><img ng-src="{{pd.img}}"></td>

						<td><a href="edit?id={{pd.pid}}">Edit</a></td>
						<td><a href="deleteProduct?id={{pd.pid}}">Delete</a></td>
					</tr>
<%-- 				</c:forEach> --%>

			</table>
		
		<%--    </c:if>  --%>


		<a href="form" style="color:#00b300;">Click Here to add new User</a>
	
	</center>
	</div>
	
	
	
 <%@include file="footer.jsp"%>
 
</body>
</html>