<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Vehicule Management Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <style>
        body {
            background-color: #f5f5f5;
        }

        header {
            background: linear-gradient(to right, #3498db, #46119c);
        }

        header a {
            color: #ffffff;
        }

        .container {
            margin-top: 2rem;
        }

        .btn-success {
            background-color: #46119c;
            border-color: #46119c;
        }

        .btn-success:hover {
            background-color: #46119c;
            border-color: #46119c;
        }

        table {
            margin-top: 1rem;
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #3498db;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <header class="text-white py-4">
        <nav class="container mx-auto">
            <a href="#" class="text-2xl font-bold">Application Vehicule Management </a>
            <div class="float-right">
                <a href="<%=request.getContextPath()%>/list" class="text-white"> Les Vehicules</a>
            </div>
        </nav>
    </header>
    <div class="container mx-auto">
        <h3 class="text-center">List des Vehicules</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Ajoute une Vehicule</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Matricule</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="vehicule" items="${listVehicule}">
                    <tr>
                        <td><c:out value="${vehicule.id}" /></td>
                        <td><c:out value="${vehicule.matricule}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${vehicule.id}' />" class="btn btn-success">Edit</a>
                            <a href="delete?id=<c:out value='${vehicule.id}' />" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
