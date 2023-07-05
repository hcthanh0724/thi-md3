<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
    <h2>List Student</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>DateOfBirth</th>
            <th>Email</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Classroom</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach var="hocvien" items="${hocviens}">
            <tr>
                <td>${hocvien.name}</td>
                <td>${hocvien.email}</td>
                <td>${hocvien.dob}</td>
                <td>${hocvien.address}</td>
                <td>${hocvien.phone}</td>
                <td>${hocvien.class_name}</td>
                <td>
                    <form action="" method="post">
                        <button class="btn btn-warning">Edit</button>
                    </form>
                </td>
                <td>
                    <form action="/delete" method="post">
                        <input type="hidden" name="id" value="${hocvien.id}">
                        <button class="btn btn-danger" >Delete</button>
                    </form>
                </td>
                <td>
                    <form action="/AddHv" method="get">
                        <button class="btn btn-info">Add</button>
                    </form>
                </td>
            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>

</body>
</html>
