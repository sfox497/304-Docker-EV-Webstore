<!DOCTYPE html>
<html>
<head>
<title>Login Screen</title>
</head>
<body style="padding-top: 45px">

<%@ include file="header.jsp" %>

<div class="container mt-5 text-center">

<h3>Please Login to System</h3>

<%
// Print prior error login message if present
if (session.getAttribute("loginMessage") != null)
	out.println("<p>"+session.getAttribute("loginMessage").toString()+"</p>");
%>

<br>
<form name="MyForm" method=post action="validateLogin.jsp">
<table style="display:inline">
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Username:</font></div></td>
	<td><input type="text" name="username"  size=10 maxlength=10></td>
</tr>
<tr>
	<td><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Password:</font></div></td>
	<td><input type="password" name="password" size=10 maxlength="10"></td>
</tr>
</table>
<br/>
<input class="mt-4 submit" type="submit" name="Submit2" value="Log In">
</form>

<div class='mt-3'>
	<button class=btn btn-light m-3><a href=createUser.jsp>Create User</a></button>
	</div>


</div>

</body>
</html>

