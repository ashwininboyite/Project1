import java.util.*; 
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.PreparedStatement;
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.sql.Statement; 
import javax.servlet.GenericServlet; 
import javax.servlet.RequestDispatcher; 
import javax.servlet.ServletException;
import javax.servlet.ServletRequest; 
import javax.servlet.ServletResponse; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession; 
@WebServlet("/Test") 
public class Test extends HttpServlet 
{  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {   
	try {   
		boolean flag=false;   
		Connection con=null;  
		PreparedStatement smt=null;  
		ResultSet rs;   
		response.setContentType("text/html");   
		PrintWriter pw = response.getWriter();   
		HttpSession session=request.getSession();   
		String Username = request.getParameter("username");   
		int Password = request.getParameter("password").hashCode(); 
		System.out.println(Username+Password);
		//Step 1: Load the driver    
		Class.forName("com.mysql.jdbc.Driver");    
		//Step 2: Connection to the database  
		con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Erp","root","Rams3098!");    
		//Step 3 : Create a Prepared Statement     '
		smt = con.prepareStatement("select * from User where Email=? and Password=? ;");    
		smt.setString(1, Username);    
		smt.setInt(2, Password);    
		//Step 4 : Execute the Query   
		rs = smt.executeQuery();
		
		if(rs.next()) 
		{ 
		
			if(rs.getString(1).equals(Username)&&rs.getInt(2)==Password){ 
			//System.out.print("Success");
			//pw.println("<h1>Login Successfull. Welcome "+Username+" </h1>");     
			//pw.print("<a href='mainpage.html'>Railway Info</a>");     
			session.setAttribute("username",Username);     
			session.setAttribute("password",Password);     
			response.sendRedirect("index.html");     
			//pw.println(Username);    
			}
			else    {     
				//pw.println("<h1>Invalid User</h1>");     
				RequestDispatcher rd;
				rd=request.getRequestDispatcher("newLogin.html"); 
				try {      
					rd.forward(request, response);     
				} 
				catch (ServletException e) 
				{      // TODO Auto-generated catch block      
					e.printStackTrace(); 
				                                          

				} 	//System.out.println("2");
			}    
			
		} 
		else    {     
			//pw.println("<h1>Invalid User</h1>"); 
			RequestDispatcher rd;
			rd=request.getRequestDispatcher("newLogin.html"); 
			try {      rd.forward(request, response);     
			} 
			catch (ServletException e) 
			{      // TODO Auto-generated catch block      
				e.printStackTrace(); 
			                                          

			} 
			//out.clear();
			//System.out.println("2");
		} 
		
		
	} 
	catch (Exception e) 
	{    
			e.printStackTrace();   
	}   
		         
} 
	 
}
		