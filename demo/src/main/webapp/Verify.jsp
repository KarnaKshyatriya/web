<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int f=0;
String url="jdbc:mysql://localhost:3306/login";
String userid="root";
String password="admin123";
java.sql.Statement st;
String uid="";
int pass;
//try{  
	//Class.forName("com.mysql.jdbc.Driver"); //Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(
			url,userid,password);
st=con.createStatement();

uid=request.getParameter("uname");
pass=Integer.valueOf(request.getParameter("pass"));

ResultSet rs=st.executeQuery("Select * from login");
while(rs.next())
{
	if(uid.equalsIgnoreCase(rs.getString(1)))
	{
		if(pass==rs.getInt(2))
		{
			f=1;
			out.println("Found");
			response.sendRedirect("trial.jsp?t="+uid);
			break;
		}
	}
}
if(f==0)
{
	out.println("Not found");
	response.sendRedirect("Login.jsp?dd="+f);
}

/* }
catch(Exception e )
{
	System.out.println("Error");
} */

out.println(uid+"  ::::  "+pass);
%>
		




</body>
</html>