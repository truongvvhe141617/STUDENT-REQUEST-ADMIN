

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/home.css" rel="stylesheet" type="text/css" />
        <link href="css/login.css" rel="stylesheet" type="text/css" />
        <title>Solve Page</title>
    </head>
    <body>
        <div class="container">
            <div class="title">
                FPT Education System
            </div>
            <div class="subtitle">
                Student Control Panel
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
                <form action="SolveRequestController" method="POST">
                    <div class="content">
                        <div class="titlecontent" style="text-align: left">
                            Request ID: ${r.id}
                            <input type="hidden" name="id" value="${r.id}"/>
                        </div>
                        <div class="solve">                    
                            <table>
                                <tr>
                                    <th>Request to department</th>
                                    <td><input type="text" id="depart" name="depart" value="${r.department}"></td>
                                </tr>                      
                                <tr>
                                    <th>Student ID</th>
                                    <td><input type="text" id="studenID" name="studenID" value="${r.studentID}"></td>
                                </tr>
                                <tr>
                                    <th>Student name</th>
                                    <td><input type="text" id="studentname" name="studentname" value="${r.name}"></td>
                                </tr>
                                <tr>
                                    <th>Date created</th>
                                    <td><input type="text" id="dateCreated" name="dateCreated" value="${r.dateCreated}"></td>
                                </tr>
                                <tr>
                                    <th>Request title</th>
                                    <td><input type="text" id="titleRequest" name="titleRequest" value="${r.title}"></td>
                                </tr>
                                <tr>
                                    <th>Request content</th>
                                    <td><input type="text" id="contentRequest" name="contentRequest" value="${r.content}"></td>
                                </tr>
                                <tr>
                                    <th>Request state</th>
                                    <td> 
                                        <c:choose>
                                            <c:when test="${r.state==true}">
                                                <input type="radio" name="state" value="1" checked><span>Approved</span>
                                                <input type="radio" name="state" value="0"><span>Reject</span>
                                            </c:when>
                                            <c:otherwise>
                                                <input type="radio" name="state" value="1"><span>Approved</span>
                                                <input type="radio" name="state" value="0" checked><span>Reject</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Close date</th>
                                    <td><input type="text" id="dateClosed" name="dateClosed" value="${r.dateClosed}"></td>
                                </tr>
                                <tr>
                                    <th>Solve by</th>
                                    <td><input type="text" id="solve" name="solved" value="${r.solved}"></td>
                                </tr>
                                <tr>
                                    <th>Attached (if any)</th>
                                    <td><a href="images/1.jpg" download><button class="button" name="download" type="button">Download</button></a></td>
                                </tr>
                                <tr>
                                    <th>School's solution</th>
                                    <td><input type="text" id="solution" name="solution" value="${r.solution}"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${r.state==true}">

                                            </c:when>
                                            <c:otherwise>
                                                <button class="button" name="save" type="submit">Save</button>
                                            </c:otherwise>
                                        </c:choose>        
                                    </td>
                                </tr>


                            </table>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
