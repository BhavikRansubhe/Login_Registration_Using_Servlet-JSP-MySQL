

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;




/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String ugender=request.getParameter("gender");
		String uemail = request.getParameter("uemail");
		String ucourse = request.getParameter("ucourse");
		String umob = request.getParameter("umno");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
			PreparedStatement ps = con.prepareStatement("insert into student values (?,?,?,?,?,?,?,?)");
			ps.setString(1,uname);
			ps.setString(2, upwd);
			ps.setString(3, fname);
			ps.setString(4, lname);
			ps.setString(5, ugender);
			ps.setString(6, uemail);
			ps.setString(7, ucourse);
			ps.setString(8, umob);
			
			int i = ps.executeUpdate();
			if(i>0) {
				out.println("You are registered Successfully!!");
				out.print("<a href='login.jsp'>Click Here for Login</a>");
			}
			else {
				out.print("Error!!");
			}
		}
		catch(Exception ee) {
			ee.printStackTrace();
		}
		
	}

}
