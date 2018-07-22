<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("insert into questions values(?,?,?,?,?,?,?)");
pst.setString(1,request.getParameter("subject"));
pst.setString(2,request.getParameter("q"));
pst.setString(3,request.getParameter("o1"));
pst.setString(4,request.getParameter("o2"));
pst.setString(5,request.getParameter("o3"));
pst.setString(6,request.getParameter("o4"));
pst.setString(7,request.getParameter("ans"));
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