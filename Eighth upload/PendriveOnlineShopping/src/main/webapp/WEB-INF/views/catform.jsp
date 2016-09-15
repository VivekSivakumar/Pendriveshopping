
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Category</title>
    <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>

</head>
<style>
 

 
.floatRight{
    float:right;
    margin-right: 160px;
    margin-top:20px;
}

 

 
.generic-container {
  position:fixed;
  width:55%;
  margin-left: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
  padding: 20px;
  background-color: #EAE7E7;
  border: 1px solid #ddd;
  border-radius: 7px;
  
}


</style>
<body>

<%@include file="header.jsp"%>


<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
<div class="generic-container">
<div class="well lead">Add Category</div>
  <form:form id="registerForm" commandName="categ" method="post"
   action="./addCategory">
   <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="name">Category Name</label>
                <div class="col-md-7">
                    <form:input type="text" path="catname" id="categoryName" class="form-control input-sm"/>
                </div>
            </div>
        </div>
    
      <div class="row">
            <div class="form-actions floatRight">
     <input type="submit" value="Add" class="btn btn-primary btn-sm"/>
    </div>
    </div>
   
  </form:form>
  <a href="catlist">Click Here to see Category List</a>
  </div>
<%@include file="footer.jsp"%>
</body>
</html>