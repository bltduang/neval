<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="Cache-Control" content="no-transform">
    <title>完本小说在线阅读-云书网</title>
   
    <link rel="stylesheet" href="/css/css1.css">
    <script src="http://www.googletagservices.com/activeview/js/current/osd.js?cb=%2Fr20100101"></script>
    <script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-6630316457450567.js"></script>
    <script src="https://hm.baidu.com/hm.js?6e599eaed1828094c160b9c1f9a43773"></script>
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/header.js?v6.14"></script>
    <script>var znsid = '';</script>
    <!-- 以下为轮播js和css -->
    <link rel="stylesheet" href="http://www.xgbxg.com/Public/bookpc/css/c/zzsc.css">
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/paihuang.js"> </script>

    <script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=430897"></script>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com" as="script">
    <script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com"></script>
    <link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20190214/r20190131/show_ads_impl.js"
        as="script">
    <link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_24.css">
    
    <script type="text/javascript">
							//这里我们自己指定了jsonp的callback的名字
							$.ajax({
							    url: 'http://localhost:9090/rest/book/list',
							    type: 'GET',
							    async:false,
							    dataType: "jsonp",
								/*     
							    data: "offset=0&num_items=10",
							    username: 'username',
							    password: 'password', 
							    */
							    jsonp: "callback",
							    jsonpCallback: 'successCallback1'
							});
							function successCallback1(data) {
								var num = 1;
							    $.each(data.data, function (i, item) {
							    	
							    	if((item.classifyId).toString() == "1")
									    $("#ul1").append("<li> <em> <a class='name' href='/details/"+item.id+"' target='_blank' title='《"+item.title+"》'>"+item.title+"</a></em></li> ");
									
							    	/* if(num < 6) */
							    	if((item.classifyId).toString() == "2")
							    		$("#ul2").append("<li>  <div class='img-box'> <a href='/details/"+item.id+"' target='_blank'><img src='"+item.imgurl+"' alt='"+item.title+"' width='72' height='96'></a> </div> <h3> <a href='/details/"+item.id+"' target='_blank'>"+item.title+" </a></h3> <p>"+item.author+"</p> </li> " );

							    /* 	if(num < 9) */
							    	if((item.classifyId).toString() == "3")
								    	$("#ul3").append("<li> <h4><a href='/details/"+item.id+"' barget='_blank'>"+item.title+" </a></h4> <p>"+item.author+" </p> </li> ");
								    	 
							    	/* if(num < 10) */
							    	if((item.classifyId).toString() == "4")
								    	$("#div1").append(" <div class='item'> <div class='image'> <a href='/details/"+item.id+"' title='《"+item.title+"》在线阅读' > <img src='"+item.imgurl+"' alt='数据待传入' width='72' height='96' onerror='#'></a> </div> <dl> <dt> <a href='/details/"+item.id+"'>"+item.title+" </a> </dt> <dd>"+item.subtitle+" </dd> <div class='state-box cf'> <i> "+item.category+" </i> <a class='author default'><img src='/images/author.png' />"+item.author+"</a></div> </dl> <div class='clear'></div> </div>   ");
								    	
							    	/* if(num < 5) */
							    	if((item.classifyId).toString() == "5")
								    	$("#ul4").append("<li id='li"+item.topnum+"' class='current' style='height: 100px;' > <div class='app-show-title'><span class='num s-index-org'>"+item.topnum+".</span><a  href='/details/"+item.id+"'>"+item.title+"</a></div> <div class='app-show-block'> <a href='/details/"+item.id+"' class='pic'><img src='"+item.imgurl+"' alt='#'><span class='mask mask2'></span></a> <div class='s-index-star s-index-star-1'> <div class='s-index-star-big wrap'><span class='one'>&nbsp;</span><span class='two'>&nbsp;</span><span class='three'>&nbsp;</span><span  class='four'>&nbsp;</span><span class='five'>&nbsp;</span></div> </div> <a href='/details/"+item.id+"' class='event-exe-install s-index-down s-index-icon'>阅&nbsp;读</a> </div> </li>");
								    	
							    	 /* if(num < 21) */
							    	if((item.classifyId).toString() == "6")
							    	 {
							    		 var update = new Date(item.updatetime);
							    		 var updateshow = update.toLocaleDateString().replace(/\//g, "-");
									    	$("#ul5").append("<li> <span class='s1'>["+item.category+"]</span> <span class='s2'><a href='/details/"+item.id+"' title='点击阅读《"+item.title+"》'>"+item.title+"</a></span> <span class='s3'><a class='chapter' href='/details/"+item.id+"' title='"+item.title+"' target='_blank'> 更新到：第 "+item.chapternum+" 章</a></span> <span class='s4'><a>"+item.author+"</a></span>  <span class='s5'>"+updateshow+"</span> </li> ");
							    	 }
							    	 /* if(num < 21) */
							    	 if((item.classifyId).toString() == "7")
									    	$("#ul6").append("<li> <span class='num"+item.topnum+" numer'>"+item.topnum+"</span> <span class='s2'><a class='chaptea' href='/details/"+item.id+"' title='最新收录小说《《"+item.title+"》》'>《"+item.title+"》</a></span> <span class='s5'><a class='numce'>"+item.booktype+"</a></span> </li> " );
							    	num++;
							    });
							}
	</script>
</head>

<body>
    <div id="wrapper">
        <div class="header">
            <div class="header_logo" >
               <a href="/index" title="牛牛书城"><img alt="" src="/images/yslogo.png"></a>
            </div>
            <div class="inner s96 cf">
                <!-- <form action="/home/search" method="post">
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
        <div id="main">
            <!-- 新版块01开始 -->
            <div class="focus-wrap inner-wrap mb20 cf">
                <div class="week-rec-wrap">
                    <b></b>
                    <h3 class="lang">本周强推</h3>
                    <div class="rec-list">
                    <ul id="ul1"> 
              
              
					</ul>
                            
                    </div>
                </div>
                <!-- 新版块01结束 -->

                <!-- 新版块02开始 -->
                <div class="channel-focus big-mode fl">
                    <!-- 新版块02a开始 -->
                    <div class="big-list">
                        <ul id="ul2" class="cf">


                        </ul>
                    </div>

                    <!-- 新版块02a结束 -->
                    <!-- 新板块02b开始 -->
                    <div class="new-wrap cf">
                        <h3>新书精选</h3>
                        <ul id="ul3" class="cf">


                  
                        </ul>
                    </div>
                    <!-- 新板块02b结束 -->
                </div>
            </div>
            <!-- 新板块02结束 -->
            <!-- 老版块a开始 -->
            <div id="hotcontent">
                <!-- 老a版块第一部分开始 -->
                <div id="div1" class="l">
                    <h3 class="lang">完本小说推荐</h3>
                   
   
                </div>
                <!-- 老a版块第一部分结束 -->
                <!-- 老a版块第二部分开始 -->
                <div class="r">
                    <h3 class="lang">最新完本</h3>

                    <div class="s-index-side">

                        <div class="part weekly game-top10 cls">
                            <ul id="ul4" class="weekly-list cls">
                       
                           
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 老a版块第二部分结束 -->
                <div class="clear"></div>
            </div>
            <!-- 老版本a结束 -->
            <!-- 最新更新开始 -->
            <div id="newscontent">
                <div class="l">
                    <h2>
                    	    上期更新列表
                    </h2>
                    <ul id="ul5">
                    
              
                    </ul>
                </div>
                <div class="r">
                    <h2>
                      	  上期入库小说
                    </h2>
                    <ul id="ul6">
          
               
                    </ul>
                </div>
                <div class="clear">
                </div>
            </div>
            <!-- 最新入库小说结束 -->
        </div>
        <div id="firendlink">
             </div>
        <div class="footer">
            <div class="footer_link"></div>
            <div class="footer_cont">
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
                <script charset="gbk" src="http://www.baidu.com/js/opensug.js"></script>
                <script>
                    var _hmt = _hmt || [];
                    (function () {
                        var hm = document.createElement("script");
                        hm.src = "https://hm.baidu.com/hm.js?6e599eaed1828094c160b9c1f9a43773";
                        var s = document.getElementsByTagName("script")[0];
                        s.parentNode.insertBefore(hm, s);
                    })();
                </script>
            </div>
        </div>

</html>