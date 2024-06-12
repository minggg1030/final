<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="about.css">
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
<!-- <li><a href="picture/logo5-1.png"></a></li> -->

<br><br><br><br>
       <!-- 下方是簡介 -->
      <div class="card">
        <div class="image">
          <img src="picture/logo5-1.png" alt="m3">
        </div>
        <div class="content">
          <h3>品牌故事</h3>
          <p class="story-text">在遙遠的花海之中，一個神秘的盒子靜靜地躺在花朵的中心，悄悄地散發著神奇的魔力~這，就是Sweetbox的誕生之地......<br></p>

            <p class="story-text">故事源於一位年輕而充滿激情的年輕人...<br></p>
                
            <p class="story-text">他們相信花朵擁有獨特的力量，可以在人們的生活中燃起希望和喜悅，但，又如何讓花朵的美麗與魅力真正觸動到每個人的心靈？<br></p>
            
            <p class="story-text" >為了尋找答案，他們踏上了一段實踐夢想之旅深入研究花卉的特性和意義。<br></p>
            
            <p class="story-text" > 在一個偶然的機會中發現了一個被遺忘已久的古老盒子。這個盒子看似普通，但卻擁有非凡的力量.....<br></p>
            
            <p class="story-text" > 當他們把花朵放進盒子裡時，盒子會將花的香氣、色彩和能量封存其中，並在打開時釋放出來。<br></p>
            
            <p class="story-text" > 經過不懈的努力和創造力，他們終於成功地將這個神奇的盒子與花藝相結合，打造出一個全新的花卉體驗 - 「 Sweetbox誕生了！」<br></p>
            
            
        </div>
      </div>
    
      <div class="card">
        <div class="content">
          <h3>品牌使命</h3>
          <p class="mission-text">Sweetbox的品牌使命是透過花朵的力量，為人們帶來歡樂、溫暖和美好.....<br></p>
          <p class="mission-text">  我們相信每一朵花都擁有獨特的魅力和能量，可以為人們的生活注入愛和希望。<br></p>

          <p class="mission-text"> 我們的使命是通過創造出色的花卉體驗，將這份美好帶給顧客.....<br></p>
        
          <p class="mission-text">我們致力於為每個人的特殊時刻和日常生活帶來驚喜和感動......<br></p>
            
          <p class="mission-text">我們追求創新和獨特性，不斷尋找新的花卉搭配和設計風格， 讓每個Sweetbox成為一個獨特的藝術品、顧客感受到我們對於品質和細節的感動......<br></p>
            
          <p class="mission-text"> 我們注重與環境的關係和可持續性，選擇經過負責任種植的花卉，並使用環保的包裝材料，以確保我們的業務對環境友好......<br></p>
            
          <p class="mission-text"> 我們希望透過我們的品牌故事和產品，啟發人們對於花卉的熱愛和欣賞，並鼓勵他們在自己的生活中燃起熱情，創造美好的時刻和回憶......<br></p>
        <p class="mission-text">  「相信花朵有著獨特的力量，可以連結人與人之間的情感，並為生活帶來更多的美好」是我們的宗旨～<br></p>
            
          <p class="mission-text">我們將通過Sweetbox將花朵的熱情和美麗傳遞給世界的每個角落，讓每一位顧客感受到生命力綻放出屬於自己的光彩！</p>      
     </div>
     <div>
        <p></p>
    </div>
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
    
    <div>
        <p></p>
    </div>
</footer>
</body>
</html>
<%
con.close();//結束資料庫連結
%>