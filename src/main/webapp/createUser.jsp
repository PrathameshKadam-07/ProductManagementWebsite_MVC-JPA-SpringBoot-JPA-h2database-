<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 --%>
 
<!DOCTYPE html>
<html>
<head>
    <title>Create User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {font-family: Arial; display:flex; justify-content:center; align-items:center; height:100vh; margin:0; background:#f0f0f0;}
        .box {background:#fff; padding:20px; border-radius:8px; width:100%; max-width:350px; box-shadow:0 0 10px rgba(0,0,0,0.1);}
        input {width:100%; padding:10px; margin:8px 0; border:1px solid #ccc; border-radius:4px;}
        button {width:100%; padding:10px; background:#4A90E2; color:#fff; border:none; border-radius:4px; cursor:pointer;}
        button:hover {background:#357ABD;}
    </style>
</head>
<body>
    <div class="box">
        <h2 style="text-align:center;">Create User</h2>
        
        <form action="createUserPage" method="post">
            <input type="text" name="uname" placeholder="Enter Username" required>
            <input type="password" name="pass" placeholder="Enter Password" required>

<%--
            <c:if test="${not empty msg}">
            <c:out value="${msg}"></c:out> 
            </c:if>       
--%>

            <button type="submit">Register</button>
        </form>
        <div style="text-align:center; margin-top:10px;">
            <a href="index">Back to Login</a>
        </div>
    </div>
</body>
</html>
