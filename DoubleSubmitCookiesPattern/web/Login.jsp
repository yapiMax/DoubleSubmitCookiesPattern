<%-- 
    Document   : Login
    Created on : Sep 12, 2018, 1:04:58 AM
    Author     : yapilk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form method="POST" action="LoginController">
            Username:   
            <input type="text" name="username" value="ypieris" required/>
            <br/>
            Password:   
            <input type="password" name="password" value="12345" required/>
            <br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
