<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mathematical Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }
        h1, h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            margin-top: 15px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        hr {
            border: 1px solid #ccc;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<h1>Mathematical Calculator</h1>

<!-- Section for Series Calculation (Завдання 2.1) -->
<section>
    <h2>Calculate Series (Завдання 2.1)</h2>
    <form action="calculate" method="post">
        <input type="hidden" name="action" value="series">

        <label for="x">Enter x:</label>
        <input type="text" id="x" name="x" required>

        <label for="n">Enter n (number of terms):</label>
        <input type="number" id="n" name="n" required>

        <label for="e1">Enter e1 (threshold):</label>
        <input type="text" id="e1" name="e1" required>

        <label for="e2">Enter e2 (second threshold):</label>
        <input type="text" id="e2" name="e2" required>

        <button type="submit">Calculate Series</button>
    </form>
</section>

<hr>

<!-- Section for Function Tabulation (Завдання 2.2) -->
<section>
    <h2>Tabulate Function (Завдання 2.2)</h2>
    <form action="calculate" method="post">
        <input type="hidden" name="action" value="tabulate">

        <label for="a">Enter a (start of range):</label>
        <input type="text" id="a" name="a" required>

        <label for="b">Enter b (end of range):</label>
        <input type="text" id="b" name="b" required>

        <label for="h">Enter h (step size):</label>
        <input type="text" id="h" name="h" required>

        <button type="submit">Tabulate Function</button>
    </form>
</section>
</body>
</html>
