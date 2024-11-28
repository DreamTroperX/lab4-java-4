<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Результати табулювання</title>
  <style>
    table {
      width: 50%;
      border-collapse: collapse;
      margin: 20px auto;
    }
    th, td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background-color: #f2f2f2;
    }
    tr:nth-child(even) {
      background-color: #f9f9f9;
    }
    tr:hover {
      background-color: #f1f1f1;
    }
  </style>
</head>
<body>
<h1 style="text-align:center;">Результати табулювання</h1>
<table>
  <thead>
  <tr>
    <th>x</th>
    <th>y</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="row" items="${results}">
    <tr>
      <td>${row[0]}</td>
      <td>${row[1]}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
