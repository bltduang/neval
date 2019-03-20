<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="Cache-Control" content="no-transform">
    <title>完本小说分类篇-云书网</title>

    <link rel="stylesheet" href="/css/css1.css">
    <script src="http://www.googletagservices.com/activeview/js/current/osd.js?cb=%2Fr20100101"></script>
    <script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-6630316457450567.js"></script>
    <script src="https://hm.baidu.com/hm.js?6e599eaed1828094c160b9c1f9a43773"></script>
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/header.js?v6.14"></script>
    <script>var znsid = '';</script>
    <script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=430921"></script>
    <link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com" as="script">
    <script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com"></script>
    <link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20190225/r20190131/show_ads_impl.js"
        as="script">
    <link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_24.css">
    
       <script type="text/javascript">
			//这里我们自己指定了jsonp的callback的名字
 			var category=${categoryid};
				$.ajax({
				    url: 'http://localhost:9090/rest/category/list/'+category,
				    type: 'GET',
				    async:false,
				    dataType: "jsonp",
				    jsonp: "callback",
				    jsonpCallback: 'successCallback'
				});
				function successCallback(data) {
					var num = 1;
				    $.each(data, function (i, item) {
				    	$("#ul1").append("<li class='item-cover'> <a href='/details/"+item.bookid+"' title='"+item.title+"'> <img src='"+item.imgurl+"'> <h3>"+item.title+"</h3> </a> </li> ");
				    });
				} 
		</script>
						
</head>

<body>
    <div id="wrapper">
        <div class="header">
            <div class="header_logo">
                <a href="/index" title="牛牛书城"><img alt="云书网" src="/images/yslogo.png"></a>
            </div>
            <div class="inner s96 cf">
             <!--    <form action="/home/search" method="post">
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

        <div class="all-pro-wrap box-center cf">
            <div class="range-sidebar fl">
                <div class="inner-wrap">
               
               
                    <div class="select-list">
                        <div class="work-filter type-filter">
                            <h3>分类</h3>
                            <ul type="category">
                    <li><a href="/index" title="云书网"><h3>首页</h3></a></li>
                    <li class="tou2"><a href="/category/${xh }"><h3>玄幻</h3></a></li>
			        <li class="tou2"><a href="/category/${yq}"><h3>言情</h3></a></li>
			        <li class="tou2"><a href="/category/${ds}"><h3>都市</h3></a></li>
			        <li class="tou2"><a href="/category/${gy}"><h3>古言</h3></a></li>
			        <li class="tou2"><a href="/category/${xy}"><h3>校园</h3></a></li>
			        <li class="tou2"><a href="/category/${xx}"><h3>仙侠</h3></a></li>
			        <li class="tou2"><a href="/category/${qt}"><h3>其他</h3></a></li>
			                  <!--   class="current" -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bos1">
                <h2>分类列表</h2>
                <ul id="ul1">

                
                </ul>

            </div>
        </div>
        <div class="footer">
            <div class="footer_link"></div>
            <div class="footer_cont">
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
           
            </div>
        </div>
 
    </div>


</html>