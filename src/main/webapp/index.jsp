<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
    body {font-family: Arial; display:flex; justify-content:center; align-items:center; height:100vh; margin:0; background:#f0f0f0;}
    .box {background:#fff; padding:20px; border-radius:8px; width:100%; max-width:300px; box-shadow:0 0 10px rgba(0,0,0,0.1);}
    input {width:95%; padding:10px; margin:8px 0; border:1px solid #ccc; border-radius:4px;}
    button {width:100%; padding:10px; background:#4A90E2; color:#fff; border:none; border-radius:4px; cursor:pointer;}
    button:hover {background:#357ABD;}
</style>
</head>
<body>
<div class="box">
    <h2 style="text-align:center;">Login</h2>

    <form action="login" method="post">
        <input type="text" name="uname" placeholder="Username" required>
        <input type="password" name="pass" placeholder="Password" required>


        <c:if test="${not empty msg}">
            <c:out value="${msg}" />
        </c:if>



        <button type="submit">Login</button>
    </form>

    <div style="text-align:center; margin-top:10px;">
        <a href="createUser">Create New User</a>
    </div>
</div>
</body>
</html>
