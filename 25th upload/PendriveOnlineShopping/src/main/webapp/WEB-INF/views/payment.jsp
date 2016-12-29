<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Payment</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@include file="header.jsp" %>

<br>
<div class="container">
  <div class="row">
  <div class="col-sm-6">
  <div class="alert alert-info" role="alert">
                            <p>Please enter your card details below.</p>
                        </div>
                        <hr/>
                    
                        <div class="form-group">
                            <label class="control-label" for="username">Card Holder's Name</label>

                            <div class="controls">
                                <input type="text" id="username" name="username" placeholder="Enter Card Holder's Name" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="card_number">Card Number</label>

                            <div class="controls">
                                <input type="text" id="card_number" name="card_number" placeholder="Enter Card Number"
                                       class="form-control">
                            </div>
                        </div>
                        <hr/>
                        
                        <div class="form-group">
                            <label class="control-label" for="expiry_month">Card Expiry Date</label>

                            <div class="row">
                                <div class="col-sm-4">
                                    <select class="form-control" name="expiry_month" id="expiry_month">
                                       
                                        <option value="01">Jan (01)</option>
                                        <option value="02">Feb (02)</option>
                                        <option value="03">Mar (03)</option>
                                        <option value="04">Apr (04)</option>
                                        <option value="05">May (05)</option>
                                        <option value="06">June (06)</option>
                                        <option value="07">July (07)</option>
                                        <option value="08">Aug (08)</option>
                                        <option value="09">Sep (09)</option>
                                        <option value="10">Oct (10)</option>
                                        <option value="11">Nov (11)</option>
                                        <option value="12">Dec (12)</option>
                                    </select>
                                </div>
                                <div class="col-sm-3">
                                    <select class="form-control" name="expiry_year">
                                        
                                        <option value="13">2013</option>
                                        <option value="14">2014</option>
                                        <option value="15">2015</option>
                                        <option value="16">2016</option>
                                        <option value="17">2017</option>
                                        <option value="18">2018</option>
                                        <option value="19">2019</option>
                                        <option value="20">2020</option>
                                        <option value="21">2021</option>
                                        <option value="22">2022</option>
                                        <option value="23">2023</option>
                                        <option value="24">2024</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr/>
                        <div class="row">
                            <div class="col-sm-4">
                                
                                <div class="form-group">
                                    <label class="control-label" for="password_confirm">Card CVV</label>


                                    <input type="password" id="password_confirm"
                                           name="password_confirm" placeholder="Enter Card CVV"
                                           class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                               
                                <div class="form-group">
                                <a href="#">
                                    <button class="btn btn-success">Pay Now</button></a>
                                </div>
                            </div>
                            <div class="col-sm-4"></div>
                            <div class="col-sm-5">
                              
                            </div>
                        </div>

</div>
    
</div>
    
</div>
<br>
<%@include file="footer.jsp" %>
</body>
</html>