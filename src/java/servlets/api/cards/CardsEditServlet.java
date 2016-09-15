package api.cards;



import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import helpers.Convertor;
import models.CardsModel;
import java.time.Instant;
import java.util.TimeZone;
import java.text.SimpleDateFormat;
import java.time.ZonedDateTime;
import java.util.Date;
import java.sql.Timestamp;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import api.CardsServlet;
import java.sql.DriverManager;



@WebServlet("/api/cards/edit")
public class CardsEditServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            Convertor convertor = new Convertor();
            JSONObject obj = convertor.RequestToJSON(request);
            JSONObject result = new JSONObject();

            String stringPicture = (String) obj.get("picture");
            String stringText = (String) obj.get("text");
            String stringYear = (String) obj.get("year");
            String idCard = (String) obj.get("id");


            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String updated_at = dateFormat.format(new Date());

            if ((stringPicture.length() != 0) && (stringText.length() != 0) &&(stringYear.length() != 0)) {

                String sql = "UPDATE cards " +
                        "SET picture = '" + (String) obj.get("picture") + "'," +
                        "year = '" + (String) obj.get("year") + "'," +
                        "text = '" + (String) obj.get("text") + "' " +
                        "WHERE id = " + idCard + ";";

                System.out.println(sql);



                CardsModel cardConnector = new CardsModel();
                result.put("success", cardConnector.update(sql));
            }

            PrintWriter out = response.getWriter();
            out.print(result);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}