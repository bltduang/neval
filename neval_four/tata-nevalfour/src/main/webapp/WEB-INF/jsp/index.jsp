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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link href="css/style.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<!--[if IE 7]><link rel="stylesheet" href="css/font-awesome-ie7.min.css"><![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
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
	<div class="col">
		<div class="box">
			<h1 class="title"><b>书友推荐阅读</b>
			</h1>
			<div class="news">			
<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 18 }">
		<div class='bk'>
		    <div class='pic'>
		        <a class="img" href='/details/${books.id }' title="${book.title }">
		            <img src="${books.imgurl }" alt='${book.title }' width="120" height="150"/>
		        </a>
		    </div>
		    <h3><a href='/details/${books.id }' title='${books.title }'>${books.title }</a></h3>
		    <p class="info">
		        <span>作者：${books.author }</span>
		        <span class="update">共${books.chapternum }章</span>
		    </p>
		    <p class="intro">${books.subtitle }</p>
		</div>
	</c:if>
</c:forEach>

			</div>
		</div>
	</div>
	<div class="side">
		<div class="box">
			<h2 class="title"><b>热门小说</b>
			</h2>
			<div class="books section-cols">
			<ul>
			
<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 11 }">
		<li><span class="s1"><a href="/details/${books.id }" title="${books.title }">${books.title }</a></span><span class="s2">${books.author }</span></li>
	</c:if>
</c:forEach>

			</ul>
			</div>
		</div>
		<div class="cr"></div>
	</div>
	<div class="cr"></div>

<!--div class="banner"><script type="text/javascript">index_bottom();</script></div-->
    <div class="col mt10">
        <div class="box">
			<h2 class="title"><b>最新更新小说</b><span></span></h2>
			<div class="news section-cols">
				<ul>

<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 19 }">
		<jsp:useBean id="dateValue" class="java.util.Date"/>
		<jsp:setProperty name="dateValue" property="time" value="${books.updatetime }"/>
		<li><span class="s1">${books.category }</span><span class="s2"><a href="/details/${books.id }" title="${books.title }">${books.title }</a></span><span class="s3">共${books.chapternum }章</span><span class="s4">${books.author }</span></li>
		<%-- <span class="s5"><fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/></span> --%>
	</c:if>
</c:forEach>

				</ul>
			</div>
        </div>
	</div>
    <div class="side mt10">
        <div class="box">
			<h2 class="title"><b>最新小说</b><span></span></h2>
			<div class="books section-cols">
				<ul>
				
				
	<c:forEach var="books" items="${bookList}" >
		<c:if test="${books.classifyId == 20 }">
			<li><span class="s1"><a href="/details/${books.id }" title="${books.title }">${books.title }</a></span><span class="s2">${books.author }</span></li>
		</c:if>
	</c:forEach>
	
				</ul>
			</div>
        </div>
        <div class="cr"></div>
    </div>
<div class="cr"></div>

 
</div>
<!--版权信息-->
<div id="footer">
<p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
<p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>


</div>
</body>
</html>  