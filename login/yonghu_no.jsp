<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<style>
	    .main{
	            text-align:center;
	            position: absolute;
	            left:50%;
	            top:50%;
	            transform:translate(-50%,-50%);
	         }
    </style>
</head>
<body>
	<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">  
	<img src="2.jpg" height="100%" width="100%" left:0; top:0;/>  
	</div>
<div style="white-space: pre-wrap;">
	 <marquee behavior="scroll" direction="left" >

        通知：
<% 
    try
	  {
		   String text= request.getParameter("txt");
           out.println(text);
	  }
	  catch (Exception e) {
      out.print(e);
    }
    
%>
    </marquee></div>
    <div style="white-space: pre-wrap;">
<div class="main">
<% 
    try
	  {
		   String text= request.getParameter("txt");
           out.println(text);
	  }
	  catch (Exception e) {
      out.print(e);
    }
    
%>
</div>
    </div>
</body>
</html>
