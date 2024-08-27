<%-- 
    Document   : index
    Created on : Aug 27, 2024, 9:43:03 AM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css"/>
    </head>
    <body>

        <form action="User_Logout">

            <h1>Home</h1>

            <div class="userDetailBox">
                <div class="userDetails">Mobile : ${sessionScope.user.mobile}</div>
                <div class="userDetails">Name : ${sessionScope.user.name}</div>
                <div class="userDetails">Gender : ${sessionScope.user.gender}</div>
                <div class="userDetails">Country : ${sessionScope.user.country}</div>
            </div>

            <button class="logout-btn">LogOut</button>

        </form>

    </body>
</html>
