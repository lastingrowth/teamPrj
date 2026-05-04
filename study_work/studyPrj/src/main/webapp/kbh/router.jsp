<%@ page contentType="text/html; charset=UTF-8"%>

<%

String cate=request.getParameter("cate");

if(cate==null){
    cate="info";
}

String msg="";

switch(cate){

case "info":
    msg="안녕하세요 김보현입니다.";
    break;

case "hobby":
    msg="취미는 공부와 운동입니다.";
    break;

case "future":
    msg="백엔드 개발자가 목표입니다.";
    break;
}

request.setAttribute("msg", msg);


String viewPage="/kbh/"+cate+".jsp";


RequestDispatcher rd=
request.getRequestDispatcher(viewPage);


rd.forward(request,response);

%>
