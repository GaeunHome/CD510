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
    <div id="container">
        <form class="login" action="check.jsp" method="POST">
            <div class="logintitle"><h1><a href="index.jsp">伍壹零唱片行</a></h1></div>
            <div class="logina"><h1>會員登入</h1></div>
            <div><input type="text" id="username" name="username" placeholder="帳號" ></div>
            <div><input type="password" id="password" name="password" placeholder="密碼" ></div>
            <button type="submit" class="loginbutton">登入</button>
            <a href="index.jsp">
                <button type="button" class="loginbutton">取消</button>
            </a>
        </form>
        <a href="signup.jsp" style="color: black;">還沒有註冊帳號嗎?</a>
    </div>
</body>
</html>