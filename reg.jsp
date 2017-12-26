<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String email=request.getParameter("reg"); 
String pwd1=request.getParameter("pwd1"); 
String pwd2=request.getParameter("pwd2"); 

try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into registration values ('"+email+"','"+pwd1+"','"+pwd2+"')"); 

out.println("Registered successfully !!"); 

}
catch(Exception e)
{
	out.println(e);
}

%>
<a href ="login.html">Login</a><br/><br/>
</body>
</html>