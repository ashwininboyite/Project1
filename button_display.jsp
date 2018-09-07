<%@page import="com.mysql.cj.xdevapi.JsonArray"%>
<%@page import="org.json.*"%>
<%@page import="org.json.JSONException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try{
	JSONArray arr=new JSONArray();
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp","root", "Ashu1997");
Statement st=null;
st=conn.createStatement();
String delete_button="False",update_button="False";
String name=session.getAttribute("username").toString();
//System.out.print(name);

String sql="select permission from user where  Email='"+name+"' ";
ResultSet rs;   
rs=st.executeQuery(sql);
JSONObject jsonobj=new JSONObject();

	if(rs.next())
	{
		String str=rs.getString(1);
	    if(str.contains("delete"))
	    {
	    	delete_button="True";
	    	jsonobj.put("Result_delete", delete_button);
	    }
	    else{
	    	delete_button="False";
	    	jsonobj.put("Result_delete", delete_button);
	    }
	    
	    if(str.contains("update"))
	    {
	    	update_button="True";
	    	jsonobj.put("Result_update", update_button);
	    }
	    else{
	    	update_button="False";
	    	jsonobj.put("Result_update", update_button);
	    
	    }
	       	
	}
	 arr.put(jsonobj);
    System.out.print(arr);
    System.out.println("\n");
    out.print(arr);
}
catch(Exception e){
System.out.println(e);
}
%>
