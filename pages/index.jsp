<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>伍壹零唱片行</title>

    <link rel="stylesheet" href="assets/css/index.css">
    <script type="text/javascript" src="assets/js/animation.js"></script>

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
    <article>
        <section>
            <div class="blank">
            </div>
            <div class="marquee">
                <span class="text">
                    <h1>WELCOME</h1>
                </span>
<%
//輪播動畫
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
            String ad = "SELECT * FROM `ad`";
            ResultSet rs = con.createStatement().executeQuery(ad);
            while(rs.next())    
            {     
                out.print("<img src='"+rs.getString(2)+"' alt='pic1' class='marimage'>");
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
            </div>

            <div class="button">
                <a href="#popular">START</a>
            </div>
            <div id="popular">
                <div class="blank1"></div>
                <div id="container">
                    <div id="list" style="left: -900px;">
<%
//幻燈片動畫
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
            String slideshow = "SELECT * FROM `slideshow`";
            ResultSet rs = con.createStatement().executeQuery(slideshow);
            while(rs.next())    
            {     
                out.print("<img src='"+rs.getString(2)+"' alt='pic1'>");
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
                    </div>
                    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
                    <a href="javascript:;" id="next" class="arrow">&gt;</a>
                </div>
                <div class="featured">
                        <div class="featurpic">
                            <div class="shadow">
                                <h1><img src="assets/images/stars.png">&nbsp; 本周精選&nbsp; <img src="assets/images/stars.png"></h1>
                            </div>
                        </div>
                        <div class="featuredpic">
                            <div class="nk">
                                <div><img src="assets/images/that whats i like.jpeg"></div>
                                <div class="nkword">
                                    <h3>-that whats I like-</h3>
                                </div>
                                <div class="info">
                                    <form action="product.jsp" method="POST">
                                        <button type="submit" name="gopro" value="8">
                                            <span class="buy">前往選購</span>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="nk">
                                <img src="assets/images/who am i.jpg">
                                    <div class="nkword">
                                        <h3>-Am I Who I Am-</h3>
                                    </div>
                                    <div class="info">
                                        <form action="product.jsp" method="POST">
                                            <button type="submit" name="gopro" value="3">
                                                <span class="buy">前往選購</span>
                                            </button>
                                        </form>
                                    </div>
                            </div>
                           <div class="nk">
                                <img src="assets/images/celebrity.jpeg">
                                    <div class="nkword">
                                        <h3>-celebrity-</h3>
                                    </div>
                                    <div class="info">
                                        <form action="product.jsp" method="POST">
                                            <button type="submit" name="gopro" value="12">
                                                <span class="buy">前往選購</span>
                                            </button>
                                        </form>
                                    </div>
                           </div>
                           <div class="nk">
                                <img src="assets/images/yANKEE.jpeg">
                                    <div class="nkword">
                                        <h3>-YANKEE-</h3>
                                    </div>
                                    <div class="info">
                                        <form action="product.jsp" method="POST">
                                            <button type="submit" name="gopro" value="8">
                                                <span class="buy">前往選購</span>
                                            </button>
                                        </form>
                                    </div>
                           </div>
                            <div class="nk">
                                <img src="assets/images/free.jpeg">
                                    <div class="nkword">
                                        <h3>-Freedom-</h3>
                                    </div>
                                    <div class="info">
                                        <form action="product.jsp" method="POST">
                                            <button type="submit" name="gopro" value="1">
                                                <span class="buy">前往選購</span>
                                            </button>
                                        </form>
                                    </div>
                            </div>
                        </div>
                </div>
                <div class="hot">
                    <div class="hotword">
                        <h1>本月銷售排行</h1>
                    </div>
                    <div class="medel">
                        <div class="medelstyle">
                                <img class="medelmain" src="assets/images/whenever you need somebody.jpeg">
                                    <div class="infobox">
                                        <form action="product.jsp" method="POST">
                                            <button type="submit" name="gopro" value="13">
                                                <span class="buy_detail">前往選購</span>
                                            </button>
                                        </form>
                                    </div>
                            <img class="medelicon" src="assets/images/medal.png">
                        </div>
                        <div class="medelstyle">
                            <img class="medelmain" src="assets/images/spring.jpeg">
                            <div class="infobox">
                                <form action="product.jsp" method="POST">
                                    <button type="submit" name="gopro" value="5">
                                        <span class="buy_detail">前往選購</span>
                                    </button>
                                </form>
                            </div>
                            <img class="medelicon" src="assets/images/medal (2).png">
                        </div>
                        <div class="medelstyle">
                            <img class="medelmain" src="assets/images/voice.jpeg">
                            <div class="infobox">
                                <form action="product.jsp" method="POST">
                                    <button type="submit" name="gopro" value="9">
                                        <span class="buy_detail">前往選購</span>
                                    </button>
                                </form>
                            </div>
                            <img class="medelicon" src="assets/images/medal (1).png">
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>
</main>
<footer>
    <h5>Copyrgiht @ 2022 All rights reserved</h5>
<%
//計數器
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {
//Step 3: 選擇資料庫	        
			String sql="USE `album`";
			con.createStatement().execute(sql);
			sql = "SELECT * FROM `counter`";
			ResultSet rs = con.createStatement().executeQuery(sql);
			if(rs.next())
			{
			   String countString = rs.getString(1);
			   Integer count = Integer.parseInt(countString);
			   if(session.isNew())
			   {
				   count = count+1;
				   countString = String.valueOf(count);
				   sql = "UPDATE `counter` SET `count` = " + countString;
				   con.createStatement().execute(sql);
			   }
			  out.print("<h5>瀏覽人數："+ count +"</h5>"); 
		   }  
        }
//Step 6: 關閉連線
        con.close();
    }
    catch (SQLException sExec) {
        out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>
  </footer>
</body>
</html>