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


String reg=request.getParameter("uname"); 
session.putValue("reg",reg);
String pwd1=request.getParameter("pwd1"); 
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from registration where reg='"+reg+"'"); 
if(rs.next())
{

if(rs.getString(2).equals(pwd1))
{
	out.println("welcome" +  reg);
	//response.sendRedirect("welcome.jsp");
	
}
else

out.println("password Incorrect");
}

}
catch(Exception e)
{
	out.println(e);
}
%>

<br><br>
<a href="welcome.jsp">click here to log in</a>
</body>
</html>