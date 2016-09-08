package api;

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
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import helpers.Convertor;

/**
 * Created by Hleb on 25.08.2016.
 */



@WebServlet("/api/users")
public class UsersServlet extends HttpServlet {
    @Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = new UserModel();
        HashMap<String, String> props = new HashMap<String, String>();
        props.put("login", "admin");
        try {
            ResultSet users = user.filter(props);
            Convertor convertor = new Convertor();
            JSONArray users_json = convertor.convertToJSON(users);
            request.setCharacterEncoding("utf8");
            response.setCharacterEncoding("utf8");
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(users_json);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Convertor convertor = new Convertor();
            JSONObject obj = convertor.RequestToJSON(request);

            PrintWriter out = response.getWriter();
            out.print(obj);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
