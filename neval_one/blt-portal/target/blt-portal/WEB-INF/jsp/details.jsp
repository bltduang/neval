<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <script src="http://www.googletagservices.com/activeview/js/current/osd.js?cb=%2Fr20100101"></script>
    <script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-6630316457450567.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="Cache-Control" content="no-transform">
    <title>完本小说章节篇-云书网</title>

    <link rel="stylesheet" href="/css/css1.css">
    <script src="https://hm.baidu.com/hm.js?6e599eaed1828094c160b9c1f9a43773"></script>
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/header.js?v6.14"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/layer/layer.js"></script>
    <link rel="stylesheet" href="http://www.xgbxg.com/Public/layer/skin/default/layer.css?v=3.0.11110"
        id="layuicss-skinlayercss">
    <script>var bookid = '18217', hash = 'd4ced5cbcfed4968', index_rule = '0', cindex_rule = '0', znsid = '';</script>

	
    <script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=430897"></script>
    <link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com" as="script">
    <script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com"></script>
    <link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20190214/r20190131/show_ads_impl.js"
        as="script">
    <link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_24.css">
    
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
</head>

<body>
    <div id="wrapper">
        <div class="header">
            <div class="header_logo">
                <a href="/index" title="牛牛书城"><img alt="云书网" src="/images/yslogo.png"></a>
            </div>
            <div class="inner s96 cf">
       <!--          <form action="/home/search" method="post">
                    <input type="hidden" name="action" value="search">
                    <input name="q" placeholder="可以搜索 作者 书名" type="text" class="searchinput" required=""><button
                        class="searchbtn" type="submit">搜索</button>
                </form> -->
            </div>
            <div class="inner s97 cf">
               
            </div>
        </div>
        <div class="s92">
            <div class="nav">
                <ul>
                    <li><a href="/index" title="云书网">首页</a></li>
                    <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li class="tou2"><a href="/category/${xh }">玄幻</a></li>
                    <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${yq}">言情</a></li>
			        <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${ds}">都市</a></li>
			        <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${gy}">古言</a></li>
			        <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${xy}">校园</a></li>
			        <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${xx}">仙侠</a></li>
			        <li class="tou2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			        <li class="tou2"><a href="/category/${qt}">其他</a></li>
                </ul>
            </div>
        </div>
        <div class="dvcode"></div>
        <div class="box_con" id="box1">
        	
        	<script type="text/javascript">
	            var bookjson= ${bookClassify };
	            $("#box1").append(" <div class='con_top cf'> <a href='/'>云书网 </a> &gt;"+bookjson.category+"&gt; "+bookjson.booktitle+" </div> ");
	        </script>
            
            <div id="maininfo">
            
                <div id="info" id="info1">
                    <div class="booktitle cf" id="book1">
                       <script type="text/javascript">
	         			   var bookjson= ${bookClassify };
	          			  $("#book1").append("<h1>"+bookjson.booktitle+"</h1> ");
	      			  </script>
                        <!-- <h1>三寸人间</h1> -->
                    </div>
                    
                    <p id="p1">作&nbsp;&nbsp;者： 
                    <script type="text/javascript">
	         			   var bookjson= ${bookClassify };
	          			  $("#p1").append(bookjson.author);
	      			  </script>
	      			  </p>
                    <p>动&nbsp;&nbsp;作：<a href="#footer">直达底部</a></p>
                    <p id="p2">最后更新时间：
                    <script type="text/javascript">
	         			   var bookjson= ${bookClassify };
	          			  $("#p2").append(bookjson.updatetime);
	      			  </script>
	      			  </p>
                     <p id="p3">章节总数：共
                     <script type="text/javascript">
	         			   var bookjson= ${bookClassify };
	          			  $("#p3").append(bookjson.chapternum);
	      			  </script>
              	      章</p>
                </div>
                
                <div id="intro">
                <script type="text/javascript">
	         			   var bookjson= ${bookClassify };
	          			  $("#intro").append(bookjson.subtitle);
	      		</script>
                </div>
            </div>
            
            <div id="sidebar">
            
            <script type="text/javascript">
	         	var bookjson= ${bookClassify };
	          	 $("#sidebar").append(" <div id='fmimg'> <img alt='"+bookjson.booktitle+"' src='"+bookjson.imgurl+"' width='125' height='150'>  </div> ");
	      	</script>

 
            </div>
            
        </div>
        <div class="box_con">
            <div id="list">
                <dl id="dl1">
       
                    
                    <script type="text/javascript">
                    var bookjson= ${bookClassify };
                    $("#dl1").append(" <dt>"+bookjson.booktitle+"-小说全部目录</dt>");
                    </script>
                    
                 <!--    <dt>三寸人间 小说全部目录</dt> -->
                    
                    
                    <script type="text/javascript">
                    var jsonarray= ${bookActicle };
                    $.each(jsonarray, function (i, n) {
                    	$("#dl1").append(" <dd><a href='/read/"+n.digest+"' target='_blank'>"+n.title+"！</a></dd> ");
                    });
                    </script>
                    
            
                </dl>
          
            </div>
        </div>
        <script id="bdlike_shell"></script>
        <script>bdlike();</script>
        <div class="dvcode"></div>
        <div id="footer" name="footer">
            <div class="footer_link"></div>
            <div class="footer_cont">
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
              
            </div>
        </div>
    </div>



</html>