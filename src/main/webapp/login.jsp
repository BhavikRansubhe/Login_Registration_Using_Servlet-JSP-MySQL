<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Form</title>
        <link href="style.css" rel="stylesheet"/>
    </head>
    <body>
        <h1 align="center">Login Form</h1>
        <div class="login">
            <form action="login" method="post">
                <div>
                    <div><label>Username:</label></div>
                    <div>
                        <input type="text" name="username" placeholder="Enter your username"/>
                    </div>
                </div>
                <div class="leavespace">
                    <div><label>Password:</label></div>
                    <div>
                        <input type="password" name="password" placeholder="Enter your password"/>
                    </div>
                </div>
                <div class="leavespace">
                    <input type="submit" value="Login">
                    <input type="reset" value="Reset"/><br>
                    <a href="register.jsp" style="color:white"><br>Click Here To Register</a>
                </div>
            </form>
        </div>
    </body>
</html>