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
<title>来看小说吧_免费小说_小说排行榜</title>

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
    <!--body-->
    <div class="index-body xb7 xm12 xs12 xl12">
        <!--top-stop-->
        <div class="line index-body-nr-left clearfix">
            <div class="main-tit xl12 xs12 xm12 xb12">
                <span class='mt_tit'>今日热门</span>
            </div>
            
<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 10 }">
			<div class="index-body-nr-left-1-li xl4 xm2 xs2 xb2">
			  <div class="media padding-bottom clearfix ">
			    <a href="/details/${books.id }" title="${books.title }" target="_blank">
			      <img class="lazy" src="${books.imgurl }" alt="${books.title }">
			    </a>
			    <div class="media-body">
			      <strong class='text-more'><a href="/details/${books.id }" target="_blank" title="${books.title }">${books.title }</a></strong>
			      <span class='text-more index-body-nr-left-span'>作者：${books.author }</span>
			    </div>
			  </div>
			</div> 
	</c:if>
</c:forEach>

        </div>
        <!--top-stop-->
        <!--list-stop-->
        <div class="line index-body-nr-left clearfix">
            <div class="index-type xb4 xm10 xs12 xl12">
                <h2>
                    <div class='index-type-tit'>
                    </div>
                    玄幻魔法
                </h2>
                <ul>
                
<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 14 }">
		<li class='xb6 xm6 xs6 xl12 text-more'>
		  <a href="/details/${books.id }" target="_blank" title="${books.title }">${books.title }</a> /
		  <a href="/details/${books.id }" target="_blank" title="${books.author }">${books.author }</a>
		</li>
	</c:if>
</c:forEach>

                </ul>
            </div>
            <div class="index-type xb4 xm10 xs12 xl12">
                <h2>
                    <div class='index-type-tit'>
                    </div>
                    仙侠修真
                </h2>
                <ul>
		<c:forEach var="books" items="${bookList}" >
			<c:if test="${books.classifyId == 15 }">
				<li class='xb6 xm6 xs6 xl12 text-more'>
				  <a href="/details/${books.id }" target="_blank" title="${books.title }">${books.title }</a> /
				  <a href="/details/${books.id }" target="_blank" title="${books.author }">${books.author }</a>
				</li>
			</c:if>
			
		</c:forEach> 
                </ul>
            </div>
            <div class="index-type xb4 xm10 xs12 xl12">
                <h2>
                    <div class='index-type-tit'>
                    </div>
                    都市言情
                </h2>
                <ul>
	<c:forEach var="books" items="${bookList}" >
		<c:if test="${books.classifyId == 16 }">
			<li class='xb6 xm6 xs6 xl12 text-more'>
			  <a href="/details/${books.id }" target="_blank" title="${books.title }">${books.title }</a> /
			  <a href="/details/${books.id }" target="_blank" title="${books.author }">${books.author }</a>
			</li>
		</c:if>
	</c:forEach>

                </ul>
            </div>
        </div>
        <!--list-stop-->
        <div class='clearfix indexlist'>
            <!--newlist-stop-->
            <div class="line index-body-nr-left1 clearfix xb9 xm12 xs12 xl12">
                <div class="newmain-tit xl12 xs12 xm12 xb12">
                    <span class="newmt_tit">最近更新</span>
                </div>
                <ul class='newlist'>
                
<c:forEach var="books" items="${bookList}" >
	<c:if test="${books.classifyId == 17 }">
		<li class='text-more'>
		  <div class='newlist-type text-more xb1 xm1 xs1 xl2'>
		    [<a href='/details/${books.id }' target="_blank" title="武侠">${books.category }</a>]
		  </div>
		  <div class='newlist-title text-more xb3 xm3 xs3 xl8'>
		    <a href='/details/${books.id }' target="_blank" title="${books.title }">${books.title }</a>
		  </div>
		  <div class='newlist-zj text-more xb5 xm5 xs3 hidden-l'>
		    <a href='/details/${books.id }' target="_blank" title="共${books.chapternum }章 ！">共${books.chapternum }章！</a>
		  </div>
		  <div class='newlist-zz text-more xb2 xm2 xs2 hidden-l '>
		    <a href='/details/${books.id }' target="_blank" title="${books.author }">${books.author }</a>
		  </div>
		  	<jsp:useBean id="dateValue" class="java.util.Date"/>
			<jsp:setProperty name="dateValue" property="time" value="${books.updatetime }"/>
		  <div class='newlist-time text-right text-more xb1 xm1 xs3 xl2 '><fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/></div>
		</li>
	</c:if>
</c:forEach>
                </ul>
            </div>
            <!--newlist-stop-->

            <div>
            </div>
            <!--body-stop-->
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

</div>
</div>
</body>
</html>