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
	.inline
	{
		display:inline
	}
	.inline b
	{
		display:inline;
		color:white;
		opacity:0.6;
	}
	.temp
	{
	color:white;
	opacity:0.6;
	}
	.temp a
	{
		color:white;
		opacity:1;
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
<title>Information</title>
</head>
<body style="background-image:url(img/back.jpg); ">
<ul>
<h2><li><div class=menu><a href="index.jsp" >Home</a></div></li></h2>
<h2><li><div class=menu><a href= showall >Book Gallery</a></div></li></h2>
<h2><li><div class=menu><a href="showauthor">Author Gallery</a></div></li></h2>
</ul>
	<div class=center2>
    <h1 class=temp>
        <s:property value="username" />详细信息
    </h1>
<table border="1" align="center" class=temp>
<tr>
    <td>编号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>国家</td>
<tr>
    <%List<String> list0 = (List<String>)session.getAttribute("list0");
    for (int i = 0; i < list0.size(); i++) {
  out.print("<td align=\"center\">"+list0.get(i)+"</td>");
} %>
</tr>
</table>
<h1 class=temp>书籍详细信息</h1>
<table border="1" align="center" class=temp>
<tr>
    <td>ISBN</td>
    <td>书名</td>
    <td>作者姓名</td>
    <td>作者编号</td>
    <td>出版社</td>
    <td>出版日期</td>
    <td>价格</td>
    <td>修改</td>
    <td>删除</td>
<tr>
    <%List<String> list = (List<String>)session.getAttribute("list");
    for (int i = 0; i < list.size(); i+=6) {
  out.print("<td align=\"center\">"+list.get(i)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+1)+"</td>");
  out.print("<td align=\"center\">"+list0.get(1)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+2)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+3)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+4)+"</td>");
  out.print("<td align=\"center\">"+list.get(i+5)+"</td>");
  out.print("<td align=\"center\"><a href=Gotoedit?isbn="+list.get(i)+">修改</a></td>");
  out.print("<td align=\"center\"><a href=Delete?isbn="+list.get(i)+">删除</a></td>");
} %>
</tr>
</table>
<center><a href=Search?username=<%out.print(list0.get(1)); %>><button type="button" style="background:transparent;color:white">返回</button></a></center>
</div>
</body>
</html>