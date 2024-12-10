<html>
<head>
<title>JSP Page</title>
</head>
<body>
<h1>JSP Page</h1>

Request user agent: <%= request.getHeader("User-Agent") %>

<br /><br />

Request user language: <%= request.getLocale() %>
</body>
</html>