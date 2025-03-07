<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <style>
        table {
            width: 70%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            color: black;
            text-decoration: none;
        }
        #edit:hover {
            color: green;
        }
        #delete:hover {
            color: red;
        }
        i {
            padding: 5px;
        }
        i:hover {
            background-color: rgb(222, 222, 222);
            border-radius: 5px;
        }
        
    </style>
</head>
<body>
    <center>
        <h1>Customer Management</h1>
        <a href="logout" id="logout"><button id="buttonLogout">Logout</button></a>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            
            <c:forEach var="customer" items="${customers}">
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.name}</td>
                    <td>${customer.email}</td>
                    <td>${customer.mobile}</td>
                    <td>
                        <a href="editById?eid=${customer.id}">
                            <i id="edit" class="fa-solid fa-pen-to-square"></i>
                        </a>
                    </td>
                    <td>
                        <a href="deleteById?did=${customer.id}" onclick="return confirm('Are you sure you want to delete this customer?');">
                            <i id="delete" class="fa-regular fa-trash-can"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
    </center>
</body>
</html>
