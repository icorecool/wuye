<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<style type="text/css"> 
 .r1{
 
	   display: flex;
    justify-content:center;
    align-items:Center;
 }
  .r2{
	 float:left;
	 height:30px;
	 width:100px;
	  background-color: #87CEEB;
	   display: flex;
	   justify-content: center;/*水平居中*/
align-items:center;/*垂直居中*/

	   
  }
  .r222{
	 float:left;
	 height:30px;
	 width:200px;
	  background-color: #87CEEB;
	   display: flex;
	   justify-content: center;/*水平居中*/
align-items:center;/*垂直居中*/

	   
  }
  .r22
  {
	 float:left;
	 height:30px;
	 width:100px;
	 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
  }
   
  
  .r3{
	   position: relative;
	   top:20px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r4{
  position:relative;
  float:left;
  margin-left:150rpx;
  width:150px;
   
   
  }
  .r5{ position: relative;
	   top:50px;
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r6{ position: relative;
	  margin-top:20px;
	   
	   display: flex;
    justify-content:center;
    align-items:Center;
  }
   .r8
  {
	   
	  
	  color: blue;
  }
  .r9
  {
	   
	  color: red;
  }
    .tongji
  {
	  width:900px;
	  margin-top: 30px;
	  margin-left: 30px;
 background-color: #AFEEEE;
	  display: flex;
	   justify-content: center;/*水平居中*/
	   align-items:center;/*垂直居中*/
	  
  }
</style>
<body  >

<%
      try
	  {
		  Class.forName("com.mysql.jdbc.Driver");
		  
	  }
	  catch(Exception e)
	  {
		  out.print(e);
	  }
	  
	  try
	  {
		  String url="jdbc:mysql://localhost:3306/wuye";
		  String user="root";
		  String pwd="123456";
		  Connection con=DriverManager.getConnection(url,user,pwd);
		 String num= request.getParameter("num");
	  	  Statement sql = con.createStatement();
          ResultSet rs = sql.executeQuery("select * from dangan where num = ' "+num+"';");
		   int s=0;
		   %>
		   <div>
		<div class='r1'>
		    <p class='r2'>户主姓名</p>
			<p class='r22'>性别</p>
			<p class='r2'>户主电话</p>
			<p class='r22'>户主账号</p>
			<p class='r222'>身份证号</p>
			<p class='r22'>门牌号</p> 
			<p class='r2'>操作</p>
		   </div>
	<script type="text/javascript">

		//删除

		function deleteJobDetail(){
     if(window.confirm('你确定要删除吗')){
          //后台删除数据方法
           return true;
      }else{
          return false;
      }
  }
</script>
		   <%int tongji=0;
		  while(rs.next())
		  {
			  tongji=tongji+1;   %>
			  <div class='r3'>
			  <p class='r2'>
			  <%out.print(rs.getString("name"));%></p>
			  <p class='r22'>
			  <% out.print(rs.getString("sex"));%></p>
			  <p class='r2'>
			  <%out.print(rs.getString("tel"));%></p>
			  <p class='r22'>
			  <%out.print(rs.getString("id"));%></p>
			  <p class='r222'>
			  <%out.print(rs.getString("idCard"));%></p>
			  <p class='r22'>
			  <%out.print(rs.getString("num"));%></p>
			 
			  <p class='r2'><a Class='r8' href='inupdate.jsp?num=<%=rs.getString("num")%>&sex=<%=rs.getString("sex")%>&tel=<%=rs.getString("tel")%>&id=<%=rs.getString("id")%>&idCard=<%=rs.getString("idCard")%>&num=<%=rs.getString("num")%>'>修改</a> 
			  <a Class='r9' href='delete.jsp?num=<%=rs.getString("num")%>' onclick="deleteJobDetail()">删除</a> </p>
			  </div>
			 <%
		   }%>
		  
 
		   </div> <div class='tongji'>总计<%=tongji%>条记录</div>
<%
	  }
	  catch (SQLException e) {
      out.print(e);
  }
%>

</body>
</html>
