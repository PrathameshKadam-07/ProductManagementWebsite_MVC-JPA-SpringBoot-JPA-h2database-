<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>/* same styling */</style>
</head>
<body>
    <div class="box">
        <h2>Update Product</h2>
        <form action="/update" >
            <input type="text" name="id" placeholder="Product ID" required>
            <input type="text" name="name" placeholder="New Name">
            <input type="number" name="price" placeholder="New Price">
            <input type="number" name="quantity" placeholder="New Quantity">
            <button type="submit">Update</button>
        </form>
        <div style="text-align:center; margin-top:10px;">
            <a href="/home.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
