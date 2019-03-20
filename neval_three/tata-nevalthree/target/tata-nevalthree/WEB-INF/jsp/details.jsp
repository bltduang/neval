<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="applicable-device" content="pc,mobile">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>来看小说吧_免费小说</title>
<link rel="stylesheet" href="/css/pintuer.css">
<link rel="stylesheet" href="/css/style.css">
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/pintuer.js"></script>
</head>
<body>
<div class="container-layout">
    <div class="line head clearfix ">
    <div class="head-mu xb7 xm10 xs12 xl12">
        <div class="head-logo xb2 xm2 xs4 xl4">
            <a href="/" title='来看小说吧'>
                来看小说吧
            </a>
        </div>
<!--         <div class="head_so xb2 xm2 xs2 xl6 float-right">

            <form name="searchform" method="post" action="/modules/article/search.php" id="schform1" class="xb12 xm12 xs12 xl12">
                <button name="submit" class="head-so-bu xb1 xm1 xs1 xl1 xl1-move" value="搜索"  type="submit"><span class="searchform-big icon-search text-tanhong text-big"></span></button>
                <input class="head-so-so radius-small xb11 xm11 xs11 xl11 xl1-move" maxlength="10" placeholder="搜索小说" name="searchkey" type="text">
            </form>

        </div> -->
        <ul class="head-list list-inline xb6 xm6 xs6 xl12">
        <li><a href="/category/16" title="玄幻小说">玄幻</a></li>
        <li><a href="/category/449" title="言情小说">言情</a></li>
        <li><a href="/category/450" title="都市小说">都市</a></li>
        <li><a href="/category/43" title="古言小说">古言</a></li>
        <li><a href="/category/40" title="科校园说">校园</a></li>
        <li><a href="/category/53" title="仙侠小说">仙侠</a></li>
        </ul>
    </div>
</div>
    <div class="line index-body xb7 xm10 xs12 xl12">
        <div class="detail-body-nr clearfix xb12 xm12 xs12 xl12">
            <ul class="bread">
                <li><a href="/" title="演示站">来看小说吧</a></li>
                <li>${bookClassify.category }</li>
                <li>${bookClassify.title }</li>
            </ul>
        </div>
        <!--bodyifo-->
        <div class='clearfix '>
            <div class="detail-body-body xb9 xm12 xs12 xl12">
                <h1 class="title">《${bookClassify.title }》</h1>
                <hr>
                <div class="detail-body-body-img text-center float-left xb2 xm2 xs5 xl4">
                    <img src="${bookClassify.imgurl }" alt="${bookClassify.title }" />
                </div>
                <div class="info xb10 xm12 xs12 xl8 float-right">
                    <h2> ${bookClassify.title }</h2>
                    <p class="info-xg clearfix ">
                  		<jsp:useBean id="dateValue" class="java.util.Date"/>
						<jsp:setProperty name="dateValue" property="time" value="${bookClassify.updatetime }"/>
                        <span class='xb6 xm6 xs6 xl6 text-more'>更新时间：<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd HH:mm"/></span>
                        <span class=" xb6 xm6 xs6 xl6 text-more">作者：${bookClassify.author }</span>
                        <span class='xb6 xm6 xs6 xl6 text-more'>章节总数：共章${bookClassify.chapternum }</span>
                        <span class=" xb6 xm6 xs6 xl6 text-more">分类：${bookClassify.category }</span>
                    </p>
                    <p class='info-- clearfix'>
                    </p>
                </div>
       
                <p class="xb12 xm12 xs12 xl12 part text-indent">${bookClassify.subtitle }</p>
            </div>

        </div>
        <!--bodylist-stop-->

        <div class="newzjlist clearfix">
            <div class="newmain-tit xl12 xs12 xm12 xb12">
                <span class="newmt_tit">${bookClassify.title }所有章节</span>
            </div>
            <ul class="dirlist clearfix">
                
                
                        <c:forEach var="acticle" items="${bookActicle}">
                        <li class='xb3 xl6 xs6 xm6 text-more'><a href="/read/${acticle.digest }" title="${acticle.title }" target="_blank">${acticle.title }</a></li>
                        </c:forEach>
                        

            </ul>
        </div>
    </div>
</div>
<div class="container-layout mt_foot">
    <div class=" padding-top">
   <div class="text-center">
		<p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
	</div>
	 <div class="text-center height-big">
	    <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
	 </div>

    </div>
</div>

</body>
</html>
