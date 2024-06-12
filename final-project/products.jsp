<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品型錄</title>
  <link rel="stylesheet" href="product.css">
  <style>
    .container {
    display: grid;
    grid-template-columns: repeat(3, 1fr); /* 三個等寬列 */
    gap: 5px; /* 列間距和行間距 */
  }
  
  .grid-item {
    border: 2px solid #d4c8c8; /* 可選的：加入邊框以顯示格子的邊界 */
    padding: 5px;
  }
  
  .caption {
    margin-top: 10px;
  }
  img {
    max-width: 100%; /* 限制圖片寬度不超過父容器寬度 */
    max-height: 100%; /* 限制圖片高度不超過父容器高度 */
  }
  </style>
</head>
<body>
  <header>
  </br>
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
    <% 
    if(session.getAttribute("id") != null) { 
    %>
        <aside>
            <a href=shopping.html target="_blank"><img src="picture/cart.jpg"
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
  <br><br><br><br><br>
<section id="content">
    <div class="container">
        <div class="grid-item">
            <div style="text-align: center;">
                <a href="fiower1.html" target="_blank"><img src="picture/flower1.jpg" alt="圖片1"></a>
            </div>
            <div class="caption">
                <h2 style="text-align: center;">
                    THANK YOU 不凋花盆花
                </h2>
            </div>
        </div>
        <div class="grid-item">
            <div style="text-align: center;">
                <a href="fiower2.html" target="_blank"><img src="picture/flower2.jpg" alt="圖片2"></a>
            </div>
            <div class="caption">
                <h2 style="text-align: center;">單枝永生玫瑰花束</h2>
            </div>
        </div>
        <div class="grid-item">
            <div style="text-align: center;">
                <a href="fiower3.html" target="_blank"><img src="picture/flower3.jpg" alt="圖片3"></a>
            </div>
            <div class="caption">
                <h2 style="text-align: center;">金色蝴蝶結盆花</h2>
            </div>
        </div>
        <div class="grid-item">
            <div style="text-align: center;">
                <a href="fiower4.html" target="_blank"> <img src="picture/flower4.jpg" alt="圖片4"></a>
            </div>
            <div class="caption">
                <h2 style="text-align: center;">甜蜜花束</h2>
            </div>
        </div>
            <div class="grid-item">
                <div style="text-align: center;">
                    <a href="fiower5.html" target="_blank"><img src="picture/flower5.jpg" alt="圖片1"></a>
                </div>
                <div class="caption">
                    <h2 style="text-align: center;">
                        給媽媽的一盒小花園
                    </h2>
                </div>
            </div>
        
        
<div class="grid-item">
    <div style="text-align: center;">
        <a href="fiower6.html" target="_blank"><img src="picture/flower6.jpg" alt="圖片6"></a>
    </div>
    <div class="caption">
        <h2 style="text-align: center;">暖洋洋心意 - 波波球盆花</h2>
    </div>
</div>
<div class="grid-item">
    <div style="text-align: center;">
        <a href="fiower7.html" target="_blank"><img src="picture/flower7.jpg" alt="圖片7"></a>
    </div>
    <div class="caption">
        <h2 style="text-align: center;">永恆的心意 - 波波球盆花</h2>
    </div>
</div>

<div class="grid-item">
    <div style="text-align: center;">
        <a href="fiower8.html" target="_blank"><img src="picture/flower8.jpg" alt="圖片8"></a>
    </div>
    <div class="caption">
        <h2 style="text-align: center;">小愛心波波球花束</h2>
    </div>
</div>

<div class="grid-item">
    <div style="text-align: center;">
        <a href="fiower9.html" target="_blank"><img src="picture/flower9.jpg" alt="圖片9"></a>
    </div>
    <div class="caption">
        <h2 style="text-align: center;">溫柔的午後不凋玫瑰盆花</h2>
    </div>
</div>

</section>
<body class="index_body"></body>

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
<%
con.close();//結束資料庫連結
%>