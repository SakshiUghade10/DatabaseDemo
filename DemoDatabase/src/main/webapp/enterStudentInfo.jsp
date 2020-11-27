<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<form:form method="post" action="readdata" modelAttribute="Student">
	FirstName<form:input path="firstname"/><br>
	<br>
	
	LastName<form:input path="lastname"/><br>
	<br>
	
	 Gender:   
        Male <form:radiobutton path="gender" value="Male"/>  
        Female <form:radiobutton path="Gender" value="Female"/>
        <br>
         <br>
   
    Course: <form:select path="course">  
        <form:option value="Java" label="Java"/>  
        <form:option value="Spring" label="Spring"/>  
        <form:option value="JPA" label="JPA"/>  
        <form:option value="Python" label="Python"/>  
        <form:option value=".NET" label=".NET"/>  
        </form:select> 
       <br>
       
       <br>
	<input type="submit" value="ClickToSubmit"/>
</form:form>