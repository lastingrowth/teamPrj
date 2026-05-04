<%@page import="java.time.YearMonth"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>birth.jsp</title>
<style>
*{
	margin:0;
	padding:0;
}

section {
	width:294px;
	height: 40px;
	text-align: center;
}
section > div{
	width:40px;
	height: 40px;
	float: left;
	margin: 1px;
	border:  1px solid #ccc;
	padding: 5px;
	box-sizing: border-box;
}


section > .title{
	text-align: center;
}

section > .title:nth-of-type(1){
	background-color: #f00;
	color: #fff;
}
section > .title:nth-of-type(7){
	background-color: #00f;
	color: #fff;
}

section > .days:nth-of-type(7n+1){
	color: #f00;
}
section > .days:nth-of-type(7n){
	color: #00f;
}

section > .days{
	text-align: right;
}

section > .today{
	background-color: #ff0;
}
section > .bday{
	background-color: #ff4081;
	color: #fff;
}

</style>
</head>
<body>

<%
// 오늘 날짜
LocalDate now = LocalDate.now();

// 내 생일
int birthMonth = 5;
int birthDay = 22;

// 올해 생일
LocalDate thisBirth = LocalDate.of(now.getYear(), birthMonth, birthDay);

// 생일 지났으면  => 내년
// 생일 지나기 전 => 올해
int targetYear;

if(now.isAfter(thisBirth)){
	targetYear = now.getYear() + 1;
}
else{
	targetYear = now.getYear();
}

// 해당 년도 5월
YearMonth ym = YearMonth.of(targetYear, birthMonth);

//5월 1일
LocalDate firstDay =
	LocalDate.of(targetYear, birthMonth, 1);

// 마지막 날짜
int last = ym.lengthOfMonth();

// 시작 요일
// 월=1 ~ 일=7
int start = firstDay.getDayOfWeek().getValue();

// 일요일 시작으로 변경
start = start % 7;

%>

<section>
<h2>5월 22일</h2>

<%
for(char ch : "일월화수목금토".toCharArray()){ %>

<div class='title'><%=ch %></div>	

<%}

for (int i = 0; i < start; i++) {
	out.print("<div class='days'></div>");
}

for (int i = 1; i <=last; i++) {
	
	String cls = "days";
	
	// 오늘 날짜
	if(targetYear == now.getYear()
		&& birthMonth == now.getMonthValue()
		&& i == now.getDayOfMonth()){

		cls += " today";
	}

	// 생일
	if(i == birthDay){
		cls += " bday";
	}
%>	
	<div class="<%=cls %>"><%=i %></div>
<%}%>

</section>
</body>
</html>