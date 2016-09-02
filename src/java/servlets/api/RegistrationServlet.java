package servlets.api;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import helpers.Convertor;
import helpers.RandomGenerator;
import java.security.MessageDigest;


@WebServlet(name = "RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Convertor convertor = new Convertor();
            JSONObject obj = convertor.RequestToJSON(request);

            String stringLogin = (String) obj.get("login");
            String stringPassword = (String) obj.get("password");
            if((stringLogin.length() != 0) && (stringPassword.length() != 0)) {
                RandomGenerator randomGenerator = new RandomGenerator();
                String salt = randomGenerator.getSaltString();
                obj.put("salt", salt);

                MessageDigest md5 = MessageDigest.getInstance("MD5");
                md5.update((stringPassword+salt).getBytes());

            }

            PrintWriter out = response.getWriter();
            out.print(obj);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }




}
