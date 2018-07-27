<%@ page language="java" import="java.sql.*" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% response.setContentType("text/html");%>

<%

String str=request.getParameter("queryString");

try {
String connectionURL = "jdbc:mysql://127.0.0.1:3306/Erp";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "Rams3098!"); 
//Add the data into the database
String sql = "SELECT Rmgrade FROM Mingrade where Rmgrade  LIKE '"+str+"%' LIMIT 20";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
		String s=rs.getString("Rmgrade");%>
		<li onclick='fill1("<%=s%>");'><%=rs.getString("Rmgrade") %></li>
		<% 
	
	
}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>