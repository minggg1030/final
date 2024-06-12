<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="./config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="index.css">
  <style>
    .content {
      display: none;
      margin: 70px; 
    }

    .title {
      cursor: pointer;
      position: relative;
      margin: 30px;
    }

    .title::after {
      content: "";
      display: block;
      position: absolute;
      bottom: -1px;
      left: 0;
      width: 90%;
      height: 1px;
      background-color: #000;
    }
  </style>
  <script>
    function toggleContent1() {
      var content = document.getElementById("content1");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }

    function toggleContent2() {
      var content = document.getElementById("content2");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }

    function toggleContent3() {
      var content = document.getElementById("content3");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }

    function toggleContent4() {
      var content = document.getElementById("content4");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }

    function toggleContent5() {
      var content = document.getElementById("content5");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }

    function toggleContent6() {
      var content = document.getElementById("content6");
      if (content.style.display === "none") {
        content.style.display = "block";
      } else {
        content.style.display = "none";
      }
    }
  </script>
</head>
<body>
  <header>
    <a class="logo" href="index.html"><img id="logo" src="picture/logo5-1.png"></a>
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
  <li><a href="background.jpg"></a></li>

  <!-- 下方是滑動式圖片 -->

  



  <section id="content" ></br>
  </br></br></br></br></br>
    <h1 class="title" onclick="toggleContent1()">✿ 如何訂購</h1>
  
    <div id="content1" class="content">
      <p>非常感謝您對我們產品的興趣！以下是訂購流程：</br>
  
      </br>● 選擇商品</br>瀏覽我們的網站，找到您感興趣的商品。您可以使用搜尋功能或瀏覽不同的產品類別，以找到您想要的商品。</br>
    </br>● 加入購物車</br>在找到心儀的商品後，點擊「加入購物車」按鈕將商品放入購物車。您可以在購物車頁面中查看所選商品的清單，並進行數量的調整。</br>
  </br>● 結帳</br>當您準備好結帳時，點擊「結帳」按鈕。系統將引導您到結帳頁面，您需要填寫相關的資訊，例如郵寄地址、聯繫方式等。</br>
  </br>● 選擇付款方式</br>在結帳過程中，您可以從我們提供的付款方式中選擇適合您的選項。請選擇您偏好的付款方式並填寫相關的資訊。</br>
  </br>● 確認訂單</br>在填寫完所有必要資訊並選擇付款方式後，請仔細檢查您的訂單詳情，包括商品、數量、郵寄地址等。確保一切正確無誤後，點擊「確認訂單」。</br>
  </br>● 完成訂單</br>一旦您確認訂單，系統將處理您的付款並發送一封訂單確認郵件至您提供的電子郵件地址。您可以在郵件中找到您的訂單詳情。</br>
  </br>如果您在訂購過程中遇到任何問題或需要協助，請隨時聯繫我們的客戶服務團隊。</br>
        
        謝謝您的選購！</p>
    </div>
  
    <h1 class="title" onclick="toggleContent2()">✿ 訂單付款</h1>
    <div id="content2" class="content">
      <p>感謝您選擇我們的網站！以下是我們的付款方式：</br>
      </br>
      ● 信用卡付款</br>我們接受各大信用卡品牌，包括 Visa、Mastercard 和 American Express。您可以在結帳時使用信用卡進行支付。請確保填寫正確的卡號、有效期限和驗證碼。</br>
      </br>
      ● PayPal</br>我們支援使用 PayPal 進行支付。當您選擇 PayPal 付款時，系統將引導您到 PayPal 網站，您可以使用您的 PayPal 帳戶進行付款。</br>
      </br>
      ● 銀行轉帳</br>如果您希望通過銀行轉帳支付款項，請在結帳時選擇此付款方式。我們將提供我們的銀行資訊，您可以通過網上銀行或前往銀行分行完成轉帳。</br>
      </br>
      ● 貨到付款</br>此選項僅適用於特定地區。如果您符合貨到付款的條件，您可以在送貨時直接支付給運送人員。請注意，這種付款方式可能會附加額外的費用。</br>
      </br>
        請注意，我們的付款方式可能會根據您所在地區或訂單金額而有所不同。如果您有任何關於付款的問題或需要更多的幫助，請隨時聯繫我們的客戶服務團隊。</br>
        
        感謝您的支持！</p>
    </div>
  
    <h1 class="title" onclick="toggleContent3()">✿ 運送方式</h1>
    <div id="content3" class="content">
      <p>● 運送政策 : </br>
        黑貓宅急便 / 配送天數約1-3天 ( 黑貓公告之繁忙期無法保證到貨日期，到貨時間依實際配送為準 ) / 週日不送件</br>
       中華郵政 / 配送天數約2-5天 / 週六、週日、國定假日及連續假日期間不投遞</br>
      </br>
       ● 出貨說明 : </br>
       下單後（不含訂購當天），約 7 個工作天內寄出，不含例假日。急件或需指定到貨日期，請於訂單中備註或與我們討論。</br>
       訂製商品之最長預付期為30天，請於想指定的到貨日期前30天內再下單結帳您需要的商品。若是想於到貨日30天前確認、訂購商品，歡迎與我們聯繫。</br>
      </br>
    </div>
  
    <h1 class="title" onclick="toggleContent4()">✿ 商品退換</h1>
    <div id="content4" class="content">
      <p>       ● 現貨商品退換貨政策：</br>
        在收到商品後，請立刻檢查商品是否正確，如果有問題請於 3 天內與我們連絡，並於連絡後 5 天內保持完整連同未拆封的商品包裝寄回原商品，超過時限未寄回視為不更換並取消保留。除了瑕疵品之外，其他原因換貨需自行支付來回運費。</br>
       </br>
        ● 訂製商品退換貨政策：</br>
        我們不接受訂製商品與急單訂製商品退換貨服務。</br>
        賣場商品皆為實品拍攝，請勿因螢幕或手機圖片造成色差等因素申請退換貨。</br>
       </br>
        ● 其他退換貨政策：</br>
        購買前詳盡溝通，可省下退換貨所耗費的心力、金錢與時間，如果有疑問請儘早向我們提出。</br></p>
    </div>
  
    <h1 class="title" onclick="toggleContent5()">✿ 最新資訊</h1>
    <div id="content5" class="content">
      <p>可以追蹤我們的Instagram @sweetbox_ins，得到產品最新資訊喔！</br></br>
        法國時尚大師Christian Dior曾說：花朵，是除了女性之外，上帝賜予這世界最美好的禮物。是的，確實如此，美麗的花朵可以帶給我們溫暖、喜悅、幸福，每一位愛花者都能在花朵裡得到快樂，也願與大家分享這份快樂。</br>
      </br>
  最新的花藝設計發表與教學訊息都在”艾瑞兒花藝 Ariel's Flower”粉絲專頁公佈</br>
  </br>
  ● 商品訂製</br>
  門市均有各式商品展售，現貨款均可在完成付款後寄出。鮮花類商品訂製款建議提前預定，避免因而製作不及。</br>
  </br>
  ● 課程預約</br>
  各類花藝課程均採預約制，固定上課時間為每週四與六，可選擇個人合適的日期做預約。</br>
  </br>
  ● 鮮花保存</br>
  鮮花的保鮮觀賞期一般為5~7日左右，各式花材會有不同的觀賞時間（季節與環境也會影響）。鮮花類商品可每日勤於換水修剪根部，並放在通風良好溫度適中的地方，皆有助於延長觀賞期。</br>
  </br>
  ● 乾燥花或不凋花保存</br>
  乾燥花建議保存在通風良好的環境，避免日曬、潮濕或陽光直射，可存放期限為8個月至一年以上不等。不凋花是一種鮮花製成的進口材料，平日應避免日曬、潮濕或陽光直射或通風不良的環境，可存放期限為1-3年不等。</br>
  </br>
  ● 珠寶捧花保存</br>
  艾瑞兒的珠寶捧花製作上採用水晶、水鑽、珍珠、合金、銅、布面人造花、緞帶、刺繡蕾絲等各式材料製作，捧花上的珠寶金屬表面保養方式如同一般首飾，可用乾布擦拭保持清潔，或用酒精沾濕棉布輕擦水晶水鑽表面。捧花避免沾水或置放於潮濕的環境，防止重摔、重壓、長期陽光直射，平日可用塑膠袋密實包裹減少空氣接觸，良好的保養習慣可以幫助你保持珠寶捧花的美麗。</br>
      </p>
    </div>
  
    <h1 class="title" onclick="toggleContent6()">✿ 聯絡我們</h1>
    <div id="content6" class="content">
      <p>如果您需要聯絡我們，請使用以下方式：</br>
  
      </br>● 客戶服務電話：(+886)- 912345678</br>
    </br>● 電子郵件：example.ex@gmail.com</br>
  </br>● 客戶服務時間：09:00~17:00</br>
  </br>社交媒體：我們也在以下社交媒體平台上提供客戶服務：</br>
        
  </br>● Facebook: Sweet Box-花語寄情</br>
  </br>● Twitter: Sweet Box-花語寄情</br>
  </br>● Instagram: @SweetBox</br>
        請隨時與我們聯絡，我們的客戶服務團隊將盡快回答您的問題並提供支援。我們非常重視您的意見和反饋，以確保您有出色的購物體驗。</br>
        
        感謝您對我們的關注！</br></p>
    </div>
  
  
  
    <div style="margin: 50px;">可點標題已提供詳細資訊</div>





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