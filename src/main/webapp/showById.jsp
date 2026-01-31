<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Show Product by ID</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>/* same styling */</style>
</head>
<body>
    <div class="box">
        <h2>Show Product by ID</h2>
        <form action="/showbyid" method="post">
            <input type="text" name="id" placeholder="Enter Product ID" required>
            <button type="submit">Show</button>
        </form>
        <div style="text-align:center; margin-top:10px;">
            <a href="/home.jsp">Back to Home</a>
        </div>
    </div>
</body>
</html>
