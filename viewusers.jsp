<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title> 
<style>
table{
	border-collapse: collapse;
}
th, td{
	padding: 10px;
}
th {
	background-color: #cc0066;
	color: white;
}
tr:nth-child(even) {
	background-color: #ffcce6;
}
.button1 {
  background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 5px 14px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
}
.button2 {background-color: #f44336;}
.button3 {background-color: #28a745;border: none;
  color: white;
  padding: 5px 14px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;}
h1 {   
color: #660033;
font-family: arial, sans-serif;
font-size: 46px;
font-weight: bold;
margin-top: 0px;
margin-bottom: 1px;
text-align: center;
}
</style> 
</head>  
<body>  
  
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="100%">  
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>  
<th>Sex</th><th>Country</th><th>Number</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td>${u.getNumber()}</td>  
<td><a href="editform.jsp?id=${u.getId()}" class="button1">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}" class="button1 button2">Delete</a></td></tr> 
</c:forEach>  
</table>  
<br/><a href="adduserform.jsp" class="button3">Add New User</a>  
  
</body>  
</html>  
