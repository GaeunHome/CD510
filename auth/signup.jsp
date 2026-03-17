<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員中心</title>
    <link rel="stylesheet" href="assets/css/member.css">
</head>
<body>
    <div id="container3">
        <form class="login" method="get" action="addvip.jsp">
            <div class="logintitle"><h1><a href="index.jsp">伍壹零唱片行</a></h1></div>
            <div class="logina"><h1>會員註冊</h1></div>
            <div><input type="text" id="username" name="username" placeholder="帳號" ></div>
            <div><input type="text" id="password" name="password" placeholder="密碼" ></div>
            <div><input type="text" id="name" name="name" placeholder="姓名" ></div>
            <div><input type="text" id="phone" name="phone" placeholder="電話" ></div>
            <div><input type="email" id="location" name="location" required="required" placeholder="電子郵件" ></div>
            <div><input type="text" id="gender" name="gender" placeholder="性別" ></div>
            <button type="submit" class="loginbutton">註冊</button>
            <a href="index.jsp">
                <button type="button" class="loginbutton">取消</button>
            </a> 
        </form>
    </div>



</body>
</html>