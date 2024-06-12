<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@ include file="../config.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birthday = request.getParameter("birthday");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");

    if (id != null && !id.isEmpty() && 
        pwd != null && !pwd.isEmpty() &&
        name != null && !name.isEmpty() &&
        gender != null && !gender.isEmpty() &&
        birthday != null && !birthday.isEmpty() &&
        tel != null && !tel.isEmpty() &&
        address != null && !address.isEmpty()) {
        
        try {

            sql = "SELECT * FROM `members` WHERE `id` = ? OR `name` = ? OR `tel` = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, tel);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String error_reason = "";
                if (rs.getString("id").equals(id)) {
                    error_reason = "帳號已有申請紀錄";
                } else if (rs.getString("name").equals(name)) {
                    error_reason = "姓名已有申請紀錄";
                } else if (rs.getString("tel").equals(tel)) {
                    error_reason = "電話已有申請紀錄";
                }
    %>
                <script type="text/javascript">
                    setTimeout(function() {
                        window.location.href = "./signup.html";
                    }, 3000);
                </script>
                <body style="text-align: center; background-color:rgb(233, 209, 209);">
                    <div style="padding: 30px;">
                        <h1 style="padding: 50px;">申請失敗<%=error_reason%></h1>
                        <h1>頁面即將跳轉...</h1>
                        <p>3秒後將跳轉到新的頁面。如果瀏覽器沒有自動跳轉，請點擊以下連結：</p>
                        <a href="./signup.html">點擊這裡</a>
                    </div>
                </body>
    <%
            } else {
                sql = "INSERT INTO `members` (id, pwd, name, gender, birthday, tel, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                pstmt = con.prepareStatement(sql);
                pstmt.setString(1, id);
                pstmt.setString(2, pwd);
                pstmt.setString(3, name);
                pstmt.setString(4, gender);
                pstmt.setString(5, birthday);
                pstmt.setString(6, tel);
                pstmt.setString(7, address);
                pstmt.executeUpdate();
                response.sendRedirect("success.html");
            }
            rs.close();
            pstmt.close();
            con.close();
        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        }
    } else {
    %>
        <body style="text-align: center; background-color:rgb(233, 209, 209);">
            <div style="padding: 30px;">
                <h1 style="padding: 50px;">申請失敗(所有欄位必填)</h1>
                <h1>頁面即將跳轉...</h1>
                <p>請點擊以下連結重新申請：</p>
                <a href="./signup.html">點擊這裡</a>
            </div>
        </body>
    <%
    }
%>
