package api;

import java.io.*;
import java.util.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.WebServlet;


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
import javax.faces.context.FacesContextWrapper;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

import javax.activation.MimetypesFileTypeMap;


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

    private boolean isMultipart;
    private String filePath;
    private String fileName;
    private int maxFileSize = 50 * 1024;
    private int maxMemSize = 4 * 1024;
    private File file ;

    public void init( ){
        // Get the file location where it would be stored.
        filePath =
                getServletContext().getInitParameter("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\");
    }
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, java.io.IOException {
        // Check that we have a file upload request
        isMultipart = ServletFileUpload.isMultipartContent(request);
        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter( );


        DiskFileItemFactory factory = new DiskFileItemFactory();
        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);
        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\"));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        // maximum file size to be uploaded.
        upload.setSizeMax( maxFileSize );

        try{
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);

            // Process the uploaded file items
            Iterator i = fileItems.iterator();


            while ( i.hasNext () )
            {
                FileItem fi = (FileItem)i.next();
                if ( !fi.isFormField () )
                {
                    // Get the uploaded file parameters
                    String fieldName = fi.getFieldName();
                    String fileName = fi.getName();
                    String contentType = fi.getContentType();
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();
                    // Write the file
                    if( fileName.lastIndexOf("\\") >= 0 ){
                        file = new File( filePath +
                                fileName.substring( fileName.lastIndexOf("\\"))) ;
                    }else{
                        file = new File( filePath +
                                fileName.substring(fileName.lastIndexOf("\\")+1)) ;
                    }
                    fi.write( file ) ;
                    out.println("Uploaded Filename: " + fileName + "<br>");


                }
            }

        }catch(Exception ex) {
            System.out.println(ex);
        }
    }

}

















































/*
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
import javax.faces.context.FacesContextWrapper;


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
        try {
            InputStream in = req.getInputStream();
            RandomGenerator randomGenerator = new RandomGenerator();
            String fileName = randomGenerator.getSaltString();
            OutputStream out = new FileOutputStream("C:\\Users\\Toki\\Documents\\GitHub\\tablet-polls\\images\\" + fileName);

            copy(in, out);
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
*/







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
