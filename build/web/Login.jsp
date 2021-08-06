

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/home.css" rel="stylesheet" type="text/css" />
        <link href="css/login.css" rel="stylesheet" type="text/css" />
        <title>home Page</title>
    </head>
    <body>
        <div class="container">
            <div class="title">
                FPT Education System
            </div>
            <div class="subtitle">
                Teacher Control Panel
            </div>
            <div class="main">
                <div class="menu">
                    <ul>
                        <li><a href="LoginController">Login</a></li>
                        <li><a href="HomeController">Home</a></li>
                        <li><a href="ViewRequestController">View Requests</a></li>
                        <li><a href="SolveRequestController">Solve Requests</a></li>
                        <li><a href="#">Today</a></li>
                    </ul>
                </div>
                <div class="content">
                    <div class="titlecontent">
                        Member Login
                    </div>
                    <div class="subcontent">
                        Using your username and password.
                    </div>
                    <form method="POST" action="LoginController">
                    <div class="loginform">
                    <table>
                        <tr>
                            <th>Username</th>
                            <td><input type="text" name="username" value="" required></td>
                            <td><span style="color: red">(*)</span></td>
                        </tr>
                        <tr>
                            <th>Password</th>
                            <td><input type="password" name="password" value="" required></td>
                            <td><span style="color: red">(*)${invalidPassword}</span></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div>
                                <button class="button" name="save" type="submit">Log In</button>
                                </div>
                                <div>
                                    <span>The field (*) is required</span>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                    </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
