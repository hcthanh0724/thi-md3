<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <title>Add new student</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Add new student</h2>
    <form action="/AddHv" method="post">
        <div class="form-group">
            <label >Name:</label>
            <input type="text" class="form-control"  placeholder="Enter id" name="id"  value="${hocvien.id}">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" value="${hocvien.name}">
        </div>
        <div class="form-group">
            <label for="Email address">Email Address:</label>
            <input type="text" class="form-control" id="Email address" placeholder="Enter email address" name="email" value="${hocvien.email}">
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="dob" class="form-control" id="dob" placeholder="Enter Date of Birth as DD/MM/YYYY" name="dob" value="${hocvien.dob}">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" value="${hocvien.address}">
        </div>
        <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="text" class="form-control" id="phone" placeholder="Enter phone number" name="phone" value="${hocvien.phone}">
        </div>
        <div class="form-group">
            <label for="class">Id class:</label>
            <input type="text" class="form-control" id="class" placeholder="Enter class name" name="class_name" ${hocvien.id_class}>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>

</body>
</html>
