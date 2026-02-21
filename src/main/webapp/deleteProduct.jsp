<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <!-- Internal Custom CSS -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
        }
        .navbar { font-weight: 600; }
        .sidebar {
            min-height: 100vh;
            background-color: #343a40;
            color: #fff;
            padding-top: 1rem;
        }
        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            display: block;
            padding: 0.75rem 1rem;
            transition: all 0.3s ease;
        }
        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }
        .card {
            border-radius: 12px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        }
        .btn-custom {
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        .alert { font-size: 0.9rem; }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">EnterpriseApp</a>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">

            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar">
                <h5 class="px-3 mb-3">Menu</h5>
                <a href="home">🏠 Home</a>
                <a href="addProduct">➕ Add Product</a>
                <a href="deleteProduct">🗑️ Delete Product</a>
                <a href="updateProduct">✏️ Update Product</a>
                <a href="showById">🔍 Show Product by ID</a>
                <a href="Showall">📦 Show All Products</a>
              
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 p-4">
                <div class="card shadow-lg p-4 animate__animated animate__fadeIn">
                    <h3 class="text-center mb-4 fw-semibold">Delete Product</h3>

                    <form action="delete" method="post">
                        <div class="mb-3">
                            <input type="text" name="id" class="form-control" placeholder="Enter Product ID to Delete" required>
                        </div>

                        <!-- Message -->
                        <c:if test="${not empty msg}">
                            <div class="alert alert-warning text-center py-2">
                                <c:out value="${msg}" />
                            </div>
                        </c:if>

                        <button type="submit" class="btn btn-danger w-100 btn-custom">Delete</button>
                    </form>

                    <div class="text-center mt-3">
                        <a href="./home.jsp" class="text-decoration-none">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>