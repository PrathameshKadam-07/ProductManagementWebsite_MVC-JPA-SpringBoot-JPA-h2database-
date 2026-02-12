<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

   <%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
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
        <h2>Update Product</h2>
        <form action="update" >
            <input type="text" name="pid" placeholder="Product ID" required>
            <input type="text" name="pname" placeholder="New Name">
            <input type="number" name="qty" placeholder="New Quantity">
            <input type="number" name="price" placeholder="New Price">
            
            <c:if test="${not empty msg}">
            <c:out value="${msg}"></c:out> 
            </c:if>       
            
            <button type="submit">Update</button>
        </form>
        <div style="text-align:center; margin-top:10px;">
            <a href="/home.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
