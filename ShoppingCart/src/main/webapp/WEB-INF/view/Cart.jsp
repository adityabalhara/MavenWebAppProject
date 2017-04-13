<jsp:include page="/WEB-INF/view/template/Header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">

	<h1>
		<center>Shopping Cart</center>
	</h1>
	<hr>
	<table class="table table-striped table-hover table-bordered">
		<tbody>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Unit Price</th>
				<th>Total Price</th>
			</tr>
			<c:forEach var="product" items="${sessionScope.cart.item}">
				<c:set var="sum" value="${sum+product.price*product.quantity}" />
				<tr>
					<td>${product.brandId}&nbsp${product.name}</td>
					<td>${product.quantity}<a href="<c:url value='/delete/{id}'/>">X</a></td>
					<td>${product.price}</td>
					<td>${product.price*product*quantity}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"></td>
			</tr>
			<tr>
				<th colspan="3"><span class="pull-right">Total</span></th>
				<th></th>
			</tr>
			<tr>
				<td><a href="home" class="btn btn-primary">Continue
						Shopping</a></td>
				<td colspan="3"><a href="#" class="pull-right btn btn-success">Checkout</a></td>
			</tr>
		</tbody>
	</table>

</div>
<jsp:include page="/WEB-INF/view/template/Footer.jsp" />