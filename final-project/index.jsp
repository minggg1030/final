<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ page import="java.io.File, java.io.FileReader, java.io.BufferedReader, java.io.FileWriter" %>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>特別的愛給特別的你</title>
  <link rel="stylesheet" href="index.css">
  <link rel="icon" href="./picture/favicon.jpg" type="image/x-icon">
</head>
<body>
  <header>
    <a class="logo" href="./index.jsp"><img id="logo" src="picture/logo5-1.png" ></a>
    <nav>
      <ul>
          <li><a href="index.jsp">首頁</a></li>
          <li><a href="about.jsp">品牌故事</a></li>
          <li><a href="products.jsp">產品介紹</a></li>
          <li><a href="qaa.jsp">常見問題</a></li>
          <li><a href="./user/trade.jsp">關於我們</a></li>
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
                  <li><a href="./login/user.jsp"><%= name %></a></li>
          <% 
              } catch (Exception e) {
                  e.printStackTrace();
              }
          } else { 
          %>
            <li><a href="./login/login.html">會員登入</a></li>
          <% 
          } 
          %>
      </ul>
    </nav>
  </header>


    <!-- 下方是購物車、背景圖片 -->
    <% 
    if(session.getAttribute("id") != null) { 
    %>
        <aside>
            <a href=./shopping.html target="_blank"><img src="./picture/cart.jpg"
            style="width: 75px; height: 75px;"></a>
        </aside>
    <% 
    } else { 
    %>
        
    <% 
    } 
    %>

  <body class="index_body"></body>
  <li><a href="picture/logo5-1.png"></a></li>


  <!-- 下方是滑動式圖片 -->

  <section class="slideshow-container">
    <div class="slide active">
      <div class="numbertext1"></div>
      <img src="picture/flower1.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext2"></div>
      <img src="picture/flower2.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext3"></div>
      <img src="picture/flower3.jpg">
    </div>

    <div class="slide">
      <div class="numbertext4"></div>
      <img src="picture/flower4.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext5"></div>
      <img src="picture/flower5.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext6"></div>
      <img src="picture/flower6.jpg" >
    </div>
  
    <div class="slide">
      <div class="numbertext7"></div>
      <img src="picture/flower7.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext8"></div>
      <img src="picture/flower8.jpg" >
    </div>
    <div class="slide">
      <div class="numbertext9"></div>
      <img src="picture/flower9.jpg" >
    </div>
  </div>


  <script src="index.js"></script>

  </section>
<br>
<br>
<br>
<hr>
<br>
<br>
<br>
<br>
<br>
<br>
<p1>Core Ingredient</p1>
<br>
<br>
<br>
<br>
<br>
<br>
 <!-- 下方是排名 -->
 <div class="productsbox">
  <div class="products">
    <img id="one" src="picture/product1.jpg" alt="one" href="products.html"></a>
    <div class="text-over">康乃馨的花語代表著「母愛、純真、感恩」.....<br>每一朵康乃馨都是對媽媽無言的告白~表達我們對媽媽無盡的愛和感激!</div>
  </div>  
  <div class="products">
    <img id="three" src="picture/product2.jpg" alt="one"  href="products.html">
    <div class="text-over">紅玫瑰的花語代表著「愛情、熱情、感謝」.....<br>有愛大聲說～展示我們對母親激情的愛和深深的感謝！</div>
  </div>
  <div class="products">
    <img id="two" src="picture/product3.jpg" alt="one"  href="products.html">
    <div class="text-over">白玫瑰的花語代表著「純潔、敬意、祝福」......<br>以最真摯的祝福和感謝~表達母親純潔愛的象徵！</div>
  </div>
</div>

  <!-- 其他相片區塊 -->
</div>


  <!-- 下方是footer -->

  <footer>
    <p>觀看次數：
      <%
        String path = application.getRealPath("/")+"final-project/counter/";
        File count = new File(path, "record.txt");
        BufferedReader count_in = new BufferedReader(new FileReader(count));
        int record = Integer.parseInt(count_in.readLine());
        count_in.close();
        if(session.isNew()) record++;
        out.print(record);
        session.setAttribute("record", record);
        FileWriter count_out = new FileWriter(count);
        count_out.write(String.valueOf(record));
        count_out.flush();
        count_out.close();
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
<%
con.close();//結束資料庫連結
%>