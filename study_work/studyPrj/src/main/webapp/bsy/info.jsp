<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>박선형입니다</h1>

<%
String menu = request.getParameter("menu");

String contentPage = "psh_intro.jsp"; 
String title = "자기소개"; 

if(menu != null){
    if(menu.equals("psh_hobby")){
        contentPage = "psh_hobby.jsp";
        title = "취미";
    } else if(menu.equals("psh_photo")){
        contentPage = "psh_photo.jsp";
        title = "기분좋은 사진";
    } else if(menu.equals("psh_intro")){
        contentPage = "psh_intro.jsp";
        title = "자기소개";
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>박선형</title>
</head>
<body>


<table border="" width="700px">
 
    <tr>
    <td colspan="2"><h2><%=title%></h2></td>
	</tr>

   
    <tr> 
        <td width="200px">
        	<h3>메뉴</h3>
            <a href="info.jsp?menu=psh_intro">자기소개</a><br>
            <a href="info.jsp?menu=psh_hobby">취미</a><br>
            <a href="info.jsp?menu=psh_photo">기분좋은사진</a>
        </td>

       
		<td width="500px">
    		<jsp:include page="<%=contentPage%>" />
		</td>
    </tr>

</table>
</body>
</html>