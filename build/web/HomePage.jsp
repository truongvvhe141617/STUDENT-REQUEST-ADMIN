

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/home.css" rel="stylesheet" type="text/css" />
        <title>home Page</title>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="title">
                    FPT Education System
                </div>
                <div class="subtitle">
                    Teacher Control Panel
                </div>
            </div>
            <div class="main">
                <div class="menu">
                    <ul>
                        <li><a href="LogoutController">Welcome ${username}, Log out</a></li>
                        <li><a href="HomeController">Home</a></li>
                        <li><a href="ViewRequestController">View Requests</a></li>
                        <li><a href="ViewRequestController">Solve Requests</a></li>
                        <li><a href="#" style="color: steelblue;">Today is : ${datenow2}</a></li>
                    </ul>
                </div>
                <div class="content">
                    <div class="titlecontent">
                        Request received by today - ${datenow}
                    </div> 
                    <div class="tbl-header">
                        <table>
                            <tr>
                                <th>Department name</th>
                                <th>Number of request</th>
                                <th>View detail</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tbl-content">
                        <table>
                            <c:forEach items="${requestList}" var="r">
                                <tr>
                                    <td>${r.department}</td>
                                    <td>${r.num}</td>
                                    <td><a href="ViewRequestController?date=${datenow}">View</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="titlecontent">
                        Request received by last 2 days
                    </div> 
                    <div class="tbl-header">
                        <table>
                            <tr>
                                <th>Department name</th>
                                <th>Number of request</th>
                                <th>View detail</th>
                            </tr>
                        </table>
                    </div>
                    <div class="tbl-content">
                        <table>
                            <c:forEach items="${requestList2}" var="r2">
                                <tr>
                                    <td>${r2.department}</td>
                                    <td>${r2.num}</td>
                                    <td><a href="ViewRequestController?date=${minusday}">View</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
