<%@ page language="java" import="java.sql.*" %> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>

<% response.setContentType("text/html");%>

<%

String str=request.getParameter("name");

try {
	
String connectionURL = "jdbc:mysql://127.0.0.1:3306/Erp";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "Rams3098!"); 
//Add the data into the database
String sql = "select * from Mingrade Natural join Maxgrade where Rmgrade='"+str+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
String s;
String s3;
ResultSet rs= stm.getResultSet();
while (rs.next ()){
	
		 s=rs.getString(2);
		 s3=rs.getString(3);
		%>
		<%
		JSONObject obj=new JSONObject();
		 
	      try {
	    	  obj.put("Rmgrade", rs.getString(1));
	    	  obj.put("MinC",rs.getString(2));
	    	  obj.put("MinMn",rs.getString(3));
	    	  obj.put("MinSi",rs.getString(4));
	    	  obj.put("MinS",rs.getString(5));
	    	  obj.put("MinP",rs.getString(6));
	    	  obj.put("MinCr",rs.getString(7));
	    	  obj.put("MinNi",rs.getString(8));
	    	  obj.put("MinMo",rs.getString(9));
	    	  obj.put("MinCu",rs.getString(10));
	    	  obj.put("MinV",rs.getString(11));
	    	  obj.put("MinAl",rs.getString(12));
	    	  obj.put("MinW",rs.getString(13));
	    	  obj.put("MinN",rs.getString(14));
	    	  obj.put("MaxC",rs.getString(15));
	    	  obj.put("MaxMn",rs.getString(16));
	    	  obj.put("MaxSi",rs.getString(17));
	    	  obj.put("MaxS",rs.getString(18));
	    	  obj.put("MaxP",rs.getString(19));
	    	  obj.put("MaxCr",rs.getString(20));
	    	  obj.put("MaxNi",rs.getString(21));
	    	  obj.put("MaxMo",rs.getString(22));
	    	  obj.put("MaxCu",rs.getString(23));
	    	  obj.put("MaxV",rs.getString(24));
	    	  obj.put("MaxAl",rs.getString(25));
	    	  obj.put("MaxW",rs.getString(26));
	    	  obj.put("MaxinN",rs.getString(27));
	    	  JSONArray arr=new JSONArray();
	    	  arr.put(obj);
	    	 
		      out.print(arr);
		      
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      

	      
		%>		
		
	
<% 	
}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
