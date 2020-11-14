<%-- 
    Document   : trainerform
    Created on : Jun 20, 2020, 5:35:44 PM
    Author     : Dionisis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
            .navbar {
                background-color: #F97300;
            }

            #teacher {

                padding-top: 10px;
                float: left;
            }

            form {
                width: 500px;
                margin: auto;
                padding-top: 100px;
                padding-left: 200px;
                float: left;
            }

            h1 {
                text-align: center;
            }

            footer {
                fixed: bottom;
                background-color: #F97300;
                margin-bottom: 0px;
                padding-bottom: 0mm;
                padding: 35px;

            }

            nav {
                padding-top: 580px;
            }

        </style>

    </head>
    <body>
        <nav class="navbar">
            <a class="navbar-brand" href="/showtrainers">Go to table</a>
        </nav>

        <div id="teacher">
            <img src="img/teacher.jpg" alt="teacherimage">
        </div>

        <div id="form">
            
            <div id="form" action="/doinserttrainer" method="post"  modelAttribute="newtrainer">
        <h1>Trainer form</h1>
        <springform:form action="/doinserttrainer" method="post"  modelAttribute="newtrainer" cssClass="main-form needs-validation" novalidate="novalidate">

            <div class="form-group">
                <label for="firstnameText">First name</label>
                <springform:input path="firstName" placeholder="name" required = "required" pattern="[A-Za-z]+"
                    cssClass="form-control"/>
                <div class="invalid-feedback">please enter alphabetic characters</div>
            </div>
            <div class="form-group">
                <label for="lastnameText">Last name</label>
                <springform:input path="lastName"  placeholder="surname" required= "required" pattern="[A-Za-z]+"
                    cssClass="form-control"/>
                <div class="invalid-feedback">please enter alphabetic characters</div>
            </div>
            <div class="form-group">
                <label for="subjectText">Subject</label>
                <springform:input path="subject" required= "required" placeholder="front-end,back-end,database"
                    cssClass="form-control"/>
                <div class="invalid-feedback">please enter subject</div>
            </div>
            <div>
                
                     <button type="submit" class="btn btn-outline-primary" onclick="">Submit</button>
                  

            </div>
            <script>
                var form = document.querySelector('.needs-validation');
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                })
            </script>
            
        </springform:form>

        </div>
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
