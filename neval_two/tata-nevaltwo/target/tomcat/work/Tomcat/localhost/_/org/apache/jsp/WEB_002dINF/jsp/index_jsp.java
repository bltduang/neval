/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-03-19 07:42:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<title>快读小说网-免费全本小说无弹窗阅读</title>\r\n");
      out.write("\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"css/font-awesome.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"css/site.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link rel=\"apple-touch-icon-precomposed\" href=\"/novel/images/apple-touch-icon-precomposed.png\">\r\n");
      out.write("<script src=\"js/jquery191.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<!--[if lt IE 9]><script src=\"js/respond.min.js\"></script><![endif]-->\r\n");
      out.write("<script src=\"js/book.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/profit.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"http://code.jquery.com/jquery-1.8.3.js\"></script>\r\n");
      out.write("<script src=\"http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("           \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"navbar navbar-inverse\" id=\"header\">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <button class=\"navbar-toggle collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\".bs-navbar-collapse\"><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span></button>\r\n");
      out.write("      <a href=\"/\" class=\"navbar-brand logo\" title=\"快读小说网\">快读小说网</a></div>\r\n");
      out.write("    <nav class=\"collapse navbar-collapse bs-navbar-collapse\" role=\"navigation\" id=\"nav-header\">\r\n");
      out.write("      <ul class=\"nav navbar-nav\">\r\n");
      out.write("        <li><a href=\"/category/16\" title=\"玄幻小说\">玄幻小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/449\" title=\"仙侠小说\">言情小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/450\" title=\"都市小说\">都市小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/43\" title=\"历史小说\">古言小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/40\" title=\"科幻小说\">校园小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/53\" title=\"网游小说\">仙侠小说</a></li>\r\n");
      out.write("        <li><a href=\"/category/0\" title=\"完本小说\">其他小说</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"container body-content\">\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <div class=\"col-md-8\"><script type=\"text/javascript\">_ad_top();</script>\r\n");
      out.write("      <div class=\"panel panel-default hidden-xs\">\r\n");
      out.write("        <div class=\"panel-heading\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <h5 class=\"pull-left col-xs-4\"><i class=\"fa fa-diamond fa-fw\"></i>本站推荐</h5>\r\n");
      out.write("            <div class=\"clear\"></div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"div1\" class=\"panel-body\">\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("          <div class=\"clear\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-md-4\"><span class=\"visible-xs mb10\"><script>searchBox();</script></span>\r\n");
      out.write("      <ul class=\"nav nav-tabs\" role=\"tablist\">\r\n");
      out.write("        <li role=\"presentation\" class=\"active\"><a href=\"#tab-weekvisit\" role=\"tab\" data-toggle=\"tab\">本月热门</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"tab-content mt10\">\r\n");
      out.write("        <div role=\"tabpanel\" class=\"tab-pane active\" id=\"tab-weekvisit\">\r\n");
      out.write("          <ul id=\"ul1\" class=\"list-group list-top\">\r\n");
      out.write("\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"clear\"></div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <div class=\"col-md-8\">\r\n");
      out.write("      <div class=\"panel panel-success\">\r\n");
      out.write("        <div class=\"panel-heading\">\r\n");
      out.write("          <h5 class=\"mg0\"><i class=\"fa fa-history fa-fw\"></i>上期更新</h5>\r\n");
      out.write("        </div>\r\n");
      out.write("        <table class=\"table\" id=\"table1\">\r\n");
      out.write("           \t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-md-4\">\r\n");
      out.write("      <div class=\"panel panel-success\">\r\n");
      out.write("        <div class=\"panel-heading\">\r\n");
      out.write("          <h5 class=\"mg0\"><i class=\"fa fa-download fa-fw\"></i>最新入库</h5>\r\n");
      out.write("        </div>\r\n");
      out.write("        <table class=\"table\" id=\"table2\">\r\n");
      out.write("           \t\r\n");
      out.write("           <script type=\"text/javascript\">\r\n");
      out.write("\t\t\t//这里我们自己指定了jsonp的callback的名字\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\turl: 'http://localhost:8090/book/list',\r\n");
      out.write("\t\t\ttype: 'GET',\r\n");
      out.write("\t\t\tasync:false,\r\n");
      out.write("\t\t\tdataType: \"jsonp\",\r\n");
      out.write("\t\t\t/*     \r\n");
      out.write("\t\t\t data: \"offset=0&num_items=10\",\r\n");
      out.write("\t\t\t*/\r\n");
      out.write("\t\t\tjsonp: \"callback\",\r\n");
      out.write("\t\t\tjsonpCallback: 'successCallback'\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\tfunction successCallback(data) {\r\n");
      out.write("\t\t\tvar num = 1;\r\n");
      out.write("\t\t\t$.each(data, function (i, item) {\r\n");
      out.write("\t\t\t\tif((item.classifyId).toString() == \"8\")\r\n");
      out.write("\t\t\t\t\t$(\"#div1\").append(\" <div class='col-md-3 col-xs-6 mb10 mt10'> <a class='thumbnail' href='/details/\"+item.id+\"' title='\"+item.title+\"'> <img src='\"+item.imgurl+\"' alt='\"+item.title+\"' style='height:182px;'> <div class='caption'> <strong>\"+item.title+\"</strong><br />   <span class='text-muted fs-12'>\"+item.author+\" / 著</span> <br /> <span class='text-warning fs-12'> </span></div> </a> </div>  \");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t    \t/* if(num < 6) */\r\n");
      out.write("\t\t    \tif((item.classifyId).toString() == \"9\")\r\n");
      out.write("\t\t    \t\t$(\"#ul1\").append(\"<li class='list-group-item'><i class='topNum'>\"+item.topnum+\"</i><a href='/details/\"+item.id+\"' title='\"+item.title+\"'>\"+item.title+\"</a><small class='text-muted'>/ \"+item.author+\"</small></li>\");\r\n");
      out.write("\t\t    \t\r\n");
      out.write("\t\t     \tif((item.classifyId).toString() == \"12\")\r\n");
      out.write("\t\t    \t{\r\n");
      out.write("\t\t    \t\tvar update = new Date(item.updatetime);\r\n");
      out.write("\t\t    \t\tvar updateshow = update.toLocaleDateString().replace(/\\//g, '-')+ \" \" + update.toTimeString().substr(0, 5);\r\n");
      out.write("\t\t    \t\t$(\"#table1\").append(\"<tr> <td class='text-muted hidden-xs' width='10%'>\"+item.category+\"</td> <td><a href='/details/\"+item.id+\"' title='\"+item.title+\"'>\"+item.title+\"</a></td> <td class='hidden-xs'><a href='/details/\"+item.id+\"' title='共\"+item.chapternum+\"章' >共\"+item.chapternum+\"章</a></td> <td class='text-muted fs-12' title='\"+item.author+\"'>\"+item.author+\"</td> <td class='fs-12'>\"+updateshow+\"</td> </tr> \");\r\n");
      out.write("\t\t    \t} \r\n");
      out.write("\t\t     \tif((item.classifyId).toString() == \"13\"){\r\n");
      out.write("\t\t     \t\t$(\"#table2\").append(\"<tr> <td class='text-muted'>\"+item.category+\"</td> <td><a href='/details/\"+item.id+\"' title='\"+item.title+\"'>\"+item.title+\"</a></td> <td class='text-muted fs-12' title='\"+item.author+\"'>\"+item.author+\"</td> </tr> \");\r\n");
      out.write("\t\t     \t}\r\n");
      out.write("\t\t\tnum++;\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\r\n");
      out.write("       \t</table>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"clear\"></div>\r\n");
      out.write("  </div>\r\n");
      out.write("     <p>请所有作者发布作品时务必遵守国家互联网信息管理办法规定，我们拒绝任何色情小说，一经发现，即作删除！</p>\r\n");
      out.write("     <p>本站所收录的作品、社区话题、用户评论、用户上传内容或图片等均属用户个人行为。如前述内容侵害您的权益，欢迎举报投诉，一经核实，立即删除，本站不承担任何责任</p>\r\n");
      out.write("</body>\r\n");
      out.write("</html> ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}