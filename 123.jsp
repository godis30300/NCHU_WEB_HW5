<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD><TITLE>presentation</TITLE></HEAD>
<BODY>
<%
String lname = request.getParameter("lastname");
String fname = request.getParameter("firstname");
String gender = request.getParameter("gender");
String grade = request.getParameter("grade");
String[] department = request.getParameterValues("department");
String[] intrest = request.getParameterValues("intrest");
String self = request.getParameter("self");

	for(String element: department){
		out.println(element+"</br>");
	}
		for(String element: intrest){
			out.println(element+"</br>");
		}
 %>
</BODY>
</HTML>
