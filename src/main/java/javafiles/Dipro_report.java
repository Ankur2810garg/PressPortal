package javafiles;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Dipro_report extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public Dipro_report() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		userpage up = new userpage();
		up.db_connection();
		
		HttpSession session= request.getSession();
		session.getAttribute("Username");
		session.getAttribute("Role");
		ResultSet rs;
		PreparedStatement pstmt;
		byte b[];
    	Blob blob;
    	String id;
    	String newsdate;
    	String filename;
    	String filedata;
    	String newspaper;
    	String comment;
    	try
		{
	    	pstmt=conn.prepareStatement("select * from dipro"); 
       		rs=pstmt.executeQuery();
       		while(rs.next())
       		{
       			filename= rs.getString("filename");
       			File file=new File(filename);
           		FileOutputStream fos=new FileOutputStream(file);
           		blob=rs.getBlob("filedata");
           		b=blob.getBytes(1,(int)blob.length());
           		fos.write(b);
           		fos.close();
       		}
		}
		catch (Exception ex) {
		System.out.println(ex);
		}
	}
}