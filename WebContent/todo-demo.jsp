<%@ page import="java.util.*" %>
<html>
<body>
<!-- create html form  -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem"/>
	
	<input type="submit" value="Submit"/>
	
</form>

<br/>
<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	
	
	String theItem = request.getParameter("theItem");
	
	//update clean version each time
	
	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	
	if(theItem != null){
		
		items.add(theItem);
	}
%>
<br/><br/>
<hr>
<b>ToDo list items:</b> <br/><br/>

<ol>
<%
	for (String temp: items){
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>
<br/>



</body>
</html>