<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="java.sql.*"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body bgcolor="green">

<form action="Verify.jsp" method="post">

<table border="5">
<tr>
<th> Please enter Name </th>
<th> <input type="text" size=20 name=uname> </th>
</tr>

<tr>
<th> Please enter pass </th>
<th> <input type="text" size=20 name=pass> </th>
</tr>

<tr>
<th colspan="2"> <input type="submit" value="Click"></th>
</tr>
</table>

</form>
<% 
try
{
String check=(String) request.getParameter("dd");
int value=Integer.parseInt(check);
if(value==1)
{
%>

<br><br>
<b> User Found </b>

<%
}
else
{
%>
<br><br>
<b> User Not Found </b>
<%
}
}
catch(Exception e)
{
	System.out.println("Some error"+e);
}
%>


</body>
</html>