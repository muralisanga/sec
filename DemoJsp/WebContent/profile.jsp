<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
       String url="jdbc:mysql://localhost:3306/murali";
       String uname="root";
       String pass="root";
       String sql="select * from student where rollno=103";
       
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection(url,uname,pass);
       
       Statement st=con.createStatement();
       
       ResultSet rs=st.executeQuery(sql);
       rs.next();
       
    %>
      <p style="color:DodgerBlue;">Rollno :<%=rs.getString(1) %></p>
      <p style="color:red;">name   :<%=rs.getString(2) %></p>
      <p style="color:yellow;">Year   :<%=rs.getString(3)%></p>
      <p style="color:blue;">Fee    :<%=rs.getString(4) %></p>
 
</body>
</html>