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
            <li><a href="exam.html">Take Examination</a></li>
            <li><a href="index.html">Logout</a></li>
            <li class="end"><a href="contacts1.html">Contacts</a></li>
          </ul>
        </nav>
        
      </div>
<form name="jhdghvd" method="Post" action="result.jsp">

<br><br><br>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
int c=0;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("select * from questions where subject=?");
session.setAttribute("sub",request.getParameter("s"));
pst.setString(1,request.getParameter("s"));
ResultSet rs=pst.executeQuery();
while(rs.next())
{

%>
<br><br>
<h4><%out.print(""+(++c)+".");%><%=rs.getString(2)%></h4>
<input type="checkbox"  name="cb" value='<%=rs.getString(3)%>'><%=rs.getString(3)%>
<input type="checkbox"  name="cb" value='<%=rs.getString(4)%>'><%=rs.getString(4)%>
<input type="checkbox"  name="cb" value='<%=rs.getString(5)%>'><%=rs.getString(5)%>
<input type="checkbox"  name="cb" value='<%=rs.getString(6)%>'><%=rs.getString(6)%>
<input type="checkbox" style="display:none" name="cb1" value='<%=rs.getString(1)%>'>
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

<br><br>
<input type="submit" >
</form>