package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <div class=\"container px-4 px-lg-5\">\n");
      out.write("                <div class=\"col-sm-4 col-xs-6 mb-2 header-left\">\n");
      out.write("                    <div class=\"shipping\">\n");
      out.write("                        <div>\n");
      out.write("                                <img src=\"image/product/shipping.png\" alt=\"\">\n");
      out.write("                                <div class=\"shipping-text\">Free Shipping <span class=\"shipping-detail\">Free on all products</span></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>        \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-4 col-xs-6 mb-2 header-middle\">\n");
      out.write("                <div class=\"header-middle-top\">\n");
      out.write("                    <div id=\"logo\"> <a href=\"#\"><img src=\"image/product/logo.png\" title=\"E-Commerce\" alt=\"E-Commerce\" class=\"img-responsive\" /></a> </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"col-sm-4 col-xs-6 mb-2 header-right\">\n");
      out.write("                        <div class=\"top-right pull-right \">\n");
      out.write("                            <div id=\"top-links\" class=\"nav pull-right\">\n");
      out.write("                                <div class=\"dropdown\">\n");
      out.write("                                    <a class=\"nav-link dropdown-toggle\" id=\"navbarDropdown\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">My Account</a>\n");
      out.write("                                    <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                            <li><a class=\"dropdown-item\" href=\"#\">Register</a></li>\n");
      out.write("                                            <li><a class=\"dropdown-item\" href=\"#\">Login</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div>\n");
      out.write("                            <form class=\"d-flex mt-2\">\n");
      out.write("                                <button class=\"btn btn-outline-dark\" type=\"submit\">\n");
      out.write("                                    <i class=\"bi-cart-fill me-1\"></i>\n");
      out.write("                                    Cart\n");
      out.write("                                    <span class=\"badge bg-dark text-white ms-1 rounded-pill\">0</span>\n");
      out.write("                                </button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        </nav>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 menu1\">\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                        <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4\">\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link active\" aria-current=\"page\" href=\"#!\">Home</a></li>\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"#!\">Page</a></li>\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"#!\">About Us</a></li>\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"#!\">Contact Us</a></li>\n");
      out.write("                            <li class=\"nav-item dropdown\">\n");
      out.write("                                <a class=\"nav-link dropdown-toggle\" id=\"navbarDropdown\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">Shop</a>\n");
      out.write("                                <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                    <li><a class=\"dropdown-item\" href=\"#!\">All Products</a></li>\n");
      out.write("                                    <li><hr class=\"dropdown-divider\" /></li>\n");
      out.write("                                    <li><a class=\"dropdown-item\" href=\"#!\">Popular Items</a></li>\n");
      out.write("                                    <li><a class=\"dropdown-item\" href=\"#!\">New Arrivals</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <form class=\"d-flex mt-3\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                        <button class=\"btn btn-outline-dark\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
