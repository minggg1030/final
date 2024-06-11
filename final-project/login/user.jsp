<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>
<%
if(session.getAttribute("id") != null ){
	request.setCharacterEncoding("UTF-8");
    sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="", pwd="", name="", birth="",vip="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    id=rs.getString("id");
		pwd=rs.getString("pwd");
		name=rs.getString("name");
		birth=rs.getString("birthday");
		vip=rs.getString("vip");
	}
    con.close();//結束資料庫連結
%>
<link rel="stylesheet" href="signup.css">
<section>

	<div class="signup_main">

		<form class="form" action="update.jsp" method="POST">
			<h2>哈囉，<%=name%>，<a href='logout.jsp'>登出</a></h2>
			您的會員等級是:<%=vip%><br>
			請修改會員資料：<br />
			<!-- <label>姓名</label>
			<div class="inputext">
				<input type="text" id="user_name" class="ipt">
			</div> -->
			您的帳號：<input type="text" name="id" value="<%=id%>" /><br>
			您的密碼：<input type="password" name="pwd" value="<%=pwd%>" /><br>
			您的姓名：<input type="text" name="name" value="<%=name%>" /><br>
			您的生日：<input type="text" name="birth" value="<%=birth%>" />

			<input type="submit" name="b1" value="更新資料" />
			<!-- <h2>------------------------------------------</h2> -->
			

		</form>

	</div>

</section>



<%
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
