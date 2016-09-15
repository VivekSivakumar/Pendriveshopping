
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   action="./addProduct">
   <table width="400px" height="150px">
    <tr>
     <td><label for="name">Product name</label>
     </td>
     <td><form:input path="name"/>
     </td>
    </tr>
    <tr>
     <td><form:label path="description">Product description</form:label>
     </td>
     <td><form:input path="description" />
     </td>
    </tr>
    <tr>
     <td><form:label path="price">Product price</form:label>
     </td>
     <td><form:input path="price" />
     </td>
    </tr>
    <tr>
     <td></td>
     <td><input type="submit" value="Add" class="btn btn-primary btn-sm"/></td>
    </tr>
   </table>
  </form:form>


  <a href="productlist">Click Here to see User List</a>
 </center>
 <%@include file="footer.jsp"%>
</body>
</html>