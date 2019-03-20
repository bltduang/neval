<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>免费小说全文阅读-存书斋</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="Cache-Control" content="no-transform" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" media="screen" /> 
	<link href="/css/style.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<!--[if IE 7]>
		<link rel="stylesheet" href="css/font-awesome-ie7.min.css">
	<![endif]-->
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
</head>
<body>
<!--360-->


<!--header-->
<div id="header">
	<div class="head">
		<div class="logo"><a href="/" title="存书斋">存书斋</a></div>
		
	</div>
	<div class="menu">
		<div class="location">
			<p>
				<a href="/" class="curr">首页</a>
				<a href="/category/16/1">玄幻</a>
				<a href="/category/449/1">言情</a>
				<a href="/category/450/1">都市</a>
				<a href="/category/43/1">古言</a>
				<a href="/category/40/1">校园</a>
				<a href="/category/53/1">仙侠</a>
				<a href="/category/0/1">其他</a>
			</p>
			
		</div>
	</div>
</div>
<!--/header-->
<div id="main">
    <div class="box" id="content">
        <div class="title">
            <a href="/"><i class="icon-home"></i> 存书斋</a> &gt; ${bookActicle.category } &gt; <a href="/details/${bookActicle.bookid }">${bookActicle.booktitle }</a> &gt;  ${bookActicle.title }
        </div>
		<div class="nc_l" id="jsnc_l">
			<div class="wrapper_main">
				<div class="h1title">
					<h1> ${bookActicle.title }</h1>
				</div>
				<div class="chapter_Turnpage_1">
					<a href="/read/${bookActicle.syz }" class='pre pager_prev'><i class="icon-chevron-left"></i> 上一章</a>
					<a href="/details/${bookActicle.bookid }" class="back pager_current"><i class="icon-list"></i> 目 录</a>
					<a href="/read/${bookActicle.xyz }" class='next pager_next'><i class="icon-chevron-right"></i> 下一章</a>
				</div>
			 
				<div id="htmlContent" class="contentbox clear">
&nbsp;&nbsp;&nbsp;&nbsp;
${bookContent.content }
				</div>
				<div class="chapter_Turnpage">
					<a href="/read/${bookActicle.syz }" class='pre pager_prev'><i class="icon-chevron-left"></i> 上一章</a>
					<a href="/details/${bookActicle.bookid }"><i class="icon-list"></i> 目录</a>
					<a href="/read/${bookActicle.xyz }" class='next pager_next'><i class="icon-chevron-right"></i> 下一章</a>
				</div>
				<hr>

			</div>
		</div>
	</div>
</div>
<!--版权信息-->
<div id="footer">
	<p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
<p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
</div>

</body>
</html>