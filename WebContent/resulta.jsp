<%@ page contentType="text/html; charset=UTF-8" import="java.util.LinkedList,java.util.List"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		font-size:100%;
		opacity:0.6;
		text-decoration:underline;
	}
	.add a:active
	{
		font-size:100%;
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
</head>
<title>Books</title>
<body style="background-image:url(img/back.jpg); ">
<ul>
<h2><li><div class=menu><a href="index.jsp" >Home</a></div></li></h2>
<h2><li><div class=menu><a href= showall >Book Gallery</a></div></li></h2>
<h2><li><div class=menu><a href="showauthor">Author Gallery</a></div></li></h2>
</ul>
    
    <center>
    <div class=center2>
	<div class=text0 style="text-align:center">
    <h2>
        <s:property value="username" />作品：
    </h2>
    
    <center>书籍名称</center>
   
<ul class=add>
	
    <%List<String> list = (List<String>)session.getAttribute("list");
    String username = (String)session.getAttribute("username");
    for (int i = 0; i < list.size(); i++) {
    	out.print("<a href=Detail?title="+list.get(i)+"&username="+username+">"+list.get(i));
} %>
</ul>
    </div>
     </div>
    </center>
</body>

</html>