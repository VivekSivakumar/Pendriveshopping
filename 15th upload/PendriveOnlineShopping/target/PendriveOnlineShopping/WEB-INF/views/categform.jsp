
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add category</title>
    </head>
<style>
 body {
    background:url('resources/images/pend11.jpg');
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

  <div style="color: #d08c49; font-size: 30px">Add Category</div>
  
<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>

  <form:form id="registerForm" commandName="categ" method="post"
   action="./addCategory">
   <table width="400px" height="150px">
    <tr>
     <td><form:label path="catname">Category name</form:label>
     </td>
     <td><form:input class="form-control" path="catname" />
     </td>
    </tr>
    
    <tr>
     <td></td>
     <td><input type="submit" value="Add" class="btn btn-primary btn-sm"/></td>
    </tr>
   </table>
   
  </form:form>
  <a href="categlist">Click Here to see Category List</a>
 
  </center>
<%@include file="footer.jsp"%>
</body>
</html>