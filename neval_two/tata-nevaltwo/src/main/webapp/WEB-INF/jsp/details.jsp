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
<script src=/js/book.js" type="text/javascript"></script>
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
<div class="container body-content">
  <ol class="breadcrumb hidden-xs">
    <li><a href="/" title="首页"><i class="fa fa-home fa-fw"></i>首页</a></li>
    <li >${bookClassify.category }</li>
    <li class="active">${bookClassify.title }</li>
  </ol>

  <div class="panel panel-default">
    <div class="panel-body">
      <div class="row">
        <div class="col-md-2 col-xs-4 hidden-xs"><img class="img-thumbnail" alt="战天龙帝" src="${bookClassify.imgurl }" title="战天龙帝"  width="140" height="180" /></div>
        <div class="col-md-10">
          <h1 class="bookTitle">${bookClassify.title }</h1>
          <p class="booktag"> <span class="red" title="作者：${bookClassify.author }">${bookClassify.author }</span> <span class="red" title="${bookClassify.category }">${bookClassify.category }</span> <span class="blue">状态：${bookClassify.booktype }</span> </p>
          <p> 所有章节：<span>正文 共${bookClassify.chapternum }章 </span><span class="hidden-xs"></span> </p>
          <p class="visible-xs">更新时间：</p>
          <div class="row">
          <hr />
           <span class="col-md-8">
           <p>${bookClassify.subtitle }</p>
            </span> 
          </div>
          
        </div>
        <div class="clear"></div>
      </div>
      
    </div>
  </div>
  
  <div class="panel panel-default" id="list-chapterAll">
    <div class="panel-heading"><i class="fa fa-list fa-fw"></i><strong>${bookClassify.title }全部章节目录</strong></div>
    <dl class="panel-body panel-chapterlist">      
			<dt class="col-md-12"><i class="fa fa-bookmark fa-fw"></i>正文</dt>
			<c:forEach var="acticle" items="${bookActicle}">
			<dd class="col-md-4"><a href="/read/${acticle.digest }" title="${acticle.title }">${acticle.title }</a></dd>
			</c:forEach>
    </dl>
  </div>
      <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
     <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
</div>

</body>
</html>

