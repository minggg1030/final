<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="../config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="trade.css">
</head>
<body>
    <header>
      <a class="logo" href="../index.jsp"><img id="logo" src="../picture/logo5-1.png" ></a>
  
      <nav>
        <ul>
          <li><a href="../index.jsp">首頁</a></li>
          <li><a href="../about.jsp">品牌故事</a></li>
          <li><a href="../products.jsp">產品介紹</a></li>
          <li><a href="../qaa.jsp">常見問題</a></li>
          <li><a href="./trade.jsp">關於我們</a></li>
          <% 
          if(session.getAttribute("id") != null) {
              try {
                  request.setCharacterEncoding("UTF-8");
                  sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
                  ResultSet rs = con.createStatement().executeQuery(sql);
                  String name = "";
      
                  //讀出id, pwd當成使用者要更改時的內定值
                  if(rs.next()) {
                      name = rs.getString("name");
                  }
          %>
                  <li><a href="shopping.html">購物清單</a></li>
                  <li><a href="../login/user.jsp"><%= name %></a></li>
          <% 
              } catch (Exception e) {
                  e.printStackTrace();
              }
          } else { 
          %>
            <li><a href="../login/login.html">會員登入</a></li>
          <% 
          } 
          %>
        </ul>
      </nav>
    
      </header>
      <% 
      if(session.getAttribute("id") != null) { 
      %>
          <aside>
              <a href=../shopping.html target="_blank"><img src="../picture/cart.jpg"
              style="width: 75px; height: 75px;"></a>
          </aside>
      <% 
      } else { 
      %>
          
      <% 
      } 
      %>
      <body class="index_body"></body>
      <li><a href="picture/background.jpg"></a></li>

 <!-- 下方是組員介紹 -->
      
<h2 class="GMT"> << 組員介紹 >></h2>
<div class="container">
  <%
  sql = "SELECT * FROM `members` WHERE `mid` <= 4 AND `mid` >= 1";
  ResultSet rs = con.createStatement().executeQuery(sql);
  String img="", link="", text="", name="";
  
  while(rs.next()) {
    name = rs.getString("name");
    img = rs.getString("photopos");
    link = rs.getString("link");
    text = rs.getString("text");
  %>
  <div class="card">
    <div class="image">
      <% out.print("<img src=\"../picture/member/" + img + "\" alt=\"m3\">"); %>
    </div>
    <div class="content">
      <h3><%=name%></h3>
      <p>本次專案中，我學到了很多關於網頁設計方面的知識。
        在設計過程中也出現了很多問題，但通過上網查詢與不斷學習、解決，使做出來的東西都在不斷進步與改善。
        多媒體程式設計是我輔系資管的第一堂課，雖然對設計有很多想法，但因為時間和能力關係沒辦法呈現出來，不過透過這門課讓我也學到了很多，雖有挫折但苦盡甘來還是很有成就的!</p>
    </div>
  </div>
  <%
  }
  %>

</div>



 <!-- 組員介紹到此 -->
      

<!-- 下方是footer -->

<footer>
    <p>觀看次數：
      <%
      String re = session.getAttribute("record").toString();
      out.print(re);
  %>
    </p>
    <p>Sweet Box</p>
    <p>Phone : (+886)- 912345678 </p>
    <p>Email : example.ex@gmail.com </p>
    <p>Copyrgiht @ 2023 All rights reserved</p>
</footer>
<div class="footer2">
    <p></p>
</div>

</body>
</html>
