package api;

import java.io.File;
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/api/picture")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB

public class PicturesServlet extends HttpServlet {

	private static final String UPLOAD_DIR = "../img";

	private String getFileName(Part part) {
		        String contentDisp = part.getHeader("content-disposition");
		        System.out.println("content-disposition header= "+contentDisp);
		        String[] tokens = contentDisp.split(";");
		        for (String token : tokens) {
		            if (token.trim().startsWith("filename")) {
		                return token.substring(token.indexOf("=") + 2, token.length()-1);
		            }
		        }
		        return "";
		    }

	protected String getExtension(String fileName) {
		int i = fileName.lastIndexOf('.');
		String ext = "";
		if (i > 0) {
			ext = fileName.substring(i+1);		
		}
		return ext;
	}

    @Override public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {					
			// gets absolute path of the web application
	        String applicationPath = request.getServletContext().getRealPath("");

	        // constructs path of the directory to save uploaded file
	        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
	        String fileName = null;

	        //Get all the parts from request and write it to the file on server
	        for (Part part : request.getParts()) {
	            fileName = getFileName(part);
	            
	            String extension = getExtension(fileName); 
				    if((extension == "gif") || (extension == "jpg") || (extension == "jpeg") || (extension == "png")) {
				    	part.write(uploadFilePath + File.separator + fileName);
				    }
			}  
    }
}
