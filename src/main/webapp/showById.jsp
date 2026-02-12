<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<title>Show Product</title>

<style>
    body { font-family: Arial; text-align: center; }
    table { border-collapse: collapse; margin: 20px auto; }
    th, td { border: 1px solid black; padding: 8px 12px; }
    th { background-color: #4A90E2; color: white; }
</style>

</head>
<body>

<h2>Show Product by ID</h2>

<form action="showbyid" method="post">
    <input type="text" name="id" placeholder="Enter Product ID" required>
    <button type="submit">Show</button>
</form>

<c:if test="${product == null && param.id != null}">
    <h3 style="color:red;">Product not found</h3>
</c:if>

<c:if test="${product != null}">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Qty</th>
            <th>Price</th>
        </tr>
        <tr>
            <td>${product.pid}</td>
            <td>${product.pname}</td>
            <td>${product.qty}</td>
            <td>${product.price}</td>
        </tr>
    </table>
</c:if>

<br>
<a href="./home.jsp">Back to Home</a>

</body>
</html>
