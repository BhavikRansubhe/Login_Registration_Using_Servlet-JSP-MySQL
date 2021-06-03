<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
<%
if((session.getAttribute("unm")==null)){
	response.sendRedirect("login.jsp");
}
String uname = request.getParameter("username");
String upwd = request.getParameter("password");
%>
<h1>Welcome!!! <%= uname %></h1>
<hr>
<%
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","root");
PreparedStatement ps = con.prepareStatement("select * from student where username=? and password=?");
ps.setString(1,uname);
ps.setString(2,upwd);
ResultSet rs = ps.executeQuery();
%>

<table border="1">
<tr>
<th>Username</th>
<th>Password</th>
<th>Firstname</th>
<th>Lastname</th>
<th>Gender</th>
<th>Email</th>
<th>Course</th>
<th>Mobile Number</th>
</tr>
<% while(rs.next()){ %>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>

</tr>
<% }%>
</table>
<form action="logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>