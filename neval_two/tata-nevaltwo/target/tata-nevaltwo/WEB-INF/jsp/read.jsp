<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>快读小说网-免费全本小说无弹窗阅读</title>
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/font-awesome.min.css" rel="stylesheet" />
<link href="/css/site.css" rel="stylesheet" />
<link rel="apple-touch-icon-precomposed" href="/novel/images/apple-touch-icon-precomposed.png">
<script src="/js/jquery191.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/dialog.js" type="text/javascript"></script>
<!--[if lt IE 9]><script src="js/respond.min.js"></script><![endif]-->
<script src="/js/book.js" type="text/javascript"></script>
<script src="/js/profit.js" type="text/javascript"></script>
</head>
<body>
<div class="navbar navbar-inverse" id="header">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a href="/" class="navbar-brand logo" title="快读小说网">快读小说网</a></div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation" id="nav-header">
      <ul class="nav navbar-nav">
        <li><a href="/category/16" title="玄幻小说">玄幻小说</a></li>
        <li><a href="/category/449" title="仙侠小说">言情小说</a></li>
        <li><a href="/category/450" title="都市小说">都市小说</a></li>
        <li><a href="/category/43" title="历史小说">古言小说</a></li>
        <li><a href="/category/40" title="科幻小说">校园小说</a></li>
        <li><a href="/category/53" title="网游小说">仙侠小说</a></li>
        <li><a href="/category/0" title="完本小说">其他小说</a></li>
      </ul>

    </nav>
  </div>
</div>
<div class="container body-content read-container">
<ol class="breadcrumb hidden-xs">
<li><a href="/" title="快读小说网"><i class="fa fa-home fa-fw"></i>首页</a></li>
<li>${bookActicle.category }</li>
<li><a href="/details/${bookActicle.bookid }">${bookActicle.booktitle }</a></li> 
<li class="active">正文：${bookActicle.title }</li>
<span class="pull-right"><script src="js/pagetop.js"></script></span>
</ol>
<div class="panel panel-default panel-readcontent" id="content">
<div class="page-header text-center">
<h1 class="readTitle">${bookActicle.title } </h1>
<p class="text-center booktag">
<span class="blue"><i class="fa fa-list fa-fw"></i>${bookActicle.booktitle }</span>
<span class="blue"  title="作者：${bookActicle.author }">作者：${bookActicle.author }</span>
</p>
</div>

<div class="panel-body" id="htmlContent">

&nbsp;&nbsp;&nbsp;&nbsp;
${bookContent.content }

</div>

<p class="text-center readPager">
<a id="linkPrev" class="btn btn-default" href="/read/${bookActicle.syz }"><i class="fa fa-arrow-circle-left fa-fw"></i>上一章</a>
<a id="linkIndex" class="btn btn-default" href="/details/${bookActicle.bookid }"><i class="fa fa-list fa-fw"></i>章节目录</a>
<a id="linkNext" class="btn btn-default" href="/read/${bookActicle.xyz }">下一章<i class="fa fa-arrow-circle-right fa-fw"></i></a>
</p>

</div>
      <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
     <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>

</div>

</body>
</html>