<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 15/7/2021
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
    <style>
        table {
            border: 1px solid #000;
        }

        th, td {
            border: 1px dotted #555;
        }
    </style>
</head>
<body>
There are <span th:text="${customers.size()}"></span> customer(s).
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <tr th:each="c : ${customers}">
        <td th:text="${c.id}"></td>
        <td>
            <a th:href="@{/customers/{id}(id=${c.id})}" th:text="${c.name}"></a>
        </td>
        <td th:text="${c.email}"></td>
        <td th:text="${c.address}"></td>
    </tr>
    </tbody>
</table>
</body>
</html>