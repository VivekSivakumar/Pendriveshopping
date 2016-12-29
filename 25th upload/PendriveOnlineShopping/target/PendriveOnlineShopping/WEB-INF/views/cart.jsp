<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value='resources/css/bootstrap.min.css'/>"
	rel="stylesheet" />
<script src="<c:url value='resources/js/bootstrap.min.js'/>" /></script>
<script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>" /></script>
<style>
body {
	background: url('resources/images/pend15.jpg');
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td data-th="Product">
						<div class="row">
							<div class="col-sm-2 hidden-xs">
								<img src="http://placehold.it/100x100" alt="..."
									class="img-responsive" />
							</div>
							<div class="col-sm-10">
								<h4 class="nomargin">Product 1</h4>
								<p>Product description</p>
							</div>
						</div>
					</td>
					<td data-th="Price">$1.99</td>
					<td data-th="Quantity"><input type="number"
						class="form-control text-center" value="1"></td>
					<td data-th="Subtotal" class="text-center">1.99</td>
					<td class="actions" data-th="">
						<button class="btn btn-info btn-sm">Edit</button>
						<button class="btn btn-danger btn-sm">Delete</button>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>Total 1.99</strong></td>
				</tr>
				<tr>
					<td><a href="#" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
					<td><a href="#" class="btn btn-success btn-block">Checkout
							<i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
		</table>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>