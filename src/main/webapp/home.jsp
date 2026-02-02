<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Product Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {font-family: Arial; background:#f0f0f0; margin:0; padding:0;}
        .container {max-width:600px; margin:50px auto; background:#fff; padding:20px; border-radius:8px; box-shadow:0 0 10px rgba(0,0,0,0.1);}
        h2 {text-align:center; margin-bottom:20px;}
        .menu {display:flex; flex-direction:column; gap:12px;}
        a {display:block; padding:12px; text-align:center; background:#4A90E2; color:#fff; text-decoration:none; border-radius:6px; font-weight:bold;}
        a:hover {background:#357ABD;}
    </style>
</head>
<body>
    <div class="container">
        <h2>Product Management Home</h2>
        <div class="menu">
            <a href="addProduct">Add Product</a>
            <a href="deleteProduct">Delete Product</a>
            <a href="updateProduct">Update Product</a>
            <a href="showById">Show Product by ID</a>
            <a href="showAll">Show All Products</a>
        </div>
    </div>
</body>
</html>
