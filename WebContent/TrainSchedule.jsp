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
   try{
	   Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/airplain?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&defaultFetchSize=1000&useSSL=false","root","1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from train");
      out.println("<table>");
      out.println("<tr><th>기차명</th><th>기차종류 </th><th>날짜</th><th>시간</th><th>출발지</th><th>도착지</th></tr>");
      while(rs.next()){
         String tid = rs.getString("traid");
         String tname = rs.getString("traline");
         String tdate = rs.getString("traday");
         String ttime = rs.getString("tratime");
         String tstart = rs.getString("tradepart");
         String tend = rs.getString("tradestination");
         out.println("<tr>");
         out.println("<td><a href='TraTRe.jsp?tid="+tid+"&tname="+tname+"&tdate="+tdate+"&ttime="+ttime+"&tstart="+tstart+"&tend="+tend+"'>"+tid+"</a></td>");
         out.println("<td>"+tname+"</td>");
         out.println("<td>"+tdate+"</td>");
         out.println("<td>"+ttime+"</td>");
         out.println("<td>"+tstart+"</td>");
         out.println("<td>"+tend+"</td>");
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