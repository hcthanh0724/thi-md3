<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04/07/2023
  Time: 11:57 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2>Edit</h2>
    <form action="/AddHv" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
        </div>
        <div class="form-group">
            <label for="Email address">Email Address:</label>
            <input type="text" class="form-control" id="Email address" placeholder="Enter email address" name="email address">
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="dob" class="form-control" id="dob" placeholder="Enter Date of Birth as DD/MM/YYYY" name="dob">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" placeholder="Enter address" name="address">
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" class="form-control" id="phone" placeholder="Enter phone number" name="phone">
        </div>
        <div class="form-group">
            <label for="class">Id class:</label>
            <input type="text" class="form-control" id="class" placeholder="Enter class name" name="class">
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>

</body>
</html>
