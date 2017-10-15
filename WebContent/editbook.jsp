<%@ page contentType="text/html; charset=UTF-8"
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
</head>
<title>Editbook</title>
<body style="background-image:url(img/back.jpg); ">
<ul>
<h2><li><div class=menu><a href="index.jsp" >Home</a></div></li></h2>
<h2><li><div class=menu><a href= showall >Book Gallery</a></div></li></h2>
<h2><li><div class=menu><a href="showauthor">Author Gallery</a></div></li></h2>
</ul>
    
    <center>
    <div class=center2>
    <s:form action="Edit" theme="simple">
    	<div class=type1><h1>修改信息</h1></div>
    	
        <div class=text0>ISBN     <s:textfield name="isbn" label="ISBN" readonly="true"/></div>
        <div class=text0>作家名      <s:textfield name="name" label="作家名"/></div>
        <div class=text0>出版社      <s:textfield name="publisher" label="出版社"/></div>
        <div class=text0>出版日期  <s:textfield name="publishdate" label="出版日期"/></div>
        <div class=text0>价格         <s:textfield name="price" label="价格"/></div>
        <div class=text0><s:submit value="修改" cssStyle="text-decoration :underline;background:transparent;color:white;opacity:0.6"/>
    </s:form>
    </div>
    </center>
</body>
</html>