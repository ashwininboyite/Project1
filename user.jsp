<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
function editRecord(id){
	
window.open('http://localhost:8080/examples/jsp/edituser.jsp?id='+id,'mywindow','width=500, height=350,toolbar=no,resizable=yes,menubar=yes');
}
function deleteRecord(id){
window.open('http://localhost:8080/examples/jsp/deleteuser.jsp?id='+id,'mywindow','width=500, height=350,toolbar=no,resizable=yes,menubar=yes');
}
</script>
</head>
<body>

<br><br>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="#A52A2A">
<td><b>Vendorcode</b></td>
<td><b>Vendor Name</b></td>
</tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;;
String db = "Erp";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="Rams3098!";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "SELECT * FROM vendors";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>

<td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
<%System.out.println(rs.getString(1)); %>
<td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
}
catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>

</body>
</html>