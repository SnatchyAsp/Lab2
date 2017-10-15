<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
　　 <style type="text/css">
　　ul
	{

	margin:0;
	padding:0;
	overflow:hidden;
	list-style-position:inside;
	}
	li
	{
	float:left;
	list-style-type:none;
	}
	.menu a:link
	{
	display:block;
	width:320px;
	font-weight:bold;
	color:white;
	
	text-align:center;
	padding:4px;
	text-decoration:none;
	text-transform:uppercase;
	opacity:0.1;
	}
	.menu a:visited
	{
	display:block;
	width:320px;
	font-weight:bold;
	color:white;
	
	text-align:center;
	padding:4px;
	text-decoration:none;
	text-transform:uppercase;
	opacity:0.1;
	}
	.menu a:hover
	{
		font-size:130%;
		opacity:0.5
	}
	.menu a:active
	{
		font-size:130%;
		opacity:0.5
	}
	div.type1
	{
		opacity:0.4;
	    color:white;
	}


	.add a:link
	{
	display:block;
	width:350px;
	font-weight:bold;
	color:white;
	
	text-align:center;
	padding:4px;
	text-decoration:underline;
	text-transform:uppercase;
	opacity:0.4;
	}
	.add a:visited
	{
	display:block;
	width:350px;
	font-weight:bold;
	color:white;
	
	text-align:center;
	padding:4px;
	text-decoration:underline;
	text-transform:uppercase;
	opacity:0.4;
	}
	.add a:hover
	{
		font-size:150%;
		opacity:0.6;
		text-decoration:underline;
	}
	.add a:active
	{
		font-size:150%;
		opacity:0.6;
		text-decoration:underline;
	}
	.text0
	{
		color:white;
		opacity:0.6;
	}
.center2{
    position: absolute;
    top: calc(30% - 50px);
    left: calc(30% - 150px);
    width: 800px;
    height: 100px;

}

　　
　　 </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/base.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/button.css" media="screen">
<title>Author Gallery</title>
</head>
<body style="background-image:url(img/back.jpg); ">
<ul>
<h2><li><div class=menu><a href="index.jsp" >Home</a></div></li></h2>
<h2><li><div class=menu><a href= showall >Book Gallery</a></div></li></h2>
<h2><li><div class=menu><a href="showauthor">Author Gallery</a></div></li></h2>
</ul>
    <center>
  
  <div class=center2>
 
  <table class=text0 border="1">
  <tr>
    <td>编号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>国家</td>

<tr>
  <tbody>
<%List<String> list = (List<String>)session.getAttribute("listauthor");
						for (int i = 0; i < list.size(); i+=4) 
						{
							out.print("<tr class='success'>");
						  	out.print("<td>"+list.get(i)+"</td>");
						  	out.print("<td>"+list.get(i+1)+"</td>");
						 	 out.print("<td>"+list.get(i+2)+"</td>");
						 	 out.print("<td>"+list.get(i+3)+"</td>");
						 	 out.print("</tr> ");
						}
						 %>
 </tbody> </table></div>
  
  
    
    </center>	  		
	
</body>
</html>