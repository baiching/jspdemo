<%@page import="java.lang.reflect.Parameter"%>
<html>
<head>
	<title>The Confirmation</title>
</head>

<%
	//read data
	String favLang = request.getParameter("favoriteLanguage");

	//Create cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	//lifespan
	theCookie.setMaxAge(60*60*24*365); //one year
	
	//send cookie to browser
	response.addCookie(theCookie);

%>

<body>
	Thanks! we set the favourite language as: ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookies-homepage.jsp">Return to home page</a>
	
</body>

</html>