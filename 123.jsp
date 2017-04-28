<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD><TITLE>presentation</TITLE></HEAD>
	<meta charset="UTF-8">
<BODY align="center">
<%
request.setCharacterEncoding("UTF-8"); //設置以解決亂碼
String lname = request.getParameter("lastname");
String fname = request.getParameter("firstname");
String gender = request.getParameter("gender");
String grade = request.getParameter("grade");
String[] department = request.getParameterValues("department");
String[] intrest = request.getParameterValues("intrest");
String self = request.getParameter("self");

if(lname.equals("")||fname.equals(""))
	out.println("<h3>"+"姓名"+"</h3>"+"未填寫"+"</br>");
else
out.println("<h3>"+"姓名"+"</h3>"+lname+fname+"</br>");

out.println("<h3>"+"性別"+"</h3>"+gender+"</br>");
out.println("<h3>"+"年級"+"</h3>"+grade+"</br>");
out.println("<h3>"+"就讀管院"+"</h3>");
if(department != null){
	for(String element: department){
		out.println(element+"</br>");
	}
	out.println("</br>");
}
else out.println("沒有就讀任何管院....");
out.println("<h3>"+"興趣"+"</h3>");
if(intrest != null){
	for(String element: intrest){
			out.println(element+"</br>");
		}
	}
else  out.println("沒有任何興趣....");
out.println("<h3>"+"自我介紹"+"</h3>");
if(self.equals("")) out.println("這傢伙很懶~沒有任何自我介紹");
else out.println(self+"</br>");
 %>
</BODY>
</HTML>
