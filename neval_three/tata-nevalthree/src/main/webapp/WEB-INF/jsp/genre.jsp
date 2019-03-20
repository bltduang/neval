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
    <title>来看小说吧-分类大全</title>

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
            <a href="/" title=''>
                来看小说吧
            </a>
        </div>
        <div class="head_so xb2 xm2 xs2 xl6 float-right">

        </div>
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
    <div class="line index-body xb7 xm12 xs12 xl12">
        <!--type-->
        <div class="line index-body-nr-left clearfix">
            <div class="main-tit xl12 xs12 xm12 xb12">
                <span class='mt_tit'>全部类别</span>
            </div>
            <ul class="type-fen-2">
                <li class="type-fen-1-1"><a href="/" class="全部小说" id="全部" title="全部小说">全部</a></li>
                <li class="type-fen-1-1"><a href="/category/16" class="玄幻小说" id="玄幻小说" title="玄幻小说">玄幻小说</a></li>
                <li class="type-fen-1-1"><a href="/category/449" class="言情小说" id="言情小说" title="言情小说">言情小说</a></li>
                <li class="type-fen-1-1"><a href="/category/450" class="都市小说" id="都市小说" title="都市小说">都市小说</a></li>
                <li class="type-fen-1-1"><a href="/category/43" class="古言小说" id="古言小说" title="古言小说">古言小说</a></li>
                <li class="type-fen-1-1"><a href="/category/40" class="校园小说" id="校园小说" title="校园小说">校园小说</a></li>
                <li class="type-fen-1-1"><a href="/category/53" class="仙侠小说" id="仙侠小说" title="仙侠小说">仙侠小说</a></li>
                <li class="type-fen-1-1"><a href="/category/0" class="其他类型" id="其他类型" title="其他类型">其他类型</a></li>
            </ul>
        </div>
        <!--type-->

        <!--typelist-stop-->
        <div class="line index-body-nr-left1 sj-list clearfix xb9 xm12 xs12 xl12">
            <div class="newmain-tit xl12 xs12 xm12 xb12">
                <span class="newmt_tit">本类全部小说</span>
            </div>
            <ul class='newlist'>
                
                <c:forEach var="category" items="${categorylist}">
                
                <li class='text-more'>
                    <div class='newlist-type text-more xb1 xm1 xs1 xl2'>
                        [<a href='/details/${category.bookid }' target="_blank" title="${category.category }">${category.category }</a>]
                    </div>
                    <div class='newlist-title text-more xb3 xm3 xs3 xl8'>
                        <a href='/details/${category.bookid }' target="_blank" title="${category.title }">${category.title }</a>
                    </div>
                    <div class='newlist-zj text-more xb5 xm5 xs3 hidden-l'>
              		         共${category.chapternum }章
                    </div>
                    <div class='newlist-zz text-more xb2 xm2 xs2 hidden-l '>
                       ${category.author }
                    </div>
                    <jsp:useBean id="dateValue" class="java.util.Date"/>
					<jsp:setProperty name="dateValue" property="time" value="${category.updatetime }"/>
                    <div class='newlist-time text-right text-more xb1 xm1 xs3 xl2 '><fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/></div>
                </li>
                
               </c:forEach>
            </ul>
            
        </div>
        <!--typelist-stop-->

    </div>
</div>
<!--body-stop-->
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