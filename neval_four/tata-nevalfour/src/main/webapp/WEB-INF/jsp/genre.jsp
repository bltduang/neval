<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>免费小说全文阅读-存书斋</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" media="screen" /> 
<link href="/css/style.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<!--[if IE 7]><link rel="stylesheet" href="css/font-awesome-ie7.min.css"><![endif]-->
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

<div class="p-side">
<div class="nav">
           <ul id="nav">
           
           
<li class="curr">默认</li>
<li><a href="/category/16/1">玄幻小说</a></li>
<li><a href="/category/449/1">言情小说</a></li>
<li><a href="/category/450/1">都市小说</a></li>
<li><a href="/category/43/1">古言小说</a></li>
<li><a href="/category/40/1">校园小说</a></li>
<li><a href="/category/53/1">仙侠小说</a></li>
<li><a href="/category/0/1">其他小说</a></li>
           
           
            </ul>
	</div>
</div>
<div class="view">

	<div class="box mt10">
        <div class="title">
            <b>分类小说列表</b>
            
        </div>
        <div class="sitebox">
        
		<c:forEach var="category" items="${categorylist.rows}" >
        <dl>
            <dt><a href="/details/${category.bookid }" target="_blank"><img src="${category.imgurl }"  alt="" height="155" width="120"></a></dt>
            <jsp:useBean id="dateValue" class="java.util.Date"/>
			<jsp:setProperty name="dateValue" property="time" value="${category.updatetime }"/>
           <%--  <dd><h3><span class="uptime"><fmt:formatDate value="${dateValue}" pattern="MM-dd HH:mm"/></span><a href="/details/${category.bookid }" target="_blank">${category.title }</a></h3></dd> --%>
            <dd class="book_other">作者：<span>${category.author }</span></dd>
             <dd class="book_other">类别：<span>${category.category }</span></dd>
            <dd class="book_des">
            简介：${category.subtitle }
			</dd>
            <dd class="book_other">章节总数：<a href="/details/${category.bookid }" target="_blank">共${category.chapternum }章</a></dd>
            <dd class="book_other"></dd>
        </dl>
		</c:forEach>
		
		<div id="pages">
			<div class="pagelink" id="pagelink">
			
			
						第${categorylist.curpage }页/共 ${categorylist.pagenum }页
		<a href="/category/${category }/1">首页</a>
		
		 <!-- 如果当前页面是第一页 那就禁用上一页 -->
		<c:if test="${categorylist.curpage > 1 }">
			<a href="/category/${category }/${categorylist.curpage - 1 }">上页</a>   <%-- <c:url value='${pb.url }&cp=${pb.cp - 1 }'/> --%>
		</c:if>
		
		<c:choose>
			<c:when test="${categorylist.pagenum <= 10 }">   			 <!--  判断总页数小于页面大小吗 -->
				<c:set var="begin" value="1"/>
				<c:set var="end" value="${categorylist.pagenum }"/>
			</c:when>
			<c:otherwise>
				<c:set var="begin" value="${categorylist.curpage-4 }"/>
				<c:set var="end" value="${categorylist.curpage+5 }"/>
				<c:choose>
					<c:when test="${begin < 1 }">
						<c:set var="begin" value="1"/>
						<c:set var="end" value="10"/>
					</c:when>
					<c:when test="${end > categorylist.pagenum }">
						<c:set var="begin" value="${categorylist.pagenum-9 }"/>
						<c:set var="end" value="${categorylist.pagenum }"/>			
					</c:when>
				</c:choose>
			</c:otherwise>	
		</c:choose>
		<!-- 通过上面的操作我们可以得到正确的begin和end了下面我们就对其进行遍历 -->

		<c:forEach begin="${begin }" end="${end }" var="i">
			<c:choose>
				<c:when test="${i == categorylist.curpage }"><strong>${i }</strong></c:when>  
				<c:otherwise><a href="/category/${category }/${i }"> ${i } </a></c:otherwise>  
			</c:choose>
		</c:forEach>

		<c:if test="${categorylist.curpage < categorylist.pagenum }">  
			<a href="/category/${category }/${categorylist.curpage + 1 }">下页</a> 		
		</c:if>
		<a href="/category/${category }/${categorylist.pagenum }">尾页</a>
		
		
			</div>
		</div>

		<div class="cr"></div>
        </div>
	
	    </div>
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