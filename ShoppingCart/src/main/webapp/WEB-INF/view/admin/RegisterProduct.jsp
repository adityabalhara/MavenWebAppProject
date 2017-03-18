<jsp:include page="/WEB-INF/view/template/Header.jsp"></jsp:include>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="resources/css/table.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/table.js"></script><center>
<br>
<a href="registerBrand">Register Brand</a>
<br>
<a href="registerSupplier">Register Supplier</a>
<br>
<br>
<fm:form action="registerProduct" commandName="product" method="post"
	enctype="multipart/form-data">
	<B>REGISTER A NEW PRODUCT :</B>
	<table>
		<tr>
			<td>ID of the product:</td>
			<c:choose>
					<c:when test="${ not empty product.id} ">
						<td><fm:input path="id" type="text" name="id" readonly="true" /></td>
					</c:when>
					<c:otherwise>
						<td><fm:input path="id" type="text" name="id" required="true" /></td>
					</c:otherwise>
				</c:choose>
		</tr>
		<tr>
			<td>Name of the product:</td>
			<td><fm:input path="name" type="text" name="name" required="true" /></td>
		</tr>
		<tr>
			<td>Description of the product:</td>
			<td><fm:input path="desc" type="text" name="desc" required="true" /></td>
		</tr>
		<tr>
			<td>Price of the product:</td>
			<td><fm:input path="price" type="text" name="price" required="true" /></td>
		</tr>
		<tr>
			<td>Image of the product:</td>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Add product"></td></tr>
	</table>
</fm:form>
</center>
<br>
<br>

<h4>
	<b>&nbsp;&nbsp;&nbsp;LIST OF ALL THE PRODUCTS IN THE DATABASE:</b>
</h4>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<form action="#" method="get">
				<div class="input-group">
					<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
					<input class="form-control" id="system-search" name="search"
						placeholder="Search for" required> <span
						class="input-group-btn">
						<button type="submit" class="btn btn-default">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</span>
				</div>
			</form>
		</div>
		<br> <br> <br>
		<div class="col-md-9">
			<table class="table table-list-search">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th colspan="2">Modify</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${productList}">
						<tr>
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.desc}</td>
							<td>${product.price}</td>
							<td><a href="editProduct/${product.id}">Edit</a></td>
							<td><a href="<c:url value='/deleteProduct/${product.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/template/Footer.jsp"></jsp:include>