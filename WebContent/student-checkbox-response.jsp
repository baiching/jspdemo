<html>
<head><title>Student Confirmation Title</title></head>

<body>
	Student is confirmed: ${param.firstName} ${param.lastName }
	<br/><br/>
	
	<!-- Display the list of programming -->
	
	Fovourite Programming Languages:
	
	<ul>
		<%
			String[] langs = request.getParameterValues("favouriteLanguage");
 			
		if(langs != null){
			for(String templang: langs){
				
				out.println("<li>" + templang + "</li>");
			}
		}
		%>
	
	</ul>

</body>

</html>