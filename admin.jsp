<html>
<body>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
Connection conn;
PreparedStatement pst;
ResultSet rs;
%>

<script>
function a()
{
document.getElementById("k").style.display="block";
document.getElementById("r").style.display="none";
document.getElementById("w").style.display="none";
}
function b()
{
document.getElementById("k").style.display="none";
document.getElementById("r").style.display="block";
document.getElementById("w").style.display="none";
}
function c()
{
document.getElementById("k").style.display="none";
document.getElementById("r").style.display="none";
document.getElementById("w").style.display="block";
}
</script>

<input type="submit" onclick="a()" value="add pdf"><br><br>
<input type="submit" onclick="b()" value="add video"><br><br>
<input type="submit" onclick="c()" value="add questions"><br><br>

<div  id="k" style="display:none">
<form name="sxdfg" method="Post" action="pdf.jsp">
<center>
<br>
<table>
<tr>
<td>SUBJECT</td>
<td>
<input type="text" name="sub" id="sub">
</td>
</tr>
<tr>
<td>TOPIC</td>
<td><textarea rows="5" cols="20" id="topic" name="topic"></textarea></td>
</tr>
<tr>
<td>UPLOAD</td>
<td><input type="file" id="pdf" name="pdf"></td>
</tr>
<tr>
<td><input type="submit" value="add pdf"></td>
<td><input type="reset"></td>
</tr>
</table>
</form>
</div>

<div  id="r" style="display:none">
<form name="hngffdv" method="Post" action="video.jsp">
<center>
<br>
<table>
<tr>
<td>SUBJECT</td>
<td>
<input type="text" name="s" id="s">
</td>
</tr>
<tr>
<td>TOPIC</td>
<td><textarea rows="5" cols="20" id="t" name="t"></textarea></td>
</tr>
<tr>
<td>UPLOAD</td>
<td><input type="file" id="v" name="v"></td>
</tr>
<tr>
<td><input type="submit" value="add video"></td>
<td><input type="reset">
</td>
</tr>
</table>
</form>
</div>

<div  id="w" style="display:none">
<form name="hnv" method="Post" action="questions.jsp">
<center>
<br>
<table>
<tr>
<td>SUBJECT</td>
<td>
<input type="text" name="subject" id="subject">
</td>
</tr>
<tr>
<td>QUESTION</td>
<td><textarea rows="4" cols="55" id="q" name="q"></textarea></td>
</tr>
<tr>
<td>OPTION 1</td>
<td><textarea rows="4" cols="55" id="o1" name="o1"></textarea></td>
</tr>
<tr>
<td>OPTION 2</td>
<td><textarea rows="4" cols="55" id="o2" name="o2"></textarea></td>
</tr>
<tr>
<td>OPTION 3</td>
<td><textarea rows="4" cols="55" id="o3" name="o3"></textarea></td>
</tr>
<tr>
<td>OPTION 4</td>
<td><textarea rows="4" cols="55" id="o4" name="o4"></textarea></td>
</tr>
<tr>
<td>ANSWER</td>
<td><textarea rows="4" cols="55" id="ans" name="ans"></textarea></td>
</tr>
<tr>
<td><input type="submit" value="add"></td>
<td><input type="reset"></td>
</tr>
</table>
</form>
</div>