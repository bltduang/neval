<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <script src="http://www.googletagservices.com/activeview/js/current/osd.js?cb=%2Fr20100101"></script>
    <script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-6630316457450567.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="Cache-Control" content="no-transform">
    <title>完本小说阅读篇-云书网</title>

    <link rel="stylesheet" href="/css/css1.css">
    <script src="https://hm.baidu.com/hm.js?6e599eaed1828094c160b9c1f9a43773"></script>
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/header.js?v6.14"></script>
    <script type="text/javascript" src="http://www.xgbxg.com/Public/layer/layer.js"></script>
    <link rel="stylesheet" href="http://www.xgbxg.com/Public/layer/skin/default/layer.css?v=3.0.11110"
        id="layuicss-skinlayercss">
    <script type="text/javascript" src="http://www.xgbxg.com/Public/bookpc/js/bookcase.js?v6.14"></script>
    <script>var znsid = '';</script>
    <style>
        #source {
            display: none;
        }

        html,
        #source {
            width: 100%;
            height: 100%;
        }

        #ifexplorer {
            width: 976px;
            margin: 0 auto;
        }

        .to_nextpage {
            text-align: center;
        }

        .to_nextpage a {
            margin-left: -2em;
            font-weight: bold;
            color: #a94442;
        }
    </style>
    <script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=430897"></script>
    <link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com" as="script">
    <script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.xgbxg.com"></script>
    <link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20190214/r20190131/show_ads_impl.js"
        as="script">
    <link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_24.css">

</head>

