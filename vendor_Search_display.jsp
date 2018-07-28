<%@ page language="java" import="java.sql.*" %> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>

<% response.setContentType("text/html");%>

<%
System.out.print("Hi i am vendor serach page");
String str=request.getParameter("name");
 //String str="Ashu";
try {
	
String connectionURL = "jdbc:mysql://127.0.0.1:3306/erp";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "Ashu1997"); 
//Add the data into the database
String sql = "select * from vendors where Name='"+str+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
		%>
		<%
		JSONObject obj=new JSONObject();

	      try {
	    	  obj.put("Vendorcode", rs.getString(1));
	    	  obj.put("Name",rs.getString(2));
	    	  JSONArray arr=new JSONArray();
	    	  arr.put(obj);
	    	  out.print(arr);
		      //System.out.print(arr);
		      
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