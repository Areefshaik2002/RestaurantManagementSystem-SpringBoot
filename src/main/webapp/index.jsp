<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Management System</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-image: url('https://img.freepik.com/free-photo/people-ramadan-celebration_23-2151344679.jpg?t=st=1731998495~exp=1732002095~hmac=df84f5ae7810093e506a349978dc48fa720f2a60e303384fe824ba494e96d14c&w=740'); /* Replace with the URL of your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: #fff;
    }
    h1 {
        font-size: 2rem;
        margin: 10px 0;
    }
    a {
        text-decoration: none;
        color: #00f;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 10px 20px;
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
    center {
        margin-top: 10%;
        padding: 20px;
        background-color: rgba(0, 0, 0, 0.5); /* Slightly transparent background */
        border-radius: 10px;
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
    </center>
</body>
</html>
