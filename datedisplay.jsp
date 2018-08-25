<%@ page language="java" import="java.sql.*" %> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>

<% response.setContentType("text/html");%>

<%String date1=request.getParameter("date1");
	String date2=request.getParameter("date2");
	System.out.println(date1);
	System.out.print(date2);
	try {
		JSONArray arr=new JSONArray();	
	String connectionURL = "jdbc:mysql://127.0.0.1:3306/erp";
	Connection con;
	Class.forName("com.mysql.jdbc.Driver");
	// Get a Connection to the database
	con = DriverManager.getConnection(connectionURL, "root", ""); 
	//Add the data into the database
	//String sql = "select * from invoice where date between '"+date1+"' " + "AND '" +date2 +"' order by date" ;
	String sql="select * from invoice where date between '"+date1+"' and '"+date2+"' order by date";
	Statement stm = con.createStatement();
	stm.executeQuery(sql);
	ResultSet rs= stm.getResultSet();
	while (rs.next ()){
			%>
			<%
			JSONObject obj=new JSONObject();
		      try {
		    	  obj.put("Invoice", rs.getString(1));
		    	  obj.put("Date",rs.getString(2));
		    	  obj.put("CustName",rs.getString(3));
		    	  obj.put("Terms",rs.getString(4));
		    	  obj.put("InvQuan",rs.getString(10));
		    	  obj.put("InnValue",rs.getString(5));
		    	  obj.put("Remarks",rs.getString(11));
		    	  
		    	  arr.put(obj);
		    	 
			      
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			%>		
			
		
	<% 	
	}
	out.print(arr);
	System.out.print(arr);}catch(Exception e){
	out.println("Exception is ;"+e);
	}
	%>
