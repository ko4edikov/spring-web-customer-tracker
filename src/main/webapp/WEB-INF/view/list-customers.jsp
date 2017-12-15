<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>List customers</h2>

    <a href="/customer/update/0"><input type="submit" value="Add Customer" class="btn btn-info"></a>

    <table class="table table-dark table-striped">

        <tr>
            <th>Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th colspan="2" align="center">Action</th>
        </tr>


        <c:forEach var="tempCustomers" items="${customers}">
            <tr>
                <td> ${tempCustomers.id}</td>
                <td> ${tempCustomers.fName}</td>
                <td> ${tempCustomers.lName}</td>
                <td> ${tempCustomers.email}</td>
                <td><a href="/customer/update/${tempCustomers.id}">Update</a></td>
                <td><a href="/customer/delete/${tempCustomers.id}">Delete</a></td>
            </tr>
        </c:forEach>

    </table>


</div>
</body>
</html>
