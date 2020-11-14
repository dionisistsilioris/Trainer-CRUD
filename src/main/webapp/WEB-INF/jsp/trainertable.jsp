<%-- 
    Document   : trainertable
    Created on : Jun 27, 2020, 7:57:01 PM
    Author     : Dionisis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>

        <style>
            .navbar {
                background-color: #F97300;
            }

            h1 {
                text-align: center;
            }

            footer {
                background-color: #F97300;
                margin-bottom: 0px;
                padding-bottom: 0mm;
                padding: 25px;

            }

/*            nav {
                padding-top: 580px;
            }*/

        </style>
    </head>
    <body class="d-flex flex-column h-100">
        <nav class="navbar">
            <a class="navbar-brand" href="/preinserttrainer">Return to form</a>
        </nav>
        <h1>List Trainers</h1>
        <nav>
            <h2 class="card-header text-center font-weight-bold  py-4">Trainers</h2>
            <span class="table-add float-right mb-3 mr-2"></span>
            <table id="trainerTable" class="table table-bordered table-responsive-md table-striped text-center">

                <thead>

                    <tr>

                        <th  class="text-center">Trainer id</th>
                        <th class="text-center">First Name</th>
                        <th class="text-center">Last Name</th>
                        <th class="text-center">Subject</th>


                        <th class="text-center">Update</th>
                        <th class="text-center">Remove</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${trainers}" var="t">
                    
                        <tr>
                            <td>${t.idtrainer}</td>
                            <td>${t.firstName}</td>
                            <td>${t.lastName}</td>
                            <td>${t.subject}</td>
                            <td>
                                <form action="findtrainer" method="post">
                                    <input type="hidden" name="idtrainer"
                                           value="${t.idtrainer}">
                                    <input type="submit" value="Update" class="btn btn-primary btn-rounded btn-sm my-0"
                                    >
                                </form>
                            </td>
                              <td>
                                <form action="deletetrainer" method="post">
                                    <input type="hidden" name="idtrainer"
                                           value="${t.idtrainer}">
                                    <input type="submit" value="Delete" class="btn btn-danger btn-rounded btn-sm my-0">
                                                           
                                </form>
                            </td>
                        </tr>
                </c:forEach>
                </tbody>
            </table>
        </nav>
         <footer class="fixed-bottom navbar navbar-expand-lg 
               text-center justify-content-center footer"></footer>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script> 
    </body>
</html>