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
<h1>�װ��� ���� Ȯ��</h1>
<%
   String id = (String)session.getAttribute("__ID");
%>
�� ID : <%=id %>
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
      <td>�װ����</td>
      <td><%= aid %><input type = "hidden" name = "aid" value = <%=aid %>></td>
   </tr>
   <tr>
      <td>�װ����</td>
      <td><%= aname %><input type = "hidden" name = "aname" value = <%=aname %>></td>
   </tr>
   <tr>
      <td>��¥</td>
      <td><%= adate %><input type = "hidden" name = "adate" value = <%=aname %>></td>
   </tr>
   <tr>
      <td>�����</td>
      <td><%= astart %><input type = "hidden" name = "astart" value = <%=astart %>></td>
   </tr>
   <tr>
      <td>������</td>
      <td><%= aend %><input type = "hidden" name = "aend" value = <%=aend %>></td>
   </tr>
   <tr>
      <td>��߽ð�</td>
      <td><%= atime %><input type = "hidden" name = "atime" value=<%= atime %>></td>
   </tr>
</table>
   <input type = "submit" value = "�����ϱ�">

</form>

</body>
</html>