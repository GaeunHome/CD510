<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>產品</title>
    <link rel="stylesheet" href="assets/css/main.css">
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
<%
String pro_id = request.getParameter("gopro");
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
        {
//Step 3: 選擇資料庫
            String sql = "USE album";
            con.createStatement().execute(sql);      

            sql = "SELECT * FROM `product` WHERE `id` = '"+pro_id+"'";
            ResultSet rs = con.createStatement().executeQuery(sql);
            
            rs.next();
            out.print("<section>");
            out.print("<div class='blank'></div>");
            out.print("<div class='procenter'>");
            out.print("<div class='pro'>");
            out.print("<img class='proimg' src='"+rs.getString(2)+"'>");
            out.print("<div class='prodetail'>");
            out.print("<div class='protext'>");
            out.print("<span>");
            out.print("<h3>"+rs.getString(3)+"</h3>");
            out.print("<h4> NT$"+rs.getInt(7)+"&nbsp; &nbsp; &nbsp; 庫存數："+rs.getInt(8)+"</h4>");
            out.print("<hr><p>商品資訊</p>");
            out.print("<h5>"+rs.getString(9)+"</h5>");
            out.print("<div class='carreducea'>");
            out.print("<p>購買數量：</p>");
            out.print("<form action='addtocar.jsp' method='POST'>");
            out.print("<input type='number' value='1' min='1' name='count' class='num'>");
            out.print("<input type='hidden' name='pro_id' value='"+pro_id+"'>");
            out.print("<button type='submit' class='carreducecar'>加入購物車</button>");
            out.print("</form>");
            out.print("</div>");
            out.print("</span>");
            out.print("</div>");
            out.print("</div>");
            out.print("</div>");
            out.print("</div>");
            out.print("</section>");
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

        <hr>
        <section>
            <div class="content">
                <div class="contentblock">
                  <div class="con">
                      <span>
                          <h2>評論區</h2>
                      </span>
                      <hr>
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
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet
            String comm = request.getParameter("gopro");
            sql="SELECT * FROM `message` WHERE `id` = '"+pro_id+"'"; //算出共幾筆留言
            ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
            rs.last();
            int total_content = rs.getRow();
//Step 5: 顯示結果

            sql = "SELECT * FROM `message` WHERE `id` = '"+pro_id+"' ORDER BY `message_id` DESC";
            rs = con.createStatement().executeQuery(sql);
            while(rs.next()){
                    out.print("<div class='condetail'>");
                    out.print("<img class='conimg' src='assets/images/person.png'>");
                    out.print("<span><div class='flexblock'><h3>"+rs.getString(3)+"</h3><p>"+rs.getString(4)+"</p></div>");
                    out.print("<div class='star'><img  class='default' src='assets/images/star.png'><img  class='default' src='assets/images/star.png' ><img  class='default' src='assets/images/star.png' ><img  class='default' src='assets/images/star.png' ><img  class='default' src='assets/images/star.png' ></div>");
                    out.print("<h4>"+rs.getString(5)+"</h4></span></div><hr>");
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
                        
                        <div class="condetail1">
                            <form action="add.jsp" method="POST">
                                <input class="namebar" name="namebar" type="text" placeholder="請輸入名稱">
                                <div id="stars" class="star1">
                                    <img class="default" src="assets/images/star2.png" >
                                    <img class="default" src="assets/images/star2.png" >
                                    <img class="default" src="assets/images/star2.png" >
                                    <img class="default" src="assets/images/star2.png" >
                                    <img class="default" src="assets/images/star2.png" >
                                </div>  
                                <div class="submit"><textarea name="content" class="area" cols="80" rows="5"></textarea></div>
                                <input type="hidden" name="com" value="<%=pro_id%>">
                                <button type="submit" class="btn" >送出</button>
                                <button type="reset" class="btn" >重填</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </article>
</main>
    <footer>
    <h5>Copyrgiht @ 2022 All rights reserved</h5>
    </footer>
    <script type="text/javascript" src="assets/js/star.js"></script>

</body>
</html>