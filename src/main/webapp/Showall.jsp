<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>

<style>
    body { font-family: Arial; text-align: center; }

    table {
        margin: 20px auto;
        border-collapse: collapse;
        width: 70%;
    }

    th, td {
        border: 1px solid black;
        padding: 8px;
    }

    th {
        background-color: #007bff;
        color: white;
    }
</style>

</head>
<body>

<h2>PRODUCT PRESENT IN THE TABLE</h2>

<c:if test="${empty list}">
    <h3 style="color:red;">No Product In the Table</h3>
</c:if>

<c:if test="${not empty list}">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Qty</th>
            <th>Price</th>
        </tr>

        <c:forEach var="p" items="${list}">
            <tr>
                <td>${p.pid}</td>
                <td>${p.pname}</td>
                <td>${p.qty}</td>
                <td>${p.price}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
