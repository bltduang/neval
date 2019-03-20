<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 来看小说吧_免费小说</title>
    <link rel="stylesheet" href="/css/pintuer.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/pintuer.js"></script>
    <script src='/js/jquery.cookie.js'></script>
    <style>
        .head {
            box-shadow: 0 2px 10px rgba(0,0,0,.2);
        }
        body{
            background: #dfdfdf;
        }
    </style>
</head>
<body id='nr_body'>
<div class="container-layout">
    <div class="line head clearfix ">
    <div class="head-mu xb7 xm10 xs12 xl12">
        <div class="head-logo xb2 xm2 xs4 xl4">
            <a href="/" title='来看小说吧'>
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
    <div class="line index-body xb6 xm10 xs12 xl12">
        <div class="detail-body-nr clearfix xb12 xm12 xs12 xl12">
            <ul class="bread">
                <li><a href="/">首页</a></li>
                <li>${bookActicle.category }</li>
                <li><a href="/details/${bookActicle.bookid }">${bookActicle.booktitle }</a></li>
                <li>${bookActicle.title }</li>
            </ul>
            <div class="detail-body-body detail-body-body-play">
                <div class='play-title'>
                    <h1 class='chatit text-center'> ${bookActicle.title } </h1>
                    <div class="info hidden-l ">
                        <span>小说：<a href="/details/${bookActicle.bookid }" title="${bookActicle.booktitle }">${bookActicle.booktitle }</a></span>
                        <span>作者：${bookActicle.author }</span>
                    </div>
                </div>
                <div class='txt_tcontent' id='nr'>
                
&nbsp;&nbsp;&nbsp;&nbsp;
${bookContent.content }

</div>
                <div class="info bottominfo">
                   
                </div>
                <div class="operate text-center">
                    <a class="btn-primary radius-rounded" href="/read/${bookActicle.syz }" title="">上一章</a>
                    <a class="btn-primary radius-rounded" href="/details/${bookActicle.bookid }" title="雷武">目录</a>
                    <a class="btn-primary radius-rounded" href="/read/${bookActicle.xyz }" title="">下一章</a>
                </div>
                <!---->
                <div class="Menu" id="Menu" style="display: none;">
                    <section>
                        <dl class="fonts">
                            <dt>导航</dt>
                            <dd>
                                <label><a href="/">首页</a></label>
                                <label><a href="/read/${bookActicle.xyz }">看下一章</a></label>
                            </dd>
                        </dl>

                        <dl class="fonts">
                            <dt>字号</dt>
                            <style>
                                .gw_num{border: 1px solid #dbdbdb;width: 110px;line-height: 26px;overflow: hidden;}
                                .gw_num em{display: block;height: 26px;width: 26px;float: left;color: #7A7979;border-right: 1px solid #dbdbdb;text-align: center;cursor: pointer;}
                                .gw_num .num{display: block;float: left;text-align: center;width: 52px;font-style: normal;font-size: 14px;line-height: 24px;border: 0;}
                                .gw_num em.add{float: right;border-right: 0;border-left: 1px solid #dbdbdb;}
                            </style>
                            <dd>
                                <div class="gw_num">
                                    <em class="jian">-</em>
                                    <input value="18" class="num" id="fongsizenum" type="text">
                                    <em class="add">+</em>
                                </div>
                            </dd>
                        </dl>
                        <dl class="bgmenu">
                            <dt>背景</dt>
                            <dd>
                                <label class="bg1"></label>
                                <label class="bg2"></label>
                                <label class="bg3"></label>
                                <label class="bg4"></label>
                                <label class="bg5"></label>
                                <label class="bg6"></label>
                                <label class="bg7"></label>
                                <label class="bg8">夜</label>
                                <label class="bg9">夜+</label>
                                <label class="bg10">黑</label>
                            </dd>
                        </dl>
                    </section>
                </div>
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
<script type="text/javascript" src="js/common.js"></script>
<script>
    window._bd_share_config = {
        common: {
            bdText: '',
            bdDesc: '',
            bdUrl: '',
            bdPic: ''
        },
        share: [{
            "bdSize": 24,
            bdCustomStyle: '/17mb/style/style.css'
        }]
    }
    with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();


</script>
    <script>
        document.getElementById('nr').onclick = function(){
            document.getElementById('Menu').style = 'display:block;';
        }
        $('#nr').click(function(){
            $('#Menu').css('display', 'block');
        });
        $('#Menu').click(function(){
            $(this).css('display', 'none');
        });
        $('section').click(function(event){
            event.stopPropagation();
        });
        $('.bgmenu dd label').click(function(){
            var _class = $(this).attr('class');
            $('#nr_body').attr('class', _class);
            document.cookie="bgcolor="+_class+";path=/";
        });
        var strCookie=document.cookie;
        var arrCookie=strCookie.split("; ");
        for(var i=0;i<arrCookie.length;i++){
            var arr=arrCookie[i].split("=");
            if("bgcolor"==arr[0]){
                bgcolor=arr[1];
                $('#nr_body').attr('class', arr[1]);
                break;
            }
        }
        //加的效果
        $(".add").click(function(){
            var n=$(this).prev().val();
            var num=parseInt(n)+1;
            if(num==0){ return;}
            $(this).prev().val(num);
            document.getElementById('nr').style.fontSize = num + 'px';
            document.cookie = 'fontsize=' + num + '; path=/';
        });
        //减的效果
        $(".jian").click(function(){
            var n=$(this).next().val();
            var num=parseInt(n)-1;
            if(num==0){ return}
            $(this).next().val(num);
            document.getElementById('nr').style.fontSize = num + 'px';
            document.cookie = 'fontsize=' + num + '; path=/';
        });
        var cookiefontsize;
        var fontsize = parseInt($('#fongsizenum').val());
        for(var i=0; i<arrCookie.length; i++){
            var arr = arrCookie[i].split("=");
            if("fontsize" == arr[0]){
                cookiefontsize = arr[1];
                break;
            }
        }
        if (!cookiefontsize)
        {
            document.cookie = 'fontsize=' + fontsize + '; path=/';
        }
        else
        {
            $('#fongsizenum').val(cookiefontsize);
            document.getElementById('nr').style.fontSize = cookiefontsize + 'px';
        }
        //键盘左右翻页
        $(document).ready(function () {
            var prevpage = "0.html";
            var nextpage = "2.html";
            var gotobook = "http://ys8.yvip8.cn/0/1/";
            $("body").keydown(function (event) {
                if (event.keyCode == 37 && prevpage != undefined) location = prevpage;//左键
                if (event.keyCode == 39 && nextpage != undefined) location = nextpage;//右键
                if (event.keyCode == 13 && nextpage != undefined) location = gotobook;//回车键
            });
        });
    </script>
    <script type="text/javascript" src="/js/yuedu.js"></script>
   
</body>
</html>