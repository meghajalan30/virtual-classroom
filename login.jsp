
<!DOCTYPE html>
<html lang="en">
<head>
<title>Virtual Classroom</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page1">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
            <li><a href="index.html">About</a></li>
            <li><a href="courses.html">Courses</a></li>
            <li><a href="classroom.jsp">Classroom</a></li>
            <li><a href="exam.jsp">Take Examination</a></li>
            <li><a href="index.html">Logout</a></li>
            <li class="end"><a href="contacts1.html">Contacts</a></li>
          </ul>
        </nav>
       
      </div>


<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("select * from student where username=? and password=?");
pst.setString(1,request.getParameter("user"));
pst.setString(2,request.getParameter("pass"));

ResultSet rs=pst.executeQuery();
if(rs.next())
{
%>
<br><br><br>
<img src="<%=rs.getString(5)%>"><br><br>
<table height="100">
<tr>
<td>NAME:</td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td>ADDRESS:</td>
<td><%=rs.getString(2)%></td>
</tr>
<tr>
<td>DOB:</td>
<td><%=rs.getString(3)%></td>
</tr>
</table>
</center>
<%
}
conn.close();
pst.close();

}
catch(Exception h)
{
out.println(h);
}

%>