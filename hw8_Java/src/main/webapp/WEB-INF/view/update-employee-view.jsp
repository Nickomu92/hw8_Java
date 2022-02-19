<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Изменение данных о работнике</title>
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
        <form:form action="../editEmployee" modelAttribute="updateEmployee" cssClass="px-5 py-5">
            <p class="h3 text-center text-warning my-3">Изменение данных о работнике:</p>
            <form:hidden path="id"/>
            <div class="mb-3">
                <form:label path="firstName" cssClass="form-label">Имя:</form:label>
                <form:input path="firstName" cssClass="form-control"/>
                <form:errors path="firstName" cssClass="text-danger"/>
            </div>
            <div class="mb-3">
                <form:label path="lastName" cssClass="form-label">Фамилия:</form:label>
                <form:input path="lastName" cssClass="form-control"/>
                <form:errors path="lastName" cssClass="text-danger"/>
            </div>
            <div class="mb-3">
                <form:label path="department" cssClass="form-label">Отдел:</form:label>
                <form:input path="department" cssClass="form-control"/>
                <form:errors path="department" cssClass="text-danger"/>
            </div>
            <div class="mb-3">
                <form:label path="salary" cssClass="form-label">Зарплата:</form:label>
                <form:input path="salary" cssClass="form-control"/>
                <form:errors path="salary" cssClass="text-danger"/>
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-warning my-3">Измененить данные о работнике</button>
            </div>
        </form:form>
    </div>
</body>
</html>
