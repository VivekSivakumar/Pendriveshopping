
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>List of Supplier</title>
    </head>
<style>

body {
    background:url('resources/images/pend17.jpg');
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
<div style="color: #f05c79; font-size: 30px">List of Supplier</div>
  <table border="1" bgcolor="black" width="600px">
  
    <tr style="background-color: #66d9ff; color: black; text-align: center;"
				height="40px">
      <td>Supplier Id</td>
     <td>Supplier Name</td>
     <td>Supplier Place</td>
     <td>Edit</td>
	<td>Delete</td> 
    </tr>
    
    <c:forEach items="${supplierList}" var="supplier">
    <tr style="background-color: #F0FFFF; color: black; text-align: center;"
					height="30px">
       <td>${supplier.spid}</td>
      <td>${supplier.spname}</td>
      <td>${supplier.splace}</td>
     
      <td><a href="spedit?id=${supplier.spid}">Edit</a></td>
      <td><a href="deleteSupplier?id=${supplier.spid}">Delete</a></td>
     </tr>
    </c:forEach> 
    
   </table>
   <%--    </c:if>  --%>
   
  
        
            <a href="spform">Add New Supplier</a>
      </center>
<%--    </c:if>  --%>

<%@include file="footer.jsp"%>
</body>
</html>