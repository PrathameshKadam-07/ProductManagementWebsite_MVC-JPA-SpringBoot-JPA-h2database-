<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Show Product by ID</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style> 
    	body {font-family: Arial; background:#f0f0f0; display:flex; justify-content:center; align-items:center; height:100vh;}
        .box {background:#fff; padding:20px; border-radius:8px; width:100%; max-width:350px;}
        input {width:100%; padding:10px; margin:8px 0; border:1px solid #ccc; border-radius:4px;}
        button {width:100%; padding:10px; background:#4A90E2; color:#fff; border:none; border-radius:4px;}
        button:hover {background:#357ABD;}
  </style>
</head>
<body>
    <div class="box">
        <h2>Show Product by ID</h2>
        <form action="showbyid" method="post">
            <input type="text" name="id" placeholder="Enter Product ID" required>
            <button type="submit">Show</button>
         
 <c:if test="${empty product}">
    <h3>Product not found</h3>
</c:if>
<c:if test="${not empty product}">
<table>
<tr>
<th>ProductID</th>
<th>Product Name</th>
<th>Product QTY</th>
<th>Product Price</th>
</tr>
<tr>
<td><c:out value="${product.pid}"></c:out></td>
<td><c:out value="${product.pname}"></c:out></td>
<td><c:out value="${product.qty}"></c:out></td>
<td><c:out value="${product.price}"></c:out></td>
</tr>
</table>
</c:if>
             
        </form>
        <div style="text-align:center; margin-top:10px;">
            <a href="./home.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
