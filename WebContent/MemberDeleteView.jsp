<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table{
	position: relative;
	left:200px;
	top:100px;
	}
	
</style>
</head>
<body>
<h2>ȸ��Ż��</h2>
<% String id = (String)session.getAttribute("__ID"); %>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<Form action="MemberDeleteQuery.jsp" method="post">
<table border="1" bordercolor="" width ="500" height="100" >
    <tr>
	<p><td colspan = "4" span style="color:black" align="left">ȸ�� Ż��</td></p>
    </tr>
    <tr>
	<td>ID</td>
	<td><%=id%><input type="hidden" name="_id" value="<%=id%>"></td>
    </tr>
    <td align="right" colspan = "4"><input type="submit" value="Ż���ϱ�"></td>
</table>

</Form>
</body>
</html>