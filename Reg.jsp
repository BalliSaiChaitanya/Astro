<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("name"); 
String pin=request.getParameter("pin"); 
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String pname=request.getParameter("pname"); 
String mno=request.getParameter("mno"); 
String ptype=request.getParameter("ptype"); 
String cond=request.getParameter("cond"); 
String price=request.getParameter("price"); 
  

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","sai",""); 
Statement st= con.createStatement();
int i=st.executeUpdate("insert into products values('"+uname+"','"+pin+"','"+mobile+"','"+email+"','"+pname+"','"+mno+"','"+ptype+"','"+cond+"',,'"+price+"')"); 
if(i>0)
 {
   out.println("sucessfully Added your Product");
 }
%>