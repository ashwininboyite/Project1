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
String sql="select sum(innvalue),DATE_FORMAT(date,'20%y-%m') from invoice group by DATE_FORMAT(date,'%m') order by date asc";
ResultSet rs;   
rs=st.executeQuery(sql);
String monthName[]= {"","jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
String date="";
String month="";
int month_in_int=0;
while (rs.next ()){

	JSONObject obj=new JSONObject();
      try {
    	  date=rs.getString(2);
   	   month_in_int=Integer.parseInt(date.substring(5));
   	   if (month_in_int >= 0 && month_in_int <= 12 ) {
              month = monthName[month_in_int];
          }	
   			obj.put("date",date.substring(0,4)+" "+month); 
	  		obj.put("innvalue",rs.getInt(1));
	    	obj.put("color","#1abc9c");
    	  arr.put(obj);
	} catch (JSONException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	
}
System.out.print(arr);
out.print(arr);
}
catch(Exception e){
System.out.println(e);
}
%>
