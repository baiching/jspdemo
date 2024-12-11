<html>

<body>
<h3>Training portal</h3>

<%
	//default value
	String favLan = "Java";
	
	//Get cookies from Browser
	Cookie[] theCookies = request.getCookies();
	
	//find the favorite language from cookie
	
	if(theCookies != null){
		
		for(Cookie tempCookie: theCookies){
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLan = tempCookie.getValue();
				break;
			}
			
		}
	}
%>

<!-- Now showing personalize page -->
	<h4>New books for <%= favLan %></h4>
	<ul>
		<li>abab ananan</li>
		<li>afgerb ytyt</li>
		<li>rgrgrfbh rtghte yhjr</li>
	</ul>
	
	<h4>Latest news for <%= favLan %></h4>
	<ul>
		<li>abab ananan</li>
		<li>afgerb ytyt</li>
		<li>rgrgrfbh rtghte yhjr</li>
	</ul>
	<h4>Hot Jobs for <%= favLan %></h4>
	<ul>
		<li>abab ananan</li>
		<li>afgerb ytyt</li>
		<li>rgrgrfbh rtghte yhjr</li>
	</ul>
	<hr>
	<a href="cookies-personalize-form.html">Set you preference</a>
</body>
</html>