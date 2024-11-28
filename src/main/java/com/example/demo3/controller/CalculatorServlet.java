package com.example.demo3.controller;

import com.example.demo3.model.MathFunctions;
import com.example.demo3.model.Tabulation;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

//@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String action = request.getParameter("action");
            if ("series".equals(action)) {
                // Завдання 2.1
                double x = Double.parseDouble(request.getParameter("x"));
                int n = Integer.parseInt(request.getParameter("n"));
                double e1 = Double.parseDouble(request.getParameter("e1"));
                double e2 = Double.parseDouble(request.getParameter("e2"));

                // Обчислення
                double[] terms = MathFunctions.calculateTerms(x, n);
                double sumE1 = MathFunctions.sumTermsAboveE(terms, e1);
                double sumE2 = MathFunctions.sumTermsAboveE(terms, e2);
                double exact = MathFunctions.exactValue(x);

                // Передача даних у JSP
                request.setAttribute("terms", Arrays.toString(terms));
                request.setAttribute("sumE1", sumE1);
                request.setAttribute("sumE2", sumE2);
                request.setAttribute("exact", exact);
                request.setAttribute("differenceE1", Math.abs(exact - sumE1));
                request.setAttribute("differenceE2", Math.abs(exact - sumE2));
                request.getRequestDispatcher("result.jsp").forward(request, response);

            } else if ("tabulate".equals(action)) {
                // Завдання 2.2
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double h = Double.parseDouble(request.getParameter("h"));

                // Табулювання
                request.setAttribute("a", a);
                request.setAttribute("b", b);
                request.setAttribute("h", h);
                List<double[]> results = Tabulation.tabulateFunction(a, b, h);
                request.setAttribute("results", results);
                request.getRequestDispatcher("table.jsp").forward(request, response);
            }
        } catch (NumberFormatException ex) {
            response.getWriter().write("Invalid input! Please enter numeric values.");
        }
    }
}
