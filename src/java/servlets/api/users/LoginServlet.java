package java.servlets.api.users;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
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
import java.security.MessageDigest;
import java.util.Random;
import java.math.BigInteger;
import java.util.Objects;




@WebServlet("/api/users/login")
public class LoginServlet extends HttpServlet {
    @Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            if (request.getSession().getAttribute("user") != null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);

            } else {
                Convertor convertor = new Convertor();
                JSONObject obj = convertor.RequestToJSON(request);
                JSONObject _result = new JSONObject();

                String stringLogin = (String) obj.get("login");
                String stringPassword = (String) obj.get("password");
                if((stringLogin.length() != 0) && (stringPassword.length() != 0)) {
                    UserModel userConnector = new UserModel();
                    ResultSet users = userConnector.select("SELECT * FROM users WHERE `login` = '" + stringLogin + "'");
                    JSONObject user = null;
                    try {
                        user = (JSONObject) convertor.convertToJSON(users).iterator().next();
                        String _password = (String) user.get("password");
                        String salt = (String) user.get("salt");

                        MessageDigest md5 = MessageDigest.getInstance("MD5");
                        md5.update((stringPassword+salt).getBytes());
                        String newPassword = new BigInteger(1, md5.digest()).toString(16);

                        System.out.println(_password);
                        System.out.println(newPassword);



                        _result.put("success", Objects.equals(_password, newPassword));

                        if ((Boolean) _result.get("success")) {
                            request.getSession().setAttribute("user", user);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }

                PrintWriter out = response.getWriter();
                out.print(_result);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
