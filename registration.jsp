<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn=DriverManager.getConnection("Jdbc:Oracle:thin:@localhost:1521:Xe","megha","mj");
pst=conn.prepareStatement("insert into student values(?,?,?,?,?,?,?)");
pst.setString(1,request.getParameter("name"));
pst.setString(2,request.getParameter("add"));
pst.setString(3,request.getParameter("dob"));
pst.setString(4,request.getParameter("gen"));
pst.setString(5,request.getParameter("pic"));
pst.setString(6,request.getParameter("user"));
pst.setString(7,request.getParameter("pass"));
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