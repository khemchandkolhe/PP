<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

	<h2 style="color: green; text-align: center">Your Registration
		completed succesfully with below Details</h2>
	<hr />

	<table align="center" bgcolor="violet">
		<tr>
			<td>Name:</td>
			<td>${student.uname}</td>
		</tr>

		<%-- <tr>
			<td>Password:</td>
			<td>${student.pwd}</td>
		</tr> --%>

		<tr>
			<td>Email:</td>
			<td>${student.email}</td>
		</tr>

		<tr>
			<td>Phone Number:</td>
			<td>${student.phno}</td>
		</tr>

		<tr>
			<td>Gender:</td>
			<td>${student.gender}</td>
		</tr>

		<tr>
			<td>Course:</td>
			<td>${student.course})</td>
		</tr>

		<tr>
			<td>Preferred Time:</td>
			<td>${student.preferredTime[0]}  ${student.preferredTime[1]}  ${student.preferredTime[2]}</td>
		</tr>

	</table>
	<h1 style="color:white;text-align:center"><a href="register">Home</a></h1>


</body>
</html>