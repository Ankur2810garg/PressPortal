package javafiles;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Fileupload() {
		super();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao up = new Dao();
		up.db_connection();
		
		HttpSession session = request.getSession();
		String newsresource = (String) session.getAttribute("newsresource");
		String comment = (String) session.getAttribute("comment");
		String filename = request.getParameter("message");
		filename = "C:/Users/Ankur/OneDrive/Desktop/" + filename;
		System.out.println("filename" + filename);
		FileInputStream fis = new FileInputStream(filename);

		Calendar calendar = Calendar.getInstance();
		Date startDate;
		startDate = new java.sql.Date(calendar.getTime().getTime());
		ResultSet rs;
		boolean check;
		int id = 0;
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement("select id from dipro");
			rs = pstmt.executeQuery();
			check = rs.next();
			if (check == false) {
				id = 1;
				pstmt = conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
				pstmt.setInt(1, id);
				pstmt.setDate(2, startDate);
				pstmt.setString(3, filename);
				pstmt.setBlob(4, fis);

				pstmt.setString(5, comment);
				pstmt.setString(6, newsresource);
				pstmt.execute();
				System.out.print("successfully uploaded");
				conn.close();
				pstmt.close();
			} else {
				pstmt.close(); // why it is write here...what is the purpose of this statement.
				pstmt = conn.prepareStatement("select max(id) from dipro");
				rs = pstmt.executeQuery();
				while (rs.next()) {
					id = Integer.parseInt(rs.getString(1));
				}
				id = id + 1;
				pstmt = conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
				pstmt.setInt(1, id);
				pstmt.setDate(2, startDate);
				pstmt.setString(3, filename);
				System.out.println("3");
				pstmt.setBlob(4, fis);
				System.out.println("4");
				pstmt.setString(5, comment);
				pstmt.setString(6, newsresource);
				pstmt.execute();
				System.out.print("successfully uploaded");
				conn.close();
				pstmt.close();
			}
		} catch (Exception ex) {
			System.out.println(ex);
		}
	}
}