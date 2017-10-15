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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/base.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/button.css" media="screen">
<title>Addauthor</title>
</head>
<body style="background-image:url(img/back.jpg); ">
<h2><li><div class=menu><a href="index.jsp" >Home</a></div></li></h2>
<h2><li><div class=menu><a href= showall >Book Gallery</a></div></li></h2>
<h2><li><div class=menu><a href="showauthor">Author Gallery</a></div></li></h2>
</ul>
    
    <center>
    <div class=center2>
    <s:form action="Addauthor" theme="simple">
    	<div class=type1><h1>作家不存在</h1></div>
    	<div class=type1><h1>请先添加作家</h1></div>
    	
        <div class=text0>ISBN     <s:textfield name="isbn" label="ISBN" /></div>
        <div class=text0>编号      <s:textfield name="authorid" label="编号" readonly="true"/></div>
        <div class=text0>作家名      <s:textfield name="name" label="作家名" readonly="true"/></div>
        <div class=text0>年龄  <s:textfield name="age" label="年龄"/></div>
        <div class=text0>国籍         <s:textfield name="country" label="国籍"/></div>
        <div class=text0><s:submit value="添加" cssStyle="text-decoration :underline;background:transparent;color:white;opacity:0.6"/>
    </s:form>
    </div>
    </center>

</body>
</html>