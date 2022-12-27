<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>항공권 예매 확인</h1>
<%
   String id = (String)session.getAttribute("__ID");
%>
내 ID : <%=id %>
<%
   request.setCharacterEncoding("EUC-KR");
   String aid = request.getParameter("aid");
   String aname = request.getParameter("aname");
   String adate = request.getParameter("adate");
   String astart = request.getParameter("astart");
   String aend = request.getParameter("aend");
   String atime = request.getParameter("atime");
%>
<form action = "Air_Insert_Query.jsp" method = "post">
<table border = 1>
   <tr>
      <td>항공편명</td>
      <td><%= aid %><input type = "hidden" name = "aid" value = <%=aid %>></td>
   </tr>
   <tr>
      <td>항공사명</td>
      <td><%= aname %><input type = "hidden" name = "aname" value = <%=aname %>></td>
   </tr>
   <tr>
      <td>날짜</td>
      <td><%= adate %><input type = "hidden" name = "adate" value = <%=aname %>></td>
   </tr>
   <tr>
      <td>출발지</td>
      <td><%= astart %><input type = "hidden" name = "astart" value = <%=astart %>></td>
   </tr>
   <tr>
      <td>도착지</td>
      <td><%= aend %><input type = "hidden" name = "aend" value = <%=aend %>></td>
   </tr>
   <tr>
      <td>출발시간</td>
      <td><%= atime %><input type = "hidden" name = "atime" value=<%= atime %>></td>
   </tr>
</table>
   <input type = "submit" value = "예약하기">

</form>

</body>
</html>