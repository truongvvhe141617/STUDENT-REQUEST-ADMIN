

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
            <div class="title">
                FPT Education System
            </div>
            <div class="subtitle">
                Teacher Control Panel
            </div>
            <div class="main">
                <div class="menu">
                    <ul>
                        <li><a href="LogoutController">Welcome ${username}, Log out</a></li>
                        <li><a href="HomeController">Home</a></li>
                        <li><a href="ViewRequestController">View Requests</a></li>
                        <li><a href="ViewRequestController">Solve Requests</a></li>
                        <li><a href="#" style="color: steelblue;">Today is : ${datenow}</a></li>
                    </ul>
                </div>
                <div class="content">
                    <div class="titlecontent">
                        View requests
                    </div>
                    <form action="ViewRequestController" method="POST">
                        <input type="text" name="date" value="${date}"/>
                        <div class="searchform">
                            <div><span>Select department</span>
                                <select name="depart" id="depart">
                                    <c:forEach items="${departList}" var="d">
                                    <option>${d.departmentName}</option>       
                                    </c:forEach>
                                </select>
                            </div>
                            <div><span>or Enter request title</span>
                                <input type="text" id="title" name="title" value="" style="width: 35%">
                                <button class="button" name="search" type="submit">View</button>
                             
                            </div>
                        </div>
                        <div class="tbl-header">
                            <table>
                                <tr>
                                    <th>Request title</th>
                                    <th>Date created</th>
                                    <th>Close created</th>
                                    <th>Status</th>
                                    <th>Report to</th>
                                    <th>Detail</th>
                                </tr>
                            </table>
                        </div>
                        <div class="tbl-content-view">
                            <table style="width: 100%">
                                <c:forEach items="${list}" var="x">
                                    <tr>
                                        <td>${x.title}</td>
                                        <td>${x.dateCreated}</td>
                                        <td>${x.dateClosed}</td>
                                        <td>
                                            
                                        <c:choose>
                                            <c:when test="${x.state==true}">
                                             <p style="color: red">Solved</p>
                                            </c:when>
                                            <c:otherwise>
                                               <p style="color: blue">In progress</p>
                                            </c:otherwise>
                                        </c:choose>
                                                 </td>
<!--                                        <td>${x.state==true?"solved":"in progress"}</td>-->
                                        <td>${x.department}</td>
                                        <td>
<!--                                            <a href="SolveRequestController?id=${x.id}">Solve</a>-->
                                        <c:choose>
                                            <c:when test="${x.state==false}">
                                                <a href="SolveRequestController?id=${x.id}"style="text-decoration: underline;color: aqua">Solve</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="SolveRequestController?id=${x.id}" style="text-decoration: underline;color: aqua">View</a>
                                            </c:otherwise>
                                        </c:choose>
                                        </td>
                                    </tr> 
                                </c:forEach>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
