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
<br><br><br>


<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
String str[]=request.getParameterValues("cb");
String str1;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("select * from questions where subject=?");
pst.setString(1,String.valueOf(session.getAttribute("sub")));
ResultSet rs=pst.executeQuery();
int j=0,c=0;
while(rs.next())
{
str1=rs.getString(7);
if(str1.equals(str[j]))                 
{
c++;
}
j++;
}
out.println("your score is: "+c);
conn.close();
pst.close();
}
catch(Exception h)
{
out.println(h);
}
%>


