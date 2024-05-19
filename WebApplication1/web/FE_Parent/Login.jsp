<%-- 
    Document   : Login
    Created on : May 16, 2024, 9:52:28 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Preschool Login</title>
        <link rel="stylesheet" href="../CSS/Login.css">
    </head>
    <body>
        <div class="login-container">
            <div class="login-box">
                <h1>Welcome to Sakura Preschool</h1>
                <form>
                    <div class="input-group">
                        <label for="username">Username</label>
                        <input type="text" id="username" required>
                    </div>
                    <div class="input-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" required>
                    </div>
                    <div class="input-group">
                        <input type="submit" value="Login">
                    </div>
                    <div class="forgot-link">
                        <a href="ForgotPassword.html">Forgot Password?</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>


