<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="stylesheet" href="assets/css/member.css">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/car.css">
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
        <div class="blanka">
        </div>
        <div class="flexa">
            <div></div>
            <div class="cartitlea" ><p>商品</p></div>
            <div></div> 
            <div class="cartitleb"><p>商品名稱</p></div>
            <div></div> <div></div>
            <div class="cartitlec"><p>歌手</p></div>
            <div></div>  <div></div> 
            <div class="cartitled"><p>數量</p></div>
            <div></div>
            <div class="cartitlee"><p>單價</p></div>
            <div></div>  <div></div>
            <div class="cartitlef"><p>功能</p></div>
            <div></div>
        </div><hr>
<%request.setCharacterEncoding("utf-8");%>
<%
if(session.getAttribute("username")==null){
    out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
}
else{
    try {
        int t = 0;
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
					String getuser = "";
					Object ob_get_user = session.getAttribute("username");                    
                    String car = "SELECT * FROM `car` WHERE `mem_id` ='"+ob_get_user+"'";
                    ResultSet first = con.createStatement().executeQuery(car);
                    String product = "SELECT * FROM `product`"; 
                    ResultSet rs = con.createStatement().executeQuery(car);
                    while(first.next()){
                        try {
                            String pro_id = first.getString(1);
                            String count = first.getString(3);
                            product = "SELECT * FROM `product` WHERE `id` = '"+pro_id+"'";
                            rs = con.createStatement().executeQuery(product);
                            while(rs.next()){
                                String img = rs.getString(2);
                                String name = rs.getString(3);
                                String singer = rs.getString(4);
                                int price = rs.getInt(7);
                                int buy_count = Integer.parseInt(count);
                                int total = price*buy_count;
                                t += total;

                                out.print("<article>");
                                out.print("<section class='carda'>");
                                out.print("<div class='flexb'>");
                                out.print("<div class='cartitlea'><img src='"+img+"' class='product'></div>");
                                out.print("<div class='cartitleb'><p>"+name+"</p></div>");
                                out.print("<div></div>");
                                out.print("<div class='cartitlec'><p>"+singer+"</p></div>");
                                out.print("<div></div>");
                                out.print("<div class='carreducea'>");
                                out.print("<input type='number' name='buy' min='1' value='"+buy_count+"'>");
                                out.print("</div>");
                                out.print("<div class='cartitlee'><p>"+price+"</p></div>");
                                out.print("<div class='cartitlef'>");
                                out.print("<form action='shopcar_drop.jsp' method='POST'>");
                                out.print("<button type='submit' class='loginbutton' name='cancel' value='"+pro_id+"'>取消</button>");
                                out.print("</form>");
                                out.print("</div></div></section></article>");
                            }
                        }
                        catch(Exception e)
                        {
                            out.print("<script>alert('無消費紀錄');window.location='index.jsp'</script>");
                            out.println(e);
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
%>
        <div class="carlast">
            <div class="total">
                <div class="totala"><p>總計</p></div>
                <div class="totalb"><p><%=t%></p></div>
                <div class="totalc"><p>元</p></div>
            </div>
<%
    }
    catch (ClassNotFoundException err) {
        out.println("class錯誤"+err.toString());
    }
}
%>
            <hr>
            <form action="buy.jsp" method="POST">
                <div class="shoppingfee">
                    <h2>付款方式</h2>
                    <ul>
                        <li>
                            <input type="radio" id="pay1" name="pay" value="超商/貨到付款" class="sho">
                            <label for="pay1">超商/貨到付款</label>
                        </li>
                        <li>
                            <input type="radio" id="pay2" name="pay" value="超商/貨到付款" class="sho">
                            <label for="pay2">宅配到府/貨到付款</label>
                        </li>
                    </ul>
                </div>
                <br>
                <div class="shoppingfee">
                    <h2>送貨地址</h2>
                    <input type="text" class="local" name="local" size="100" placeholder="請輸入送貨地址">
                </div>
                <div class="carlasta">
                    <div class="carlastb"> 
                        <a href="index.jsp">
                            <button type="button" class="loginbutton">繼續逛逛</button>
                        </a> 
                        <div class="carlastb"> 
                            <button type="submit" class="loginbutton">下單</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </main>

    <footer>
        <h5>Copyrgiht @ 2022 All rights reserved</h5>
    </footer>
</body>
</html>