<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"asd0389wsx0216@gmail.com","1234");
String sql="USE `members`";
con.createStatement().execute(sql);
%>