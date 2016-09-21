
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edit Category</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
</head>
<style>
 body {
    background:url('resources/images/pend12.jpe');
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
			Edit Category</div>
		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm"  method="post"
			action="./updateCategory" commandName="categ">
			
			 <table style="color: #1a75ff;" width="400px" height="150px">
			 <tr>
                <td><label>Category Id</label></td>
                <td>
                    <form:input type="text" path="catid" value="${catList.catid}"  readonly="true" class="form-control input-sm"/>
                </td>
           </tr>
           <tr>
                <td>
                <label>Category Name</label></td>
                <td>
                    <form:input type="text" path="catname" value="${catList.catname}" class="form-control input-sm"/>
                </td>
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