package controllers;

import models.TestModel;

import java.io.*;
import java.sql.ResultSet;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;




@WebServlet(name = "controllers.MyServlet2")
public class MyServlet2 extends HttpServlet {
    private TestModel sql = new TestModel();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter writer = response.getWriter()) {

            writer.println("<!DOCTYPE html><html>");
            writer.println("<head>");
            writer.println("<meta charset=\"UTF-8\" />");
            writer.println("<title>MyServlet.java:doGet(): Servlet code!</title>");
            writer.println("</head>");
            writer.println("<body>");
            writer.println("Няяяяя");
            try {
                ResultSet users = sql.list();
                while (users.next()) {
                    writer.println(users.getString("id") + " : " + users.getString("name") + " : " + users.getString("age"));
                }
                HashMap query = new HashMap<String, String>();
                query.put("age", "41");
                query.put("name", "Sonya");
                sql.put(query);
            } catch (Exception e) {
                e.printStackTrace();
            }
            writer.println("<h1>This is a simple java servlet.</h1>");

            writer.println("</body>");
            writer.println("</html>");
        }
    }
}
