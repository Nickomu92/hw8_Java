<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Список работников</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <p class="navbar-brand text-center">
                <span class="text-light h4 px-2">Домашнее задание №8</span>
                <span class="text-warning h4 px-2">Java</span>
                <span class="text-danger h5 px-2">Мулина Николая</span></p>
        </div>
    </nav>
    <div class="container">
        <p class="h3 text-center text-primary my-3">Список работников:</p>
        <c:choose>
            <c:when test="${employees.size() > 0}">
                <table class="table table-striped my-2">
                    <thead>
                    <tr>
                        <th>№</th>
                        <th>Имя</th>
                        <th>Фамилия</th>
                        <th>Отдел</th>
                        <th>Зарплата, $</th>
                        <th>Действия</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="employee" items="${employees}">
                        <tr class="align-middle">
                            <td>${employee.id}</td>
                            <td>${employee.firstName}</td>
                            <td>${employee.lastName}</td>
                            <td>${employee.department}</td>
                            <td>${employee.salary}</td>
                            <td>
                                <button type="button" class="btn btn-warning mx-2" onclick="window.location.href = 'updateEmployeeForm/${employee.id}'">Изменить</button>
                                <button type="button" class="btn btn-danger mx-2" onclick="window.location.href = 'deleteEmployee/${employee.id}'">Удалить</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <div class="alert alert-danger h4 my-2">Нет записей работников!!!</div>
            </c:otherwise>
        </c:choose>
        <div class="d-grid gap-2">
            <button type="button"  class="btn btn-primary my-3" onclick="window.location.href = 'createEmployeeForm'">Добавить работника</button>
        </div>
    </div>
</body>
</html>
