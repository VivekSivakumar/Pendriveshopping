
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Product</title>
</head>
<style>
  body {
    background:url('resources/images/pend8.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
  </style>
<body>
<%@include file="header.jsp"%>
	<center>

		<div style="color: #f05c79; font-size: 30px">
			Edit Product</div>



		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./updateProduct" commandName="prod">
			<table style="color: #1a75ff;" width="400px" height="150px">
			<tr>
					<td><label>Product id</label></td>
					<td><form:input path="pid" value="${prdList.pid}"  readonly="true" /></td>
				</tr>
				<tr>
					<td><label>Product name</label></td>
					<td><form:input path="name" value="${prdList.name}" /></td>
				</tr>
				<tr>
					<td><label>Product description</label></td>
					<td><form:input path="description" value="${prdList.description}"/></td>
				</tr>
				<tr>
					<td><label>Product price</label></td>
					<td><form:input path="price" value="${prdList.price}"/></td>
				</tr>
				<tr>
					<td><label>Product category</label></td>
					<td><form:input path="category" value="${prdList.category}"/></td>
				</tr>
				<tr>
					<td><label>Product supplier</label></td>
					<td><form:input path="supplier" value="${prdList.supplier}"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Update" class="btn btn-primary btn-sm"/>
					</td>
				</tr>
			</table>
		</form:form>


		
	</center>
	<%@include file="footer.jsp"%>
</body>
</html>
