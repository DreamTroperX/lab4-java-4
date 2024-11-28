<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="uk">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Результати обчислень</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 20px;
    }
    h1 {
      color: #2c3e50;
    }
    .result-container {
      margin-top: 20px;
    }
    .result-container p {
      background-color: #f4f4f4;
      padding: 10px;
      border-radius: 5px;
      margin-bottom: 10px;
    }
    .result-container p span {
      font-weight: bold;
    }
    .result-container .difference {
      color: #e74c3c;
    }
    .result-container .correct {
      color: #2ecc71;
    }
  </style>
</head>
<body>
<h1>Результати обчислень</h1>
<div class="result-container">
  <p><span>Члени ряду:</span> ${terms}</p>
  <p><span>Сума доданків |term| > e1:</span> ${sumE1}</p>
  <p><span>Сума доданків |term| > e2:</span> ${sumE2}</p>
  <p><span>Точне значення:</span> ${exact}</p>
  <p class="difference"><span>Різниця (для e1):</span> ${differenceE1}</p>
  <p class="difference"><span>Різниця (для e2):</span> ${differenceE2}</p>
</div>
</body>
</html>
