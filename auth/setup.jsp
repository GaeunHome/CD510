<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
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
<%
if(session.getAttribute("username") != null ){
    sql = "SELECT * FROM `vip` WHERE `vip_account`='" + session.getAttribute("username")+"';"; 
	ResultSet rs = con.createStatement().executeQuery(sql);
	String username="", password="", name="", email="", phone="", gender="";
	while(rs.next()){
	    username = rs.getString("vip_account");
		password = rs.getString("vip_password");
        name = rs.getString("vip_name");
        email = rs.getString("email");
        phone = rs.getString("phone");
        gender = rs.getString("sex");
	}
    con.close();//結束資料庫連結
%>
    <div id="container2">
        <form class="login" action="updatemember.jsp" method="POST">
            <div class="logintitle"><h1><a href="index.jsp">伍壹零唱片行</a></h1></div>
            <div class="logina"><h1>會員資料修改</h1></div>
            <div><input type="text" id="username" name="username" readonly="readonly" placeholder="帳號" value="<%=username%>"></div>
            <div><input type="text" id="password" name="password" placeholder="密碼" value="<%=password%>"></div>
            <div><input type="text" id="name" name="name" placeholder="姓名" value="<%=name%>"></div>
            <div><input type="text" id="phone" name="phone" placeholder="電話" value="<%=phone%>"></div>
            <div><input type="email" id="location" name="location" placeholder="電子郵件" required="required" value="<%=email%>"></div>
            <div><input type="text" id="gender" name="gender" placeholder="性別" value="<%=gender%>"></div>
            <button type="submit" class="loginbutton">確定修改</button>
            <a href="index.jsp">
                <button type="button" class="loginbutton">取消</button>
            </a> 
        </form>
    </div>
<%
}
else{
	con.close();//結束資料庫連結
    out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
}
%>

</body>
</html>