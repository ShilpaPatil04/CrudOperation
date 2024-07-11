<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
</head>
<body>
<h1>Student List</h1>
<a href="create">Add New Student</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.age}</td>
            <td>
                <a href="update?id=${student.id}">Edit</a> |
                <a href="delete?id=${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
