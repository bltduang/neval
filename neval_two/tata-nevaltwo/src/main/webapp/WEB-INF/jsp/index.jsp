<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>快读小说网-免费全本小说无弹窗阅读</title>

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/site.css" rel="stylesheet" />
<link rel="apple-touch-icon-precomposed" href="/novel/images/apple-touch-icon-precomposed.png">
<script src="js/jquery191.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--[if lt IE 9]><script src="js/respond.min.js"></script><![endif]-->
<script src="js/book.js" type="text/javascript"></script>
<script src="js/profit.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>

           
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
  <div class="row">
    <div class="col-md-8"><script type="text/javascript">_ad_top();</script>
      <div class="panel panel-default hidden-xs">
        <div class="panel-heading">
          <div class="row">
            <h5 class="pull-left col-xs-4"><i class="fa fa-diamond fa-fw"></i>本站推荐</h5>
            <div class="clear"></div>
          </div>
        </div>
        <div id="div1" class="panel-body">
        


	

          <div class="clear"></div>
        </div>
      </div>
    </div>
    <div class="col-md-4"><span class="visible-xs mb10"><script>searchBox();</script></span>
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#tab-weekvisit" role="tab" data-toggle="tab">本月热门</a></li>
      </ul>
      
      <div class="tab-content mt10">
        <div role="tabpanel" class="tab-pane active" id="tab-weekvisit">
          <ul id="ul1" class="list-group list-top">

          </ul>
        </div>
      </div>
    </div>
    
    <div class="clear"></div>
  </div>
  <div class="row">
    <div class="col-md-8">
      <div class="panel panel-success">
        <div class="panel-heading">
          <h5 class="mg0"><i class="fa fa-history fa-fw"></i>上期更新</h5>
        </div>
        <table class="table" id="table1">
           	


        </table>
      </div>
    </div>
    <div class="col-md-4">
      <div class="panel panel-success"> 
     
        <div class="panel-heading">
          <h5 class="mg0"><i class="fa fa-download fa-fw"></i>最新入库</h5>
        </div>
        <table class="table" id="table2">
           	
           <script type="text/javascript">
			//这里我们自己指定了jsonp的callback的名字
			$.ajax({
			url: 'http://localhost:8090/book/list',
			type: 'GET',
			async:false,
			dataType: "jsonp",
			/*     
			 data: "offset=0&num_items=10",
			*/
			jsonp: "callback",
			jsonpCallback: 'successCallback'
			});
			function successCallback(data) {
			var num = 1;
			$.each(data, function (i, item) {
				if((item.classifyId).toString() == "8")
					$("#div1").append(" <div class='col-md-3 col-xs-6 mb10 mt10'> <a class='thumbnail' href='/details/"+item.id+"' title='"+item.title+"'> <img src='"+item.imgurl+"' alt='"+item.title+"' style='height:182px;'> <div class='caption'> <strong>"+item.title+"</strong><br />   <span class='text-muted fs-12'>"+item.author+" / 著</span> <br /> <span class='text-warning fs-12'> </span></div> </a> </div>  ");
				
		    	/* if(num < 6) */
		    	if((item.classifyId).toString() == "9")
		    		$("#ul1").append("<li class='list-group-item'><i class='topNum'>"+item.topnum+"</i><a href='/details/"+item.id+"' title='"+item.title+"'>"+item.title+"</a><small class='text-muted'>/ "+item.author+"</small></li>");
		    	
		     	if((item.classifyId).toString() == "12")
		    	{
		    		var update = new Date(item.updatetime);
		    		var updateshow = update.toLocaleDateString().replace(/\//g, '-')+ " " + update.toTimeString().substr(0, 5);
		    		$("#table1").append("<tr> <td class='text-muted hidden-xs' width='10%'>"+item.category+"</td> <td><a href='/details/"+item.id+"' title='"+item.title+"'>"+item.title+"</a></td> <td class='hidden-xs'><a href='/details/"+item.id+"' title='共"+item.chapternum+"章' >共"+item.chapternum+"章</a></td> <td class='text-muted fs-12' title='"+item.author+"'>"+item.author+"</td> <td class='fs-12'>"+updateshow+"</td> </tr> ");
		    	} 
		     	if((item.classifyId).toString() == "13"){
		     		$("#table2").append("<tr> <td class='text-muted'>"+item.category+"</td> <td><a href='/details/"+item.id+"' title='"+item.title+"'>"+item.title+"</a></td> <td class='text-muted fs-12' title='"+item.author+"'>"+item.author+"</td> </tr> ");
		     	}
			num++;
			});
			}
		</script>

       	</table>
      </div>
    </div>
    <div class="clear"></div>
  </div>
     <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>
     <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>
</body>
</html> 