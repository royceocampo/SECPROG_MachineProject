/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.20
 * Generated at: 2016-02-25 04:02:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("\t\t<meta charset=\"utf-8\"> \n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Bootstrap: Latest compiled and minified CSS -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Bootstrap: Latest compiled and minified JavaScript -->\n");
      out.write("\t\t<script src=\"http://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("\t\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("\t\t\n");
      out.write("\t\t<title>Borrow Something | Home</title>\t\t\n");
      out.write("\t\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"Images/favicon.ico\" />\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Carter+One' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>\n");
      out.write("\t\t\n");
      out.write("\t\t<style type=\"text/css\">\n");
      out.write("\t\t.navbar-inverse, .dropdown-menu{\n");
      out.write("\t\t\tbackground-color: #505050;\n");
      out.write("\t\t\tbackground-image: none;\n");
      out.write("\t\t\tborder-color: #080808;\n");
      out.write("\t\t}\n");
      out.write("\t\t.dropdown-menu>li>a {\n");
      out.write("\t\t\tcolor: #129793;\n");
      out.write("\t\t}\n");
      out.write("\t\t.navbar-inverse .navbar-nav>li>a {\n");
      out.write("\t\t\tcolor: #9BD7D5;\n");
      out.write("\t\t}\n");
      out.write("\t\t.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {\n");
      out.write("\t\t\tcolor: #FFF5C3;\n");
      out.write("\t\t}\n");
      out.write("\t\t.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus {\n");
      out.write("\t\t\tbackground-color: #505050;\n");
      out.write("\t\t\tbackground-image: none;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t.carousel {\n");
      out.write("\t\t\tmargin-top: 5%;\n");
      out.write("\t\t\tmargin-bottom: 5%;\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.carousel img {\n");
      out.write("\t\t\talign: center;\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\theight: 450px;\n");
      out.write("\t\t\tmax-height: 450px;\n");
      out.write("\t\t}\n");
      out.write("\t\t.carousel-inner > .item > img {\n");
      out.write("\t\t\tmargin: 0 auto;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t.row {\n");
      out.write("\t\t\tmargin-left: 0px;\n");
      out.write("\t\t\tmargin-right: 0px;\n");
      out.write("\t\t\tmargin-top: 0px;\n");
      out.write("\t\t\tpadding-top: 0px;\n");
      out.write("\t\t}\n");
      out.write("\t\t.col-lg-6 {\n");
      out.write("\t\t\theight: 100%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.col-lg-6 img {\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\theight: 80%;\n");
      out.write("\t\t}\n");
      out.write("\t\t.well {\n");
      out.write("\t\t\twidth: 100%;\n");
      out.write("\t\t\tborder: 0px;\n");
      out.write("\t\t\tpadding: 5%;\n");
      out.write("\t\t\tbox-shadow: none;\n");
      out.write("\t\t\tbackground-color: white;\n");
      out.write("\t\t\tbackground-image: none;\n");
      out.write("\t\t\ttext-align: justify;\n");
      out.write("\t\t\tvertical-align: 0;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tbody, .carousel-caption h3{\n");
      out.write("\t\t\t//background-color: #FFF5C3;\n");
      out.write("\t\t\tfont-family: 'Raleway', sans-serif\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t.navbar-inverse .navbar-brand, .navbar-inverse .navbar-brand:hover {\n");
      out.write("\t\t\tcolor: #A7FCDB;\n");
      out.write("\t\t\tfont-family: 'Carter One', cursive;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t#searchbar > *{\n");
      out.write("\t\t\tdisplay: inline-block;\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\th1 {\n");
      out.write("\t\t\tfont-family: 'Kite One', sans-serif;\n");
      out.write("\t\t}\n");
      out.write("\t\t</style>\n");
      out.write("\t</head>\n");
      out.write("\t\n");
      out.write("\t<body>\n");
      out.write("\t\t<div class=\"navbar navbar-default navbar-fixed-top navbar-inverse\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#example\">\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<a href=\"\" class=\"navbar-brand\">Borrow Something</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"example\">\n");
      out.write("\t\t\t\t\t<form action=\"\" class=\"navbar-form navbar-left\" role=\"search\">\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group has-feedback\" id=\"searchbar\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search for...\">\n");
      out.write("\t\t\t\t\t\t\t<button class=\"btn btn-default\" type=\"submit\" id=\"searchbtn\"><i class=\"glyphicon glyphicon-search\"></i></button>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
      out.print( session.getAttribute("username") );
      out.write("<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"ProfileServlet\">My Profile</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"MessageBoxServlet\">Messages</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"ArchiveServlet\">Archive</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"LogoutServlet\">Log Out</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"Borrow.jsp\">Borrow</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"Lend.jsp\">Lend</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div id=\"slider\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"3000\" data-pause=\"hover\">\n");
      out.write("\t\t\t\t  <!-- Indicators -->\n");
      out.write("\t\t\t\t  <ol class=\"carousel-indicators\">\n");
      out.write("\t\t\t\t\t<li data-target=\"#slider\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("\t\t\t\t\t<li data-target=\"#slider\" data-slide-to=\"1\"></li>\n");
      out.write("\t\t\t\t\t<li data-target=\"#slider\" data-slide-to=\"2\"></li>\n");
      out.write("\t\t\t\t\t<li data-target=\"#slider\" data-slide-to=\"3\"></li>\n");
      out.write("\t\t\t\t\t<li data-target=\"#slider\" data-slide-to=\"4\"></li>\n");
      out.write("\t\t\t\t  </ol>\n");
      out.write("\t\t\t\t \n");
      out.write("\t\t\t\t  <!-- Wrapper for slides -->\n");
      out.write("\t\t\t\t  <div class=\"carousel-inner\">\n");
      out.write("\t\t\t\t\t<div class=\"item active\">\n");
      out.write("\t\t\t\t\t  <img src=\"Images/yellow-umbrella.jpg\" alt=\"...\">\n");
      out.write("\t\t\t\t\t  <div class=\"carousel-caption\">\n");
      out.write("\t\t\t\t\t\t  <h3>Is it raining or too hot outside?<br>\n");
      out.write("\t\t\t\t\t\t  Borrow an umbrella!</h3>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t\t  <img src=\"Images/book-leaf.jpg\" alt=\"...\">\n");
      out.write("\t\t\t\t\t  <div class=\"carousel-caption\">\n");
      out.write("\t\t\t\t\t\t  <h3>Need to buy a book?<br>\n");
      out.write("\t\t\t\t\t\t  Borrow a book!</h3>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t\t  <img src=\"Images/pocket-wifi.jpg\" alt=\"...\">\n");
      out.write("\t\t\t\t\t  <div class=\"carousel-caption\">\n");
      out.write("\t\t\t\t\t\t  <h3>Wi-fi is too slow?<br>\n");
      out.write("\t\t\t\t\t\t  Borrow a pocket wifi!</h3>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t\t  <img src=\"Images/pen-note.jpg\" alt=\"...\">\n");
      out.write("\t\t\t\t\t  <div class=\"carousel-caption\">\n");
      out.write("\t\t\t\t\t\t  <h3>Lost your pen?<br>\n");
      out.write("\t\t\t\t\t\t  Borrow a pen!</h3>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t\t  <img src=\"Images/notes.jpg\" alt=\"...\">\n");
      out.write("\t\t\t\t\t  <div class=\"carousel-caption\">\n");
      out.write("\t\t\t\t\t\t  <h3>Want to have a copy of some old notes?<br>\n");
      out.write("\t\t\t\t\t\t  Borrow a notebook!</h3>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t  </div>\n");
      out.write("\t\t\t\t \n");
      out.write("\t\t\t\t  <!-- Controls -->\n");
      out.write("\t\t\t\t  <a class=\"left carousel-control\" href=\"#slider\" role=\"button\" data-slide=\"prev\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("\t\t\t\t  </a>\n");
      out.write("\t\t\t\t  <a class=\"right carousel-control\" href=\"#slider\" role=\"button\" data-slide=\"next\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("\t\t\t\t  </a>\n");
      out.write("\t\t\t\t</div> <!-- Carousel -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"row\" >\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t<div class=\"well\">\n");
      out.write("\t\t\t\t\t<h1>Borrow Something</h1>\n");
      out.write("\t\t\t\t\t<p>Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t<img src=\"Images/shake.jpg\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<hr width=\"80%\">\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"clearfix hidden-md hidden-lg\"> </div>\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t<img src=\"Images/bg.png\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t<div class=\"well\">\n");
      out.write("\t\t\t\t\t<h1>Lend Something</h1>\n");
      out.write("\t\t\t\t\t<p>Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<footer>\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<hr>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t&copy; 2015 Team Lego\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</footer>\n");
      out.write("\t</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
