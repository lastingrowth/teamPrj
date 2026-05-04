<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mainUrl = request.getParameter("mainUrl");

	if(mainUrl==null){
		mainUrl = "menu/name.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿</title>
</head>
<body>
<table border="">
	<tr>
		<td colspan="2">
		<jsp:include page="../inc/header.jsp"/>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" width="700px">
		<jsp:include page="../inc/nav.jsp"/>
		</td>
	</tr>
	<tr>
		<td width="200px">
		<jsp:include page="inc/menu.jsp"/>
		</td>
		<td width="500px">
		<jsp:include page="<%=mainUrl %>"/>
		</td>
	</tr>
	<tr> 
		<td colspan="2">
		<jsp:include page="../inc/footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>