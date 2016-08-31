

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import models.UserModel;

/**
 * Created by Hleb on 25.08.2016.
 */

@WebServlet("/users")
public class UsersServlet extends HttpServlet {
    @Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = new UserModel();
        HashMap<String, String> props = new HashMap<String, String>();
        props.put("login", "admin");
        try {
            ResultSet a = user.filter(props);
            //System.out.println(a.getString("login") + " " + a.getString("salt"));
        } catch (Exception e) {
            System.err.println ("wait a second");
            e.printStackTrace();
        }
        request.getRequestDispatcher("users.jsp").forward(request, response);
    }
    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("ok");
    }
}