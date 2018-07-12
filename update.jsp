<%@page import="java.sql.*"%>

<%ResultSet rs = null; %>
<form name=form method=post >

<table border="1">
<tr><td></td>
<td><b><u>bookid</u></b></td>
<td><b><u>Author</u></b></td>
<td><b><u>title</u></b></td>
</tr>
<%try{

Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp","root", "Rams3098!");

Statement st=null;
st=conn.createStatement();
rs = st.executeQuery("select * from Vendors");
int i=0; while(rs.next()){ %>
<tr><td><input type="checkbox" name="check<%=i%>" value=<%= rs.getString(1) %>></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>

<td><input class="btn btn-primary btn-large btn-block" type="button" value="Sign in" onclick="window.document.location.href='edituser.jsp?id=<%=rs.getString(1)%>'"/></td> 



</tr><%
i++;
}

}catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table>

</form>
