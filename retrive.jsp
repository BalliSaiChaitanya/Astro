<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/retrive.css" />

<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="#A52A2A">
<th>Name</th>
<th>Email ID</th>
<th>Mobile</th>
<th><b>Place Of Birth</th>
<th>Day</th>
<th>Month</th>
<th>Year</th>
<th>Hour</th>
<th>minutes</th>
<th>Meridiem</th>
<th>Gender</th>
<th>Description</th>
</tr>
<%
try{ 
String id = request.getParameter("userid");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oracle","root",""); 
Statement st=con.createStatement();
String sql ="select * from userform";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr bgcolor="#DEB887" Class="btn">

<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><%=rs.getString(8) %></td>
<td><%=rs.getString(9) %></td>
<td><%=rs.getString(10) %></td>
<td><%=rs.getString(11) %></td>
<td><%=rs.getString(12) %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>