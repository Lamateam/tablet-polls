package models;

import java.sql.*;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

public class AbstractModel {

    public static void main (String[] args)
    {

    }

    protected String tableName() {
        return null;
    }

    protected static String idProperty = "id";
    //Connect
    private Connection conn = null;
    public Connection connect() {
        try {
            if (conn == null) {
                String userName = "root";
                String password = "cthutqcthutq67";
                String url = "jdbc:mysql://localhost:3306/test";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    // error out
                    ex.printStackTrace();
                }
                conn = DriverManager.getConnection(url, userName, password);
            }
        } catch (Exception e) {
            System.err.println ("Cannot connect to database server");
            e.printStackTrace();
        }
        return conn;
    }
    //List
    public ResultSet select (String query) {
        ResultSet result1 = null;
        try {
            Statement statement = connect().createStatement();
            result1 = statement.executeQuery(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result1;
    }
    public int update (String query) {
        int result1 = 0;
        try {
            Statement statement = connect().createStatement();
            result1 = statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result1;
    }
    public ResultSet list() {
        return select("SELECT * FROM `" + tableName() + "`");
    }
    //Get
    private int id = 0;
    public ResultSet get(int id) {
        return select("SELECT * FROM `" + tableName() + "` `id`='" + id + "'");
    }
    //Put
    private String name = null;
    public int put(HashMap<String, String> props) {
        String query = "INSERT INTO `" + tableName() + "` (";
        Set keys = props.keySet();
        query = query + String.join(", ", props.keySet()) + ") VALUES ('" + String.join("', '", props.values()) + "')";

        System.out.println(query);
        return update(query);
    }

    //Delete
    public int delete(int id) {
        return update("DELETE FROM `" + tableName() + "` WHERE `" + idProperty + "`='" + id + "'");
    }
    //patch
    public int patch(int id, HashMap<String, String> props) {
        String query = "UPDATE `" + tableName() + "` SET ";
        Set keys = props.keySet();
        for (Object key: keys) {
            String value = props.get(key);
            query = query + key + " = '" + value + "' ";
        }
        return update(query + "WHERE id = '" + id + "'");
    }
    //filter
    public ResultSet filter(HashMap<String, String> props)
    {
        String query = "SELECT * FROM `" + tableName() + "` WHERE ";
        Set<String> keys = new HashSet<String>();

        for (Object key: props.keySet()) {
            String value = props.get(key);
            keys.add("`" + key + "` = '" + value + "' ");
        }

        query = query + String.join(" AND ", keys);

        return select(query);
    }
}
