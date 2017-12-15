<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update-customer-form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Add new customer</h2>

    <form:form method="get" action="/customer/updateAction/" modelAttribute="customer">
        <table class="table table-dark table-striped">
            <tr>
                <td></td>
                <td><form:hidden path="id"/></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><form:input path="fName"/></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="lName"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Add customer" class="btn btn-info"/></td>
            </tr>
        </table>
    </form:form>

</div>
</body>
</html>
