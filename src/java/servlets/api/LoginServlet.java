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
import models.UserModel;

@WebServlet("/api/login")
public class LoginServlet extends HttpServlet {
    @Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Convertor convertor = new Convertor();
            JSONObject obj = convertor.RequestToJSON(request);
            JSONArray _result = new JSONArray();

            String stringLogin = (String) obj.get("login");
            String stringPassword = (String) obj.get("password");
            if((stringLogin.length() != 0) && (stringPassword.length() != 0)) {
                //RandomGenerator randomGenerator = new RandomGenerator();
               // String salt = randomGenerator.getSaltString();
                //obj.put("salt", salt);

               // MessageDigest md5 = MessageDigest.getInstance("MD5");
                //md5.update((stringPassword+salt).getBytes());

                UserModel userConnector = new UserModel();
                ResultSet user = userConnector.select("SELECT * FROM users WHERE `login` = '" + stringLogin + "'");
                try {
                    _result = convertor.convertToJSON(user);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            PrintWriter out = response.getWriter();
            out.print(_result);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
