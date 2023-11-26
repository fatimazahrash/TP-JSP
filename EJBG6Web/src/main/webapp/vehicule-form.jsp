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
            margin-top: 6rem;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        caption h2 {
            color: #46119c;
        }

        label {
            color: #46119c;
        }

        button.btn-success {
            background-color: #46119c;
            border-color: #46119c;
        }

        button.btn-success:hover {
            background-color: #27ae60;
            border-color: #27ae60;
        }
    </style>
</head>
<body>
    <header class="text-white py-4">
        <nav class="container mx-auto">
            <a href="#" class="text-2xl font-bold">Application Vehicule Management</a>
            <div class="float-right">
                <a href="<%=request.getContextPath()%>/list" class="text-white"> les Vehicules</a>
            </div>
        </nav>
    </header>
    <div class="container mx-auto">
        <div class="card bg-white mt-8 p-6 rounded-lg">
            <c:if test="${vehicule != null}">
                <form action="update" method="post">
            </c:if>
            <c:if test="${vehicule == null}">
                <form action="insert" method="post">
            </c:if>
            <caption>
                <h2 class="text-2xl mb-4">
                    <c:if test="${vehicule != null}">Edit Vehicule</c:if>
                    <c:if test="${vehicule == null}">Ajoute une Vehicule</c:if>
                </h2>
            </caption>
            <c:if test="${vehicule != null}">
                <input type="hidden" name="id" value="<c:out value='${vehicule.id}' />" />
            </c:if>
            <div class="mb-4">
                <label for="matricule" class="text-indigo-800">Vehicule Matricule</label>
                <input type="text" value="<c:out value='${vehicule.matricule}' />" class="form-input mt-2 p-2 w-full" id="matricule" name="matricule" required="required">
            </div>
            <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</body>
</html>
