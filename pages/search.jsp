<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜尋結果</title>

    <link rel="stylesheet" href="assets/css/main.css">
    <script type="text/javascript" src="assets/js/star.js"></script>
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
<%
    String search = request.getParameter("search");
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234");
    String sql="USE album";
    con.createStatement().execute(sql);
    sql = "SELECT * FROM `product` WHERE `name` LIKE'%"+search+"%'";
    ResultSet rs = con.createStatement().executeQuery(sql);
    while(rs.next())
    {
        out.print("<article>");
        out.print("<section>");
        out.print("<div class='blank'></div>");
        out.print("<div class='procenter'><div class='pro'>");
        out.print("<img class='proimg' src='"+rs.getString(2)+"' >");
        out.print("<div class='prodetail'><div class='protext'><span>");
        out.print("<h3>"+rs.getString(3)+"</h3>");
        out.print("<h4> NT$"+rs.getInt(7)+"&nbsp; &nbsp; &nbsp; 庫存數："+rs.getInt(8)+"</h4>");
        out.print("<hr><p> 商品資訊</p>");
        out.print("<h5>"+rs.getString(9)+"</h5>");
        out.print("<div class='carreducea'>");
        out.print("<form action='product.jsp'>");
        out.print("<input type='hidden' name='gopro' value='"+rs.getString(1)+"' class='carreducecar'>");  
        out.print("<input type='submit' value='前往選購' class='carreducecar'>");
        out.print("</form>");
        out.print("</div>");
        out.print("</span>");
        out.print("</div>");
        out.print("</div>");
        out.print("</div>");
        out.print("</div>");
        out.print("</section>");
        out.print("<hr></article>");
    }
        con.close();
%>
</main>
    <footer>
        <h5>Copyrgiht @ 2022 All rights reserved</h5>
    </footer>

</body>
</html>
