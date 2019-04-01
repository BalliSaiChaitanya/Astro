<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("name"); 
String email=request.getParameter("email"); 
String mobile=request.getParameter("phone");
String bcity=request.getParameter("city");
String day=request.getParameter("day"); 
String month=request.getParameter("month"); 
String year=request.getParameter("year"); 
String hour=request.getParameter("hr"); 
String min=request.getParameter("min"); 
String meri=request.getParameter("meridiem"); 
String gender=request.getParameter("gender"); 
String subject=request.getParameter("subject"); 


Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oracle","root",""); 
Statement st= con.createStatement();
int i=st.executeUpdate("insert into userform values('"+name+"','"+email+"','"+mobile+"','"+bcity+"','"+day+"','"+month+"','"+year+"','"+hour+"','"+min+"','"+meri+"','"+gender+"','"+subject+"')"); 
if(i>0)
 {
         String site = new String("Reply.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
 }
%>