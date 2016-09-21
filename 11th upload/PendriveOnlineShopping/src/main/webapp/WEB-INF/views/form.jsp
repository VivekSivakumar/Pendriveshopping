<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add products</title>
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



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct" enctype="multipart/form-data">
   <table width="400px" height="150px">
   
    <tr>
     <td><label for="name">Product name</label>
     </td>
     <td><form:input class="form-control" path="name"/>
     </td>
    </tr>
    
    <tr>
     <td><form:label path="description" >Product description</form:label>
     </td>
     <td><form:input class="form-control" path="description" />
     </td>
    </tr>
    
    <tr>
     <td><form:label path="price">Product price</form:label>
     </td>
     <td><form:input class="form-control" path="price" />
     </td>
    </tr>
    
    <tr>
     <td><label>Product category</label>
     </td>
     <td>
     <form:select path="catname">
     <option  value="-1">Select a type</option>         
      <c:forEach items="${listCat}" var="category">
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
    <td><label class="control-lable" for="name">Upload file</label></td>
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


  <a href="productlist">Click Here to see User List</a>
 </center>
 <%@include file="footer.jsp"%>
 <img src="<c:url value="${img}" />" alt="image" height="100px" weight="100px" />
</body>
</html>