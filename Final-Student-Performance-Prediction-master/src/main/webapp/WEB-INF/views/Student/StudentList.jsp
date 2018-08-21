<%-- 
    Document   : manageStudents
    Created on : Jun 24, 2018, 8:35:49 AM
    Author     : santo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Manage Students</title>

        <style>
            .button1{
                margin-top: 10px;
                margin-bottom: 10px;
            }
        </style>

        <%@include file="../../common/DashboardMenu.jspf" %>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h2>Student Details</h2>
        </div>
        <% if (role.equals("admin")) { %>
        <div class="row">                        
            <div class="col"><a href="AddNewStudent"><button type="button" class="btn btn-dark btn-sm">Add New Student</button></a></div>
       <div class="col"><a href="PredictedResults"><button type="button" class="btn btn-dark btn-sm">Predicted Results</button></a></div>
      
        </div>
        
        <% } %>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

            <span>${SorryMessage}</span>
        </div>
        <div class="table-responsive">
            <table class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Student Name </th>
                        <th>Address</th>
                        <th>Gender</th>
                        <th>DOB</th>
                        <th>Age </th>
                        <th>Date of Admission </th>
                        <th>Parent Name</th>
                        <th>Email</th>
                        <th>Phone No</th>
                        <th> Mother Edu</th>
                        <th>Father Edu</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${AllStudent}" var="p">
                        <tr>
                            <td>${p.student_id}</td>
                            <td>${p.studentname}</td>
                            <td>${p.address}</td>
                            <td>${p.gender}</td>
                            <td>${p.dob}</td> 
                            <td>${p.age}</td>
                            <td>${p.doa}</td>
                            <td>${p.parentName}</td>
                            <td>${p.email}</td>
                            <td>${p.phoneNo}</td>
                            <td>${p.medu}</td>
                            <td>${p.fedu}</td>

                            <td>
                                <% if (role.equals("admin")) { %>
                                <a href="EditStudent?id=${p.student_id}">Edit</a>
                                <a href="DeleteStudent?id=${p.student_id}">Delete</a>
                                <a href="Prediction?id=${p.student_id}">View Report</a>
                                <% } else if (role.equals("teacher")) {%>
                                <a href="TeacherInput?id=${p.student_id}">Fill Data</a>
                                <a href="Prediction?id=${p.student_id}">View Report</a>
                                <% }%>


                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
</div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>');</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
</body>
</html>
