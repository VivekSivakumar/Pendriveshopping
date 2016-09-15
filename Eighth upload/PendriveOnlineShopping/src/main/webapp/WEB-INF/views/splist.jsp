
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>List of Products</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<style>

.floatRight{
    float:right;
    margin-right: 18px;
}
 

 
.generic-container {
  position:fixed;
  width:80%;
  margin-left: 130px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
  border-radius: 4px;
  
}
 

</style>
<body>
<%@include file="header.jsp"%>

<div class="generic-container">
        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Supplier </span></div>
  <table class="table table-hover">
  <thead>
    <tr>
      <th>Supplier Id</th>
     <th>Supplier Name</th>
     <th width="100"></th>
     <th width="100"></th>
    </tr>
    </thead>
    <tbody>
    
    <c:forEach items="${supplierList}" var="supplier">
     <tr>
       <td>${supplier.spid}</td>
      <td>${supplier.spname}</td>
      <td>${supplier.splace}</td>
     
      <td><a href="spedit?id=${supplier.spid}" class="btn btn-success 
 
custom-width">Edit</a></td>
      <td><a href="deleteSupplier?id=${supplier.spid}" class="btn btn-danger 
 
custom-width">Delete</a></td>
     </tr>
    </c:forEach> 
    <tbody>
   </table>
   </div>
        <div class="well">
            <a href="spform">Add New Supplier</a>
        </div>
    </div>
<%--    </c:if>  --%>

<%@include file="footer.jsp"%>
</body>
</html>