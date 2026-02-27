<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <!-- Inline Custom CSS -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            font-weight: 600;
        }

        .card {
            max-width: 350px;
            border-radius: 12px;
        }

        .btn-animate {
            transition: all 0.3s ease;
        }

        .btn-animate:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .alert {
            font-size: 0.9rem;
        }
    </style>
</head>
<body class="d-flex align-items-center justify-content-center vh-100">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">Product Management System</a>
        </div>
    </nav>

    <!-- Login Card -->
    <div class="card shadow-lg p-4 animate__animated animate__fadeIn">
        <h3 class="text-center mb-4 fw-semibold">Login</h3>




        <form action="login" method="post">
         <div class="mb-3">
            <input type="text" name="uname" class="form-control" placeholder="Username" required>
         </div>
            <div class="mb-3">
            		<input type="password" name="pass" class="form-control" placeholder="Password" required>
            </div>

            <!-- Message -->
            <c:if test="${not empty msg}">
            		<div class="alert alert-warning text-center py-2">
            		<c:out value="${msg}" />
           		 </div>
            </c:if>

         <button type="submit" class="btn btn-primary w-100 btn-animate">Login</button>
        </form>

        <div class="text-center mt-3">
            <a href="createUser" class="text-decoration-none">Create New User</a>
        </div>
    </div>




    <!-- Bootstrap JS (for responsive navbar only) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>