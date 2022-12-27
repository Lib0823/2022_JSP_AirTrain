<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
<style>
table {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
tr {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
<%
	response.setCharacterEncoding("EUC-KR");
   try{
	   Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from airplain");
      out.println("<table>");
      out.println("<tr><th>항공편명</th><th>항공사명</th><th>날짜</th><th>시간</th><th>출발지</th><th>도착지</th></tr>");
      while(rs.next()){
         String aid = rs.getString("airid");
         String aname = rs.getString("airline");
         String adate = rs.getString("airday");
         String atime = rs.getString("airtime");
         String astart = rs.getString("airdepart");
         String aend = rs.getString("airdestination");
         out.println("<tr>");
         out.println("<td><a href='AirTRe.jsp?aid="+aid+"&aname="+aname+"&adate="+adate+"&atime="+atime+"&astart="+astart+"&aend="+aend+"'>"+aid+"</a></td>");
         out.println("<td>"+aname+"</td>");
         out.println("<td>"+adate+"</td>");
         out.println("<td>"+atime+"</td>");
         out.println("<td>"+astart+"</td>");
         out.println("<td>"+aend+"</td>");
         out.println("</tr>");
      }
      out.println("</table class ='type09'>");
      rs.close();
      stmt.close();
      conn.close();
   }catch(SQLException e){
      e.printStackTrace();
   }
%>

</body>
</html>