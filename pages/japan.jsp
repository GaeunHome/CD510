<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>日語專輯</title>
    <link rel="stylesheet" href="assets/css/jalbum.css">
</head>
<body>
    <header class="navFixed" >
        <div>
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
                            <li><%@ include file="issignin.jsp" %></a></li>
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
        <article>
            <section>
                <div class="blank">
                </div>
                <div class="chinese">
                    <div class="event-title">
                        <span>日語專區</span>
                        <div class="event-titlee">                        
                             <span>日語專區</span>
                        </div>
                    </div>
                </div>
            </section>
            <section>
            <div class="blank">
                <span class="product_title">商品介紹</span>
                <hr> 
            </div>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
            sql="USE `album`";
            con.createStatement().execute(sql);
            String kinds = "日語";
            String a = "SELECT DISTINCT `singer`,`singer_intro`,`singer_img` FROM `product` WHERE `kind` ='"+kinds+"'";
            ResultSet b = con.createStatement().executeQuery(a);
            while(b.next()){
                String product2 = "SELECT * FROM `product` WHERE `singer` = '"+b.getString(1)+"'";
                ResultSet rs2 = con.createStatement().executeQuery(product2);
                out.print("<div class='product_detail'>");
                    out.print("<img class='product_picture' src='"+b.getString(3)+"'>");
                    out.print("<div class='product_text'>");
                    out.print("<span><h1>"+b.getString(1)+"</h1></span>");
                    out.print("<p>"+b.getString(2)+"</p>");
                    out.print("</div>");
                    out.print("<div class='product_album'>");
                while(rs2.next())
                {
                    out.print("<div class='medelstyle'>"); 
                    out.print("<img src='"+rs2.getString(2)+"'>");
                    out.print("<div class='infobox'>");
                    out.print("<span>");
                    out.print("<h3>"+rs2.getString(3)+"</h3>");
                    out.print("<p>唱片公司："+rs2.getString(11)+"</p>");
                    out.print("<p>發行時間："+rs2.getString(12)+"</p>");
                    out.print("<p>價格：$"+rs2.getInt(7)+"</p>");
                    out.print("<form action='product.jsp' method='POST'>");
                    out.print("<button type='submit' name='gopro' value='"+rs2.getString(1)+"'>");
                    out.print("<p class='buy_detail'>前往選購</p>");
                    out.print("</button></form></span></div></div>");
                }
                out.print("</div>");
                out.print("</div><hr>");
            }

            
//Step 6: 關閉連線
            con.close();
        }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+err.toString());
}



%>             
            </section>
        </article>
    </main>

    <footer>
        <h5>Copyrgiht @ 2022 All rights reserved</h5>
      </footer>
</body>
</html>