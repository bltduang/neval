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
    <div class="box">
        <div class="title">
            <a href="/"><i class="icon-home"></i> 存书斋</a> &gt; ${bookClassify.category } &gt; ${bookClassify.title }
        </div>
        <div class="book_info">
            <div class='pic'><img alt="${bookClassify.title }" src="${bookClassify.imgurl }" title="${bookClassify.title }"  width="140" height="180" /><span class="a"></span></div>
            <div id="info">
                <h1>${bookClassify.title }</h1>
                <div class="options">
                    <span class="item red"><i class="icon-user"></i> ${bookClassify.author }</span>
                    <jsp:useBean id="dateValue" class="java.util.Date"/>
					<jsp:setProperty name="dateValue" property="time" value="${bookClassify.updatetime }"/>
					<span class="item item"><i class="icon-time"></i> <fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/></span>
                    <a class="item item" rel="nofollow" href="#footer"><i class="icon-chevron-down"></i> 直达底部</a>
                    <div class="cr"></div>
                </div>
                <div class="update">${bookClassify.title } 共${bookClassify.chapternum }章 （ <fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/>）</div>
                <div class="cr"></div>
                <h3 class="bookinfo_intro"><strong>《${bookClassify.title }》简介：</strong>
 					${bookClassify.subtitle }
				</h3>
            </div>
            <div class="cr"></div>
        </div>
    </div>
   
    <div class="box mt10">
        <h2 class="title"><b><i class="icon-list"></i> 《${bookClassify.title }》最新章节列表</b></h2>
        <div class="book_list">
        <ul>
 			<c:forEach var="acticle" items="${bookActicle}">
            <li><a href="/read/${acticle.digest }">${acticle.title }</a></li>
 			</c:forEach>
		</ul>
        </div>
        <div class="cr"></div>
    </div>
  
</div>
<div id="footer">
  <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
<p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
</div>
</body>
</html>