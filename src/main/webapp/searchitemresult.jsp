<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Item</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-image: url('https://img.freepik.com/premium-photo/coffee-cup-website-icons-front-side-brown-background_187299-27066.jpg?semt=ais_hybrid'); /* Replace with the URL of your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: #fff;
    }
    center {
        margin-top: 5%;
        padding: 20px;
        background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
    }
    h1 {
        font-size: 2rem;
        margin: 10px 0;
    }
    a {
        text-decoration: none;
        color: #00f;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 8px 15px;
        border-radius: 5px;
        font-weight: bold;
    }
    a:hover {
        background-color: #0077ff;
        color: #fff;
    }
    hr {
        border: 1px solid #fff;
        width: 80%;
    }
    table {
        margin-top: 20px;
        width: 50%;
        border-collapse: collapse;
        font-size: 1.2rem;
        color: #fff;
    }
    table th, table td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }
    table th {
        background-color: #17a2b8;
        color: #fff;
        font-weight: bold;
    }
    table tr:nth-child(even) {
        background-color: rgba(255, 255, 255, 0.1);
    }
    table tr:hover {
        background-color: rgba(255, 255, 255, 0.2);
    }
</style>
</head>
<body>
    <center>
        <h1>Restaurant Management System</h1> 
        <hr>
        <h1><a href="additem.jsp">Add Item</a></h1>
        <h1><a href="searchitem.jsp">Search Item</a></h1>
        <h1><a href="findAll">View All Items</a></h1>
        <hr>
        <table>
            <tr>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <c:if test="${not empty item}">
                <tr>
                    <td>${item.getName()}</td>
                    <td>${item.getPrice()}</td>
                </tr>
            </c:if>
            <c:if test="${empty item}">
                <tr>
                    <td colspan="2">No item found</td>
                </tr>
            </c:if>
        </table>
    </center>
</body>
</html>
