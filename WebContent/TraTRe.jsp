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
<h1>기차표 예매 확인</h1>
<%
   String id = (String)session.getAttribute("__ID");
%>
내 ID : <%=id %>
<%
   request.setCharacterEncoding("EUC-KR");
   String tid = request.getParameter("tid");
   String tname = request.getParameter("tname");
   String tdate = request.getParameter("tdate");
   String tstart = request.getParameter("tstart");
   String tend = request.getParameter("tend");
   String ttime = request.getParameter("ttime");
%>
<form action = "Train_Insert_Query.jsp" method = "post">
<table border = 1>
   <tr>
      <td>항공편명</td>
      <td><%= tid %><input type = "hidden" name = "tid" value = <%=tid %>></td>
   </tr>
   <tr>
      <td>항공사명</td>
      <td><%= tname %><input type = "hidden" name = "tname" value = <%=tname %>></td>
   </tr>
   <tr>
      <td>날짜</td>
      <td><%= tdate %><input type = "hidden" name = "tdate" value = <%=tname %>></td>
   </tr>
   <tr>
      <td>출발지</td>
      <td><%= tstart %><input type = "hidden" name = "tstart" value = <%=tstart %>></td>
   </tr>
   <tr>
      <td>도착지</td>
      <td><%= tend %><input type = "hidden" name = "tend" value = <%=tend %>></td>
   </tr>
   <tr>
      <td>출발시간</td>
      <td><%= ttime %><input type = "hidden" name = "ttime" value=<%= ttime %>></td>
   </tr>
</table>
   <input type = "submit" value = "예약하기">

</form>

</body>
</html>