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
<h1>����ǥ ���� Ȯ��</h1>
<%
   String id = (String)session.getAttribute("__ID");
%>
�� ID : <%=id %>
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
      <td>�װ����</td>
      <td><%= tid %><input type = "hidden" name = "tid" value = <%=tid %>></td>
   </tr>
   <tr>
      <td>�װ����</td>
      <td><%= tname %><input type = "hidden" name = "tname" value = <%=tname %>></td>
   </tr>
   <tr>
      <td>��¥</td>
      <td><%= tdate %><input type = "hidden" name = "tdate" value = <%=tname %>></td>
   </tr>
   <tr>
      <td>�����</td>
      <td><%= tstart %><input type = "hidden" name = "tstart" value = <%=tstart %>></td>
   </tr>
   <tr>
      <td>������</td>
      <td><%= tend %><input type = "hidden" name = "tend" value = <%=tend %>></td>
   </tr>
   <tr>
      <td>��߽ð�</td>
      <td><%= ttime %><input type = "hidden" name = "ttime" value=<%= ttime %>></td>
   </tr>
</table>
   <input type = "submit" value = "�����ϱ�">

</form>

</body>
</html>