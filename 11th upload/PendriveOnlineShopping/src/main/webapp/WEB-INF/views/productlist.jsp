
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>User Details</title>
</head>
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
<body bgcolor="#70dbd8">
<%@include file="header.jsp"%>
	<center>

		<div style="color: #f05c79; font-size: 30px">User Details</div>


		<%--    <c:if test="${!empty productList}">  --%>
		<table border="1" bgcolor="black" width="600px">

			<tr
				style="background-color: #66d9ff; color: black; text-align: center;"
				height="40px">
				<td>Product id</td>
				<td>Product name</td>
				<td>Product description</td>
				<td>Product price</td>
				<td>Category</td>
				<td>Supplier</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>

			<c:forEach items="${productList}" var="user">
				<tr
					style="background-color: #F0FFFF; color: black; text-align: center;"
					height="30px">
					<td>${user.pid}</td>
					<td>${user.name}</td>
					<td>${user.description}</td>
					<td>${user.price}</td>
					<td>${user.catname}</td>
					<td>${user.spname}</td>

					<td><a href="edit?id=${user.pid}">Edit</a></td>
					<td><a href="deleteProduct?id=${user.pid}">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
		<%--    </c:if>  --%>


		<a href="form" style="color:

	 #00b300;">Click Here to add new User</a>
	</center>
	<%@include file="footer.jsp"%>
</body>
</html>