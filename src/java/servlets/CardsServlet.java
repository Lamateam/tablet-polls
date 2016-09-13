package api;

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
import api.cards.CardsEditServlet;


@WebServlet("/api/cards")
public class CardsServlet extends HttpServlet {

    @Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {


            String offset = (String) request.getParameter("offset");
            String limit = (String) request.getParameter("limit");
            CardsModel cardConnector = new CardsModel();
            ResultSet rs = cardConnector.select("SELECT * FROM cards LIMIT " + offset + ", " + limit);
            Convertor convertor = new Convertor();
            PrintWriter out = response.getWriter();
            out.print(convertor.convertToJSON(rs));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Convertor convertor = new Convertor();
            JSONObject obj = convertor.RequestToJSON(request);
            JSONObject result = new JSONObject();

            String stringPicture = (String) obj.get("picture");
            String stringText = (String) obj.get("text");
            String stringYear = (String) obj.get("year");
            int isModerate = 1;

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String created_at = dateFormat.format(new Date());
            String updated_at = created_at;

            if ((stringPicture.length() != 0) && (stringText.length() != 0) &&(stringYear.length() != 0)) {

                String sql = "INSERT INTO cards (`picture`, `text`, `year`, `isModerate`, `created_at`, `updated_at`) VALUES ('" + (String) obj.get("picture") + "','" + (String) obj.get("text") + "','" + (String) obj.get("year") + "','" + (int) (isModerate) + "','" + (String) (created_at) + "','" + (String) (updated_at) + "')";

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
