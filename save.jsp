<%@page import="java.sql.*"%>
<%
String ide=request.getParameter("id");
String name=request.getParameter("Name");
String address=request.getParameter("Address");
String gst=request.getParameter("GST No");
String contact_person=request.getParameter("Contact Person");
String contact=request.getParameter("Contact");
String designation=request.getParameter("Designation");
String email=request.getParameter("Email");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp","root", "Rams3098!");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update vendors set Name='"+name+"',Address='"+address+"',GSTNo='"+gst+"',Contactperson='"+contact_person+"',Designation='"+designation+"',Contact='"+contact+"',email='"+email+"' where Vendorcode='"+ide+"'");
response.sendRedirect("Vendordetails.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>