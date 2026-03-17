<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/aboutus.css">
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
                                <li><a href="english.jsp">歐美專輯</a></li>
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
        <div class="blank"></div>
        <div class="aboutusa">
            <div class="aboutusa1"><p>設計理念</p></div><hr>
            <div class="aboutusa2"><p>本專案主題為唱片行購物頁面，並命名為「伍壹零」唱片行，<br>會我們從中、日、韓及歐美的眾多專輯中挑選出最推薦的精選專輯進行販售，<br>希望透過這個網站，挑選出我們喜歡的音樂，跟大家分享，<br>而商店名字會取作「伍壹零」除了引用了同學名字外，也希望帶出復古且悠閒的感受，<br>希望客人能在傍晚五點十刻，放慢生活步調，享受音樂的美好。</p></div>

            <div class="aboutusa1"><p>官網特色</p></div><hr>
            <div class="aboutusa2"><p>現代音樂百百種，有主流、有獨立，而每個人喜好不同，<br>我們希望本平台如同選貨店一樣，我們的平台不一定推薦最新的專輯，也並非一定主流，<br>只推薦我們或者一樣熱愛音樂的人跟我們分享的好音樂，並且網站色調以米色及黑灰色為主，<br>撇除以往背景都以白色為主的官網，希望帶出唱片行的復古感，有一種「好音樂被收藏」的意象，而頁面也</p></div>
        </div>
<%
//組員介紹
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
            String member = "SELECT * FROM `member`";
            ResultSet rs = con.createStatement().executeQuery(member);

            out.print("<div class='aboutusb'>");
            out.print("<div class='aboutusb1'><p>關於我們</p></div>");
            out.print("<hr>");
            out.print("<div class='aboutusb2'>");
            out.print("<div class='peoplea'>");   
            while(rs.next())    
            {     
                out.print("<div class='people'>");
                out.print("<div class='peopletxt'>");
                out.print("<h1>"+rs.getString(2)+"</h1>");
                out.print("<hr>");
                out.print(rs.getString(4));
                out.print("<div class='callmeb'>");
                out.print("<div class='fb'>");
                out.print("<a href='"+rs.getString(5)+"'>");
                out.print("<img src='assets/images/FB.png'></a>");
                out.print("</div>");
                out.print("<div class='ig'>");
                out.print("<a href='"+rs.getString(6)+"'>");
                out.print("<img src='assets/images/IG.png'></a>");
                out.print("</div>");        
                out.print("</div>");
                out.print("</div>");
                out.print("<div>");
                out.print("<img src='"+rs.getString(3)+"' width='400'  class='peoplepic'>");
                out.print("</div>");
                out.print("</div>");
            }
            out.print("</div>");
            out.print("</div>");
            out.print("</div>");

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
        <div class="content">
            <div class="contentblock">
                <div class="con">
                <span>
                    <h2>聯絡我們</h2>
                </span>
                <hr>
                <div class="condetail">
                        <div class="condetail1">
                        <form action="add2.jsp" method="POST">
                            <input class="namebar" name="name" type="text" placeholder="請輸入名稱">
                            <input class="namebar" name="email" type="email" placeholder="請輸入電子信箱">
                            <div class="submit">
                                <textarea class="area" name="content" cols="80" rows="8" placeholder="請輸入您的反饋意見" ></textarea>
                            </div>
                                <button type="submit" class="btn">送出</button>
                                <button type="reset" class="btn">重填</button>
                            </div>
                        </form>
                        <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d231375.19613942225!2d121.3354437698069!3d25.026014967747383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442a8dece18115d%3A0x6e42f875d56fe1bb!2zNTEwIOmfs-aogumFkkJBUi_po5vpj6LphZLlkKcv6Z-z5qiC5bCP6YWS6aSoL-mfs-aogumkkOW7sw!5e0!3m2!1szh-TW!2stw!4v1655040761286!5m2!1szh-TW!2stw" width="600" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <h5>Copyrgiht @ 2022 All rights reserved</h5>

      </footer>
</body>
</html>