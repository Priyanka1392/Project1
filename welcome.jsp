<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="welcome.css">
<title>Welcome Page</title>
</head>
<body>



 <br><br><br>
 <form action="Logout">
<input type="submit" value="logout" id="logout">
</form>


<form>
<div  id="menu">
<ul>
    <li> <a href="home.jsp">Home</a></li>
     <li> Education
     <ul>
     	<li>CS 
     		<ul>
     		<li><a href="html1.jsp">HTML</a></li>
     		<li><a href="css1.jsp">CSS</a></li>
     		</ul>
     	</li>
     	<li>EE
     	<ul>
     		<li><a href="power.jsp">Power Systems</a></li>
     	    <li><a href="networking.jsp">Networking</a></li>
     	</ul>
     	 </li>
     
     </ul>
     
     </li>
     <li> Entertainment
   <ul>
     <li>Novel
        <ul>
           <li><a href="novel1.html">Never Go Back</a></li>
           <li><a href="novel2.html">Valley of Silence</a></li>
           <li><a href="novel3.html">The Splendour Falls</a></li>
        </ul>
     </li>

</ul>

</li>
<li><a href="contact.jsp">Contact Us</a></li>
<li><a href="about.jsp">About Us</a></li>

</ul>
</div>
</form>

</body>
</html>