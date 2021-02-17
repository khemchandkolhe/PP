<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h1 style="color: red; text-align: Center">Student Registration
	Form</h1>
<form:form action="register" modelAttribute="student" method="POST">
	<table bgcolor="pink" align="center">
		<tr>
			<td>Username</td>
			<td><form:input path="uname" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><form:password path="pwd" /></td>
		</tr>

		<tr>
			<td>Email</td>
			<td><form:input path="email" /></td>
		</tr>

		<tr>
			<td>Phone Number</td>
			<td><form:input path="phno"/></td>
		</tr>

		<tr>
			<td>Gender</td>
			<td><form:radiobuttons items="${gender}" path="gender"/>
		</tr>

		<tr>
			<td>Course</td>
			<td><form:select path="course">
					<form:option value="">--select--</form:option>

					<form:options items="${courseList}"/>
				</form:select></td>
		</tr>
		<tr>
			<td>Preferred Timing</td>
			<td><form:checkboxes items="${timingsList }" path="preferredTime"></form:checkboxes> 
					</td>
		</tr><br/>
		
		<tr><td><input type="reset" value="reset"/></td>
		<td><input type="submit" value="Register"/><td/></tr>
		
		

	</table>

</form:form>