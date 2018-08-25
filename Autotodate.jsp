<%@ page language="java" import="java.sql.*" %> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>

<% response.setContentType("text/html");%>

<%
//String counter=request.getParameter("count");
try {
String str=request.getParameter("queryString");
String connectionURL = "jdbc:mysql://127.0.0.1:3306/Erp";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", ""); 
//Add the data into the database
String sql = "SELECT date FROM invoice where date  >= '"+str+"' LIMIT 20";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next()){
		String s=rs.getString("date");%>
		<li onclick='fill2("<%=s%>");'><%=rs.getString("date") %></li>
		<% 	
}
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
