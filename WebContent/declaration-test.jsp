<html>

<body>
Converting string to upper <%= new String("hello world").toUpperCase() %>

<%!
	String makelower(String sentence){
	return sentence.toLowerCase();
}

%>

Lowe Case : "Hello me" -> <%= makelower("Hello Me") %>
</body>

</html>