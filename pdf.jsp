<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("insert into pdf values(?,?,?)");
pst.setString(1,request.getParameter("sub"));
pst.setString(2,request.getParameter("topic"));
pst.setString(3,request.getParameter("pdf"));
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