<%-- 
    Document   : user_login
    Created on : Aug 27, 2024, 11:53:38 AM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User LogIn</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css"/>
    </head>
    <body>

        <form action="User_Login" method="POST">
            <h1>User LogIn</h1>

            <c:if test="${param.msg==\"error2\"}">
                <p class="erMsg">No Account Found..! <a href="user_registration.jsp">Create New Account?</a></p>
            </c:if>

            <c:if test="${param.msg==\"error3\"}">
                <p class="erMsg">Invalid Credentials..!</p>
            </c:if>

            <div>
                <label for="mobile">Mobile</label>
                <div>
                    <input type="tel" name="mobile" id="mobile" required/>
                </div>
            </div>

            <div>
                <label for="password">Password</label>
                <div>
                    <input type="password" name="password" required/>
                </div>
            </div>

            <button type="submit" class="logInBtn">LogIn</button>

            <a href="user_registration.jsp" class="userRegLink">Create New Account?</a>
        </form>

    </body>
</html>

