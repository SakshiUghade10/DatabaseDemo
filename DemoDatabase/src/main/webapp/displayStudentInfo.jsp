<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table border="1">
	<tr>
		<th>FirstName</th>
		<th>LastName</th>
		<th>Course</th>
		<th>Gender</th>
	</tr>

<c:forEach var="Stu" items="${StudentList}">
		<tr>
		<td>${Stu.firstname}</td>
		<td>${Stu.lastname}</td>
		<td>${Stu.course}</td>
		<td>${Stu.gender}</td>
		</tr>

</c:forEach>
</table>
<br>
<br>
<br>

<a href="http://localhost:8082/">AddStudent</a>