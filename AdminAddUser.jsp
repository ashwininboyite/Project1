<%@ page language="java" import="java.sql.*" %> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>


<%
try{
	JSONArray arr=new JSONArray();
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp","root", "");
Statement st=null;
st=conn.createStatement();
String flag="False";
String name=session.getAttribute("username").toString();

System.out.print(name);

//String sql="select count(*) as DataCount from user where  Email='"+name+"' and role='%Admin'";
String sql="select * from user where  Email='"+name+"' and role like '%Admin'";
ResultSet rs;   
rs=st.executeQuery(sql);

JSONObject obj=new JSONObject();

	if(rs.next())
	{
		flag="True";
		obj.put("Result", flag);
		System.out.print(flag);
	}
	else{
		flag="False";
		obj.put("Result", flag);
		System.out.print(flag);
	}
	  arr.put(obj);
	 
    System.out.print(arr);
    System.out.println("\n");
    out.print(arr);
}
catch(Exception e){
System.out.println(e);
}
%>
