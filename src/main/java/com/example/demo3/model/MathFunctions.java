package com.example.demo3.model;

public class MathFunctions {
    // a. Обчислення n доданків ряду для sh(x)
    public static double[] calculateTerms(double x, int n) {
        double[] terms = new double[n];
        double term = x; // Перший член ряду
        terms[0] = term;

        for (int i = 1; i < n; i++) {
            term *= (x * x) / ((2 * i) * (2 * i + 1)); // Факторіал розбито для поступового множення
            terms[i] = term;
        }

        return terms;
    }

    // b. Обчислення суми доданків за умовою |term| > e
    public static double sumTermsAboveE(double[] terms, double e) {
        double sum = 0;
        for (double term : terms) {
            if (Math.abs(term) > e) {
                sum += term;
            }
        }
        return sum;
    }

    // c. "Точне" значення функції sh(x)
    public static double exactValue(double x) {
        return Math.sinh(x);
    }
}
