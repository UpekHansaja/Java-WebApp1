<%-- 
    Document   : user_registration
    Created on : Aug 27, 2024, 10:16:17 AM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css"/>
    </head>
    <body>

        <form action="User_Registration" method="POST">
            <h1>User Registration</h1>

            <c:if test="${param.msg==\"error1\"}">
                <p class="erMsg">Mobile Number Already Exist..!</p>
            </c:if>

            <div>
                <label for="name">Name</label>
                <div>
                    <input type="text" name="uname" id="name" required/>
                </div>
            </div>

            <div>
                <label for="mobile">Mobile</label>
                <div>
                    <input type="tel" name="mobile" id="mobile" required/>
                </div>
            </div>

            <div>
                <label>Gender</label>

                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="male">Male</label>
                    <input type="radio" name="gender" id="male" value="Male"/>

                    <label for="female">Female</label>
                    <input type="radio" name="gender" id="female" value="Female"/>
                </div> 
            </div>

            <div>
                <label for="country">Country</label>
                <div>
                    <select name="country" id="country" required>
                        <option hidden>Select Country</option>
                        <option>Australia</option>
                        <option>Singapore</option>
                        <option>Italy</option>
                        <option>India</option>
                        <option>Sri Lanka</option>
                        <option>Canada</option>
                        <option>USA</option>
                        <option>UK</option>
                    </select>
                </div>
            </div>

            <div>
                <label for="password">Password</label>
                <div>
                    <input type="password" name="password" required/>
                </div>
            </div>

            <button type="submit">Create Account</button>

        </form>

    </body>
</html>
