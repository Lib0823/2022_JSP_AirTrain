<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="java.sql.*" %>
    <%@ page import = "encryption.Decrypt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	h3{
		color: red;
	}
</style>
</head>
<body>
<%
try{
	String id = request.getParameter("_id");
	String rawPw = request.getParameter("_pw");
	String pw = Decrypt.decodeSha256(id, rawPw); // Decrypt클래스의 decodeSha256()호출 
	
	if(pw.equals("ok")){
		session.setAttribute("__ID", id);
		response.sendRedirect("Login.jsp");
	}else{
		out.println("<h3>아이디 또는 비밀번호가 맞지 않습니다.</h3>");
	}
}catch(Exception e){
	out.println("<h3>아이디 또는 비밀번호가 맞지 않습니다.</h3>");
}
	
%>


</body>
</html>