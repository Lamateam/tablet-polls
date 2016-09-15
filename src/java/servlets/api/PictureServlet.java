
package api;


import java.io.File;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import helpers.Convertor;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.FileOutputStream;
import helpers.RandomGenerator;
import java.lang.Object;
import java.nio.file.Paths;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import javax.servlet.http.HttpServlet;

@WebServlet("/api/picture")
public class PictureServlet extends HttpServlet {


    protected static long copy(InputStream input, OutputStream output)
            throws IOException {
        byte[] buffer = new byte[4096];
        long count = 0L;
        int n = 0;
        while (-1 != (n = input.read(buffer))) {
            output.write(buffer, 0, n);
            count += n;
        }
        return count;
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
       /* try {
            InputStream in = req.getInputStream();
            RandomGenerator randomGenerator = new RandomGenerator();
            String fileName = randomGenerator.getSaltString() + ".jpg";
            OutputStream out = new FileOutputStream("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\" + fileName);
            String fileType = FacesContext.getCurrentInstance(fileName);
            copy(in, out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    }
}






   /* InputStream in = req.getInputStream();
    RandomGenerator randomGenerator = new RandomGenerator();
    String fileName = randomGenerator.getSaltString() + ".jpg";
    OutputStream out = new FileOutputStream("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\" + fileName);
    copy(in, out);
        out.flush();
                out.close();*     (вариант без форматов, заменить полностью DoPost  /

   /* @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        try {
            InputStream in = req.getInputStream();
            RandomGenerator randomGenerator = new RandomGenerator();
            String fileName = randomGenerator.getSaltString() + ".jpg";
            OutputStream out = new FileOutputStream("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\" + fileName);
            String fileType = FacesContext.getCurrentInstance(fileName);
            copy(in, out);
            out.flush();
            out.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }*/


/*

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
        Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">

        try {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        InputStream fileContent = filePart.getInputStream();

        PrintWriter out = response.getWriter();
        out.print(fileContent);

    }*/
