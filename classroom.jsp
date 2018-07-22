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
            <li><a href="logout.jsp">Logout</a></li>
            <li class="end"><a href="contacts.html">Contacts</a></li>
          </ul>
        </nav>
      </div>

<h2><u>Select The Subject for pdf</u></h2>
<form name="jkbbf" method="Post" action="getpdf.jsp">
<select name="s">
<option>Select Subject</option>

<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("select distinct subject from pdf");

ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<option><%=rs.getString(1)%></option>
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
</select>
<input type="submit">
</form>


<h2><u>Select The Subject for video lectures</u></h2>
<div>
<form name="jkbbf" method="Post" action="getvideo.jsp">
<select name="sub">
<option>Select Subject</option>

<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("select distinct subject from video");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<option><%=rs.getString(1)%></option>
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
</select>
<input type="submit">
</form>
</div>