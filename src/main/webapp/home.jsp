<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - Product Management System</title>
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
            margin: 0;
        }

        .navbar {
            font-weight: 600;
        }

        .card {
            border-radius: 12px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        }

        .menu a {
            transition: all 0.3s ease;
        }

        .menu a:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">EnterpriseApp</a>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container my-5">
        <div class="card shadow-lg p-4 animate__animated animate__fadeIn">
            <h2 class="text-center mb-4 fw-semibold">Product Management Home</h2>
            <div class="menu d-grid gap-3">
                <a href="addProduct" class="btn btn-primary fw-bold">➕ Add Product</a>
                <a href="deleteProduct" class="btn btn-danger fw-bold">❌ Delete Product</a>
                <a href="updateProduct" class="btn btn-warning fw-bold">✏️ Update Product</a>
                <a href="showById" class="btn btn-info fw-bold">🔍 Show Product by ID</a>
                <a href="Showall" class="btn btn-success fw-bold">📦 Show All Products</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (for responsive navbar only) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>