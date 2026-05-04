<%@ page import="service.HomeService"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%

String cate=request.getParameter("cate");

if(cate==null){
	cate="info";
}

HomeService hs = new HomeService();

String msg = hs.getMessage(cate);

request.setAttribute("msg", msg);


String viewPage="/view/"+cate+".jsp";

RequestDispatcher rd=
request.getRequestDispatcher(viewPage);

rd.forward(request,response);

%>
