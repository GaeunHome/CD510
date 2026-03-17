<%@page import = "java.sql.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>	

<html>
<head>
<title>產品修改</title>
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
			   out.print("<script>alert('修改失敗！圖片路徑不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(name=="")
		   {
            out.print("<script>alert('修改失敗！產品名稱不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(singer=="")
		   {
                out.print("<script>alert('修改失敗！唱片歌手不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
           if(singer_img=="")
		   {
                out.print("<script>alert('修改失敗！歌手圖片不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(singer_intro=="")
		   {
            out.print("<script>alert('修改失敗！歌手簡介不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(price=="")
		   {
            out.print("<script>alert('修改失敗！產品價格不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(amount=="")
		   {
                out.print("<script>alert('修改失敗！產品庫存不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(introduce=="")
		   {
                out.print("<script>alert('修改失敗！產品介紹不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(kind=="")
		   {
                out.print("<script>alert('修改失敗！類別不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(company=="")
		   {
                out.print("<script>alert('修改失敗！唱片公司不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }
		   if(pubtime=="")
		   {
                out.print("<script>alert('修改失敗！發片時間不能為空!請重新輸入');location.href='back_reset.jsp'</script>");
			   return;
		   }

           Class.forName("com.mysql.jdbc.Driver");
           String url="jdbc:mysql://localhost/?serverTimezone=UTC";
           Connection con=DriverManager.getConnection(url,"root","1234");
           String sql="use album";
           con.createStatement().execute(sql);

           String sql1 = "UPDATE `product` SET `img`='"+img+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql1); 
		   String sql2 = "UPDATE `product` SET `name`='"+name+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql2);
	       String sql3 = "UPDATE `product` SET `singer`='"+singer+"' WHERE`name`='"+name+"'";
	       con.createStatement().execute(sql3);
		   String sql4 = "UPDATE `product` SET `singer_img`='"+singer_img+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql4); 
		   String sql5 = "UPDATE `product` SET `singer_intro`='"+singer_intro+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql5);
		   String sql7 = "UPDATE `product` SET `price`='"+price+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql7); 
		   String sql8 = "UPDATE `product` SET `amount`='"+amount+"' WHERE`name`='"+name+"'"; 
           con.createStatement().execute(sql8);
	       String sql9 = "UPDATE `product` SET `introduction`='"+introduce+"' WHERE`name`='"+name+"'";
	       con.createStatement().execute(sql9);
		   String sql10 = "UPDATE `product` SET `kind`='"+kind+"' WHERE `name`='"+name+"'";
	       con.createStatement().execute(sql10);
		   String sql11 = "UPDATE `product` SET `company`='"+company+"' WHERE `name`='"+name+"'";
	       con.createStatement().execute(sql11);
		   String sql12 = "UPDATE `product` SET `pubtime`='"+pubtime+"' WHERE `name`='"+name+"'";
	       con.createStatement().execute(sql12);
		   
	       
           out.print("<script>alert('修改成功');location.href='back_reset.jsp'</script>");
		   
		   con.close();
%>

</body>
</html>