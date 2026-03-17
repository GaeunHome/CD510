<%@page import = "java.sql.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>	

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增產品</title>

    <style>
        @import url('assets/css/back.css');
        @import url(https://fonts.googleapis.com/earlyaccess/cwtexyen.css);
    </style>
</head>
<body>

    <div id="meau">

        <ul class="meau_area">

            <div class="meau_left">

                <li class="logo">後台管理系統</li>

                <li><a href="back_new.jsp" class="meau_choice">新增產品</a></li>
        
                <li><a href="back_delete.jsp" class="meau_choice">產品刪除</a></li>
            
                <li><a href="back_reset.jsp" class="meau_choice">產品修改</a></li>

                <li><a href="back_manage.jsp" class="meau_choice">訂單管理</a></li>

                <li><a href="response.jsp" class="meau_choice">回饋表單意見</a></li>

            </div>

            <div class="meau_right">
                <form action="logout.jsp" method="POST">
                <li><button type="submit" class="btnlog">登出</button></li>
                </form>
            </div>
        
        </ul>

    </div>
    <form action = "addproduct.jsp" method="POST">
    <h1 class="title2" style="text-align:center">新增產品</h1>
    
    <div style="width:100%">

        <div class="list" style="width:100%;text-align:center">

            <div>產品名稱：<input type="text" class="text_input" name="name"></div><br>
            <div>產品價格：<input type="text" class="text_input" name="price"></div><br>
            <div>唱片歌手：<input type="text" class="text_input" name="singer"></div><br>
            <div>歌手圖片：<input type="text" class="text_input" name="singer_img"></div><br>
            <div>歌手簡介：<input type="text" class="text_input" name="singer_intro"></div><br>
            <div>產品介紹：<input type="text" class="text_input" name="introduction"></div><br>
            <div>產品庫存：<input type="text" class="text_input" name="amount"></div><br>
            <div>產品圖片路徑：<input type="text" class="text_input" name="img"></div><br>
            <div>類別：<input type="text" class="text_input" name="kin"></div><br>
            <div>唱片公司：<input type="text" class="text_input" name="company"></div><br>
            <div>發片時間：<input type="text" class="text_input" name="pubtime"></div><br>
        
        </div>

    </div>

    <div class="btn-group">

        <input type="submit" value="新增" class="btn" />
        <input type="reset" value="重設" class="btn" />
    
    </div>
    </form>
</body>
</html>