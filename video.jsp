<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("insert into video values(?,?,?)");
pst.setString(1,request.getParameter("s"));
pst.setString(2,request.getParameter("t"));
pst.setString(3,request.getParameter("v"));
pst.executeUpdate();
conn.close();
pst.close();
out.println("Data saved");
}
catch(Exception h)
{
out.println(h);
}

%>