<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>訂單記錄</title>
    <link rel="stylesheet" href="assets/css/member.css">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/order.css">
</head>
<body>
    <header class="navFixed" >
        <div >
            <h1><a href="index.jsp">伍壹零</a></h1>
            <div class="wrap">
                <form action="search.jsp" method="POST">
                    <div class="search">
                        <input class="search-bar" type="search" name="search" id="search" placeholder="請輸入商品名稱">
                        <button class="search-btn" type="submit" name="search" value=""><img src="assets/images/search.jpg"></button>
                    </div>
                </form>
               </div>
            <nav>
                <ul class="drop-down-menu">
                    <li>
                        <a href="#">產品選購</a>
                            <ul class="dropdown">
                                <li><a href="chinese.jsp">華語專輯</a></li>
                                <li><a href="japan.jsp">日文專輯</a></li>
                                <li><a href="korea.jsp">韓語專輯</a></li>
                                <li><a href="english.jsp">英文專輯</a></li>
                            </ul>
                    </li>
                    <li>
                        <a href="#">會員中心</a>
                        <ul class="dropdown">
                            <li><%@ include file="issignin.jsp" %></li>
                            <li><a href="order.jsp">訂單</a></li>
                            <li><a href="setup.jsp">修改資料</a></li>
                        </ul>
                    </li>
                    <li><a href="aboutus.jsp">關於我們</a></li>
                    <li><a href="car.jsp">購物車</a></li>
                    </ul>
            </nav>
        </div>
    </header>

    <main>
        <div class="blank">
        </div>
        <div class="flex">
            <div></div>
            <div class="ordertitlea" ><p>商品</p></div>
            <div></div> 
            <div class="ordertitleb"><p>商品名稱</p></div>
            <div></div> <div></div>
            <div class="ordertitlec"><p>歌手</p></div>
            <div></div>  <div></div> 
            <div class="ordertitled"><p>數量</p></div>
            <div></div> 
            <div class="ordertitlee"><p>功能</p></div>
            <div></div>
        </div><hr>
        <article>
<%request.setCharacterEncoding("utf-8");%>
<%
if(session.getAttribute("username")==null){
    out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
}
else{
    try {
        Class.forName("com.mysql.jdbc.Driver");
        try {
            String url="jdbc:mysql://localhost/?serverTimezone=UTC";
            String sql="";
            Connection con=DriverManager.getConnection(url,"root","1234");
            if(con.isClosed())
               out.println("連線建立失敗");
            else {
                sql= "USE `album`";
                con.createStatement().execute(sql);
                if(session.getAttribute("username") != null ) {
                    String user="";
					Object ob_get_user = session.getAttribute("username");
					if(ob_get_user != null)
					    user = ob_get_user.toString();
                    String order = "SELECT * FROM `orders` WHERE `vip_id` = '"+user+"'";
                    ResultSet first = con.createStatement().executeQuery(order);
                    while(first.next()) {
                        String id = first.getString(2);
                        String product = "SELECT * FROM `product` WHERE `id` = '"+id+"'";
                        ResultSet rs = con.createStatement().executeQuery(product);
                        while(rs.next()) {
                        out.print("<section class='carda'>");
                        out.print("<div class='flexb'>");
                        out.print("<div class='orderproducta'><img src='"+rs.getString(2)+"'  class='product'></div>");
                        out.print("<div class='orderproductb'><p>"+rs.getString(3)+"</p></div>");
                        out.print("<div></div>");
                        out.print("<div class='orderproductc'><p>"+rs.getString(4)+"</p></div>");
                        out.print("<div></div>");
                        out.print("<div class='orderproductd'><p>"+first.getInt(4)+"</p></div>");
                        out.print("<div class='orderproducte'>");
                        out.print("<form action='return.jsp' method='POST'><button type='submit' name='orders' value='"+first.getInt(1)+"' class='loginbutton'>退貨</button></form>");
                        out.print("<a href=aboutus.jsp'><button type='button' class='loginbutton'>聯絡我們</button></a>");
                        out.print("</div></div></section>");
                        }
                    }

                con.close();
                }
                else {
                    con.close();//結束資料庫連結
                }
            }
        }
        catch (SQLException sExec) {
             out.println("SQL錯誤"+sExec.toString());
        }
    }
    catch (ClassNotFoundException err) {
        out.println("class錯誤"+err.toString());
    }
}
%>
        </article>
    </main>

    <footer>
        <h5>Copyrgiht @ 2022 All rights reserved</h5>
      </footer>
</body>
</html>