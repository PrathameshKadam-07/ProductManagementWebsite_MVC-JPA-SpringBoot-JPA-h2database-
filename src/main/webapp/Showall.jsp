<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center><h1>PRODUCT PRESENT IN THE TABLE</h1></center>


<c:if test="${empty list}">
<h3>No Product In the Table</h3>
</c:if>

<c:if test="${not empty list}">
<table>
<tr>
<th>ProductID</th>
<th>Product Name</th>
<th>Product QTY</th>
<th>Product Price</th>
</tr>
<c:forEach var="p" items="${list}">
<tr>
<td><c:out value="${p.pid}"></c:out></td>
<td><c:out value="${p.pname}"></c:out></td>
<td><c:out value="${p.qty}"></c:out></td>
<td><c:out value="${p.price}"></c:out></td>
</tr>
</c:forEach>
</table>
</c:if>
 
</body>
</html>