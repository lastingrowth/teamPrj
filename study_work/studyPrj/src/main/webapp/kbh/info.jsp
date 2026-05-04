<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:include page="header.jsp"/>


<h2>기본정보</h2>


${msg}


<br><br>


Session ID :

<%=session.getId()%>
