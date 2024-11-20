<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-image: url('https://img.freepik.com/free-photo/friends-restaurant-side-view_23-2149930140.jpg?semt=ais_hybrid'); /* Replace with the URL of your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: #fff;
    }
    center {
        margin-top: 5%;
        padding: 20px;
        background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for better readability */
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
    table {
        margin-top: 20px;
        border-spacing: 10px;
        font-size: 1.2rem;
        color: #fff;
    }
    table td {
        padding: 5px 10px;
    }
    table input[type="text"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    table input[type="submit"] {
        background-color: #28a745;
        color: #fff;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
    }
    table input[type="submit"]:hover {
        background-color: #218838;
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
        <form action="save">
            <table>
                <% if(request.getAttribute("response") != null) { %>
                <tr>
                    <td colspan="2" style="color: #f00; font-weight: bold;">
                        <%= request.getAttribute("response") %>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter item name"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" placeholder="Enter item price"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Add Item">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