<body>
    <div id="wrapper">
        <div class="header">
            <div class="header_logo">
                <a href="/index" title="云书网"><img alt="云书网" src="/images/yslogo.png"></a>
            </div>
            <div class="inner s96 cf">
               <!--  <form action="/home/search" method="post">
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
        <div class="content_read">
            <div class="box_con">
                <div class="con_top">
                    
                    <div id="page_set">
                        <select onchange="javascript:setFont(this.options[this.selectedIndex].value);" id="bcolor"
                            name="bcolor">
                            <option value="宋体">字体</option>
                            <option value="方正启体简体">默认</option>
                            <option value="黑体">黑体</option>
                            <option value="楷体_GB2312">楷体</option>
                            <option value="微软雅黑">雅黑</option>
                            <option value="方正启体简体">启体</option>
                            <option value="宋体">宋体</option>
                        </select>
                        <select onchange="javascript:setColor(this.options[this.selectedIndex].value);" id="bcolor"
                            name="bcolor">
                            <option value="#000">颜色</option>
                            <option value="#333">默认</option>
                            <option value="#9370DB">暗紫</option>
                            <option value="#2E8B57">藻绿</option>
                            <option value="#2F4F4F">深灰</option>
                            <option value="#778899">青灰</option>
                            <option value="#800000">栗色</option>
                            <option value="#6A5ACD">青蓝</option>
                            <option value="#BC8F8F">玫褐</option>
                            <option value="#F4A460">黄褐</option>
                            <option value="#F5F5DC">米色</option>
                            <option value="#F5F5F5">雾白</option>
                        </select>
                        <select onchange="javascript:setSize(this.options[this.selectedIndex].value);" id="bcolor"
                            name="bcolor">
                            <option value="#E9FAFF">大小</option>
                            <option value="19pt">默认</option>
                            <option value="10pt">10pt</option>
                            <option value="12pt">12pt</option>
                            <option value="14pt">14pt</option>
                            <option value="16pt">16pt</option>
                            <option value="18pt">18pt</option>
                            <option value="20pt">20pt</option>
                            <option value="22pt">22pt</option>
                            <option value="25pt">25pt</option>
                            <option value="30pt">30pt</option>
                        </select>
                        <select onchange="javascript:setBGColor(this.options[this.selectedIndex].value);" id="bcolor"
                            name="bcolor">
                            <option value="#E9FAFF" style="background-color: #E9FAFF;">背景</option>
                            <option value="#E9FAFF" style="background-color: #E9FAFF;">默认</option>
                            <option value="#FFFFFF" style="background-color: #FFFFFF;">白雪</option>
                            <option value="#000000" style="background-color: #000000;color:#FFFFFF;">漆黑</option>
                            <option value="#FFFFED" style="background-color: #FFFFED;">明黄</option>
                            <option value="#EEFAEE" style="background-color: #EEFAEE;">淡绿</option>
                            <option value="#CCE8CF" style="background-color: #CCE8CF;">草绿</option>
                            <option value="#FCEFFF" style="background-color: #FCEFFF;">红粉</option>
                            <option value="#EFEFEF" style="background-color: #EFEFEF;">深灰</option>
                            <option value="#F5F5DC" style="background-color: #F5F5DC;">米色</option>
                            <option value="#D2B48C" style="background-color: #D2B48C;">茶色</option>
                            <option value="#C0C0C0" style="background-color: #E7F4FE;">银色</option>
                        </select>
                        <select onchange="javascript:setWidth(this.options[this.selectedIndex].value);" id="bcolor"
                            name="bcolor">
                            <option value="95%">宽度</option>
                            <option value="95%">默认</option>
                            <option value="85%">85%</option>
                            <option value="76%">75%</option>
                            <option value="67%">65%</option>
                            <option value="53%">50%</option>
                            <option value="41%">40%</option>
                        </select>
                        </div>

                    欢迎阅读：云书网
                </div>
                <div class="bookname">
                    <h1 id="h11">
                    	
                     <script type="text/javascript">
	         			 var bookjson= ${bookActicle };
	          			  $("#h11").append(bookjson.title);
	      			</script>
                  	
                    </h1>
                    <div class="bottem1" id="divb">
	                    <script type="text/javascript">
		         			 var bookjson= ${bookActicle };
		          			  $("#divb").append("<a href='/read/"+bookjson.syz+"' rel='next'>上一章</a> ← <a href='/details/"+bookjson.bookid+"' rel='index'>章节列表</a> → <a href='/read/"+bookjson.xyz+"' rel='next'>下一章</a> ");
		      			</script>
                       <%-- <a href="#" rel="next">上一章</a> ← <a href="/details/${bookjson.bookid }" rel="index">章节列表</a>
                        → <a href="#" rel="next">下一章</a>  --%>
                    </div>
                </div>
                <div id="ifexplorer">
                    <iframe src="about:blank" id="source" width="100%" frameborder="no" border="0" marginwidth="0"
                        marginheight="0" scrolling="yes" allowtransparency="yes"></iframe>
                </div>
                <div id="content">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <script type="text/javascript">
	         			   var bookjson= ${bookContent };
	          			  $("#content").append(bookjson.content);
	      		</script>
                  <!--   &nbsp;&nbsp;&nbsp;&nbsp;“杂役？”王宝乐一怔，看了看面前的那具尸体，感受了一下这身体上残留的结丹气息，他有些懵。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“是啊，这里在苍茫道宫的划分上，当年是外部的杂役区，在这里且修为还是结丹，虽存在了一些其他的可能性，但几乎绝大多数，都是杂役。”小姐姐开口介绍了一下后，就再次催促王宝乐搜寻碎片。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;王宝乐吸了口气，心底有些狐疑，似察觉到了王宝乐的思绪，小姐姐有些不乐意了，在王宝乐脑海里哼了一声。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“怎么的，不信我？不就是冥器那里出了一些意外么，我曾经也有一件一模一样的冥器，只不过是认错了而已，认错了有罪么？认错了就不可饶恕么？！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“哼！另外我说这里是杂役区，这里就是杂役区，甚至别说这里了，就算是火海上那所谓的苍茫道宫主岛，当年也只不过是外门的一处边缘山头罢了。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“你到来这里的时候，我就已经查看了一番，虽此地有所变化，可大体还是与当年没什么区别，真正的苍茫道宫，是刺入在太阳内的剑体区域，那里才是真正宗门所在，不过看如今这情形，里面估计也是一片荒凉……<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不过对苍茫道宫来说，只要核心不灭，就不会消散在星空中，而苍茫道宫的核心，是在剑尖的位置，如果我没有判断错误，如今在剑尖上，必定有星域道主以及恒星和行星境的强者存在，且应该是处于沉睡疗伤之中。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;小姐姐的这番话，听得王宝乐眼睛睁大，而小姐姐似能察觉王宝乐的表情，注意到他的吃惊，心底顿时得意，实际上她这段时间出现的少，也正是因为觉得冥器事件尴尬，可如今有机会展现，她自然不会放过，于是咳嗽一声后，继续一副老气横秋的语气，淡淡开口。<br>&lt;--&gt;&gt;
                    <p class="to_nextpage"><a href="/18_18217/521_1.html" rel="next">本章未完，点击下一页继续阅读</a></p> -->
                </div>

                <div class="bottem2" id="divb2">
                    <script type="text/javascript">
		         			 var bookjson= ${bookActicle };
		          			  $("#divb2").append("<a href='/read/"+bookjson.syz+"' rel='next'>上一章</a> ← <a href='/details/"+bookjson.bookid+"' rel='index'>章节列表</a> → <a href='/read/"+bookjson.xyz+"' rel='next'>下一章</a> ");
		      			</script>
                </div>
            </div>
        </div>
        <div class="footer">

            <div class="footer_cont">
                <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
                <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
     
            </div>
        </div>
    </div>


</html>