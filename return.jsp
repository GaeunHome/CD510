<%@page import = "java.sql.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>	

<html>
<head>
<title>刪除產品</title>
</head>
<body>
<%
            Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/?serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","1234");
			String sql="USE album";
			con.createStatement().execute(sql);
			String orid  = request.getParameter("orders");
			sql = "SELECT * FROM `orders` WHERE `order_id`='"+orid+"'";
			ResultSet rs = con.createStatement().executeQuery(sql);
			while(rs.next()){
				sql = "INSERT `returns`(`id`,`good_id`,`vip_id`,`count`)"+"VALUE('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getInt(4)+"')";
				con.createStatement().executeUpdate(sql);
			}
			sql = "DELETE FROM `orders` WHERE `order_id`='"+orid+"'";
		    con.createStatement().executeUpdate(sql);
            con.close();
			out.print("<script>alert('退貨成功！');location.href='order.jsp'</script>");
		   
%>
</body>
</html>