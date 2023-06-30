<%@page import = "java.sql.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>	

<html>
<head>
<title>產品新增</title>
</head>
<body>
<%          
			String img = request.getParameter("img");
			String name = request.getParameter("name");
			String singer = request.getParameter("singer");
			String singer_img = request.getParameter("singer_img");
			String singer_intro = request.getParameter("singer_intro");
			String price = request.getParameter("price");
			String amount = request.getParameter("amount");
			String introduce = request.getParameter("introduction");
			String kind = request.getParameter("kind");
			String company = request.getParameter("company");
			String pubtime = request.getParameter("pubtime");
			
			if(img=="")
			{
				out.print("<script>alert('新增失敗！圖片路徑不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(name=="")
			{
			 out.print("<script>alert('新增失敗！產品名稱不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(singer=="")
			{
				 out.print("<script>alert('新增失敗！唱片歌手不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(singer_img=="")
			{
				 out.print("<script>alert('新增失敗！歌手圖片不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(singer_intro=="")
			{
			 out.print("<script>alert('修改失敗！歌手簡介不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(price=="")
			{
			 out.print("<script>alert('修改失敗！產品價格不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(amount=="")
			{
				 out.print("<script>alert('修改失敗！產品庫存不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(introduce=="")
			{
				 out.print("<script>alert('修改失敗！產品介紹不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(kind=="")
			{
				 out.print("<script>alert('修改失敗！類別不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(company=="")
			{
				 out.print("<script>alert('修改失敗！唱片公司不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
			if(pubtime=="")
			{
				 out.print("<script>alert('修改失敗！發片時間不能為空!請重新輸入');location.href='back_new.jsp'</script>");
				return;
			}
	
           Class.forName("com.mysql.jdbc.Driver");
           String url="jdbc:mysql://localhost:3306/?serverTimezone=UTC";
           Connection con=DriverManager.getConnection(url,"root","1234");
           String sql="USE album";
           con.createStatement().execute(sql);
           String sql1 ="INSERT INTO `product`(`img`,`name`,`singer`,`singer_img`,`singer_intro`,`price`,`amount`,`introduction`,`kind`,`company`,`pubtime`)"+"values('"+img+"','"+name+"','"+singer+"','"+singer_img+"','"+singer_intro+"','"+price+"','"+amount+"','"+introduce+"','"+kind+"','"+company+"','"+pubtime+"')"; 
           con.createStatement().executeUpdate(sql1);
           out.print("<script>alert('新增成功');location.href='back_new.jsp'</script>");
       
		   con.close();
%>

</body>
</html>