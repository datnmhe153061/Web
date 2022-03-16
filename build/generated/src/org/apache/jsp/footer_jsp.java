package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/footer.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header></header>\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row footer-top-cms\">\n");
      out.write("                    <div class=\"row col-md-10\">\n");
      out.write("                        <div class=\"col-md-4 offer-footer\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-4 icon-fot\">\n");
      out.write("                                    <i class=\"fas fa-dolly\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-8 text-form-footer\">\n");
      out.write("                                    <h3>Miễn phí ship</h3>\n");
      out.write("                                    <p>Đơn hàng trên 3.000.000 đồng</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 offer-footer my-md-0 my-4\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-4 icon-fot\">\n");
      out.write("                                    <i class=\"fas fa-shipping-fast\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-8 text-form-footer\">\n");
      out.write("                                    <h3>Vận chuyển nhanh chóng</h3>\n");
      out.write("                                    <p>Toàn quốc</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 offer-footer\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-4 icon-fot\">\n");
      out.write("                                    <i class=\"far fa-thumbs-up\"></i>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-8 text-form-footer\">\n");
      out.write("                                    <h3>Lựa chọn tốt</h3>\n");
      out.write("                                    <p>của mọi sản phẩm</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2 footer-social\">\n");
      out.write("                        <h5>Social</h5>\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"facebook\"><a href=\"https://www.facebook.com/dat4401/\"><i class=\"fa-brands fa-facebook-f\"></i></a></li>\n");
      out.write("                            <li class=\"linkedin\"><a href=\"https://www.instagram.com/\"><i class=\"fa-brands fa-linkedin-in\"></i></a></li>\n");
      out.write("                            <li class=\"twitter\"><a href=\"https://twitter.com/home?lang=vi\"><i class=\"fa-brands fa-twitter\"></i></a></li>\n");
      out.write("                            <li class=\"gplus\"><a href=\"https://www.google.com/\"><i class=\"fa-brands fa-google-plus\"></i></a></li>\n");
      out.write("                            <li class=\"youtube\"><a href=\"https://www.youtube.com/\"><i class=\"fa-brands fa-youtube\"></i></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-2 footer-logo\"> <a href=\"HomeController\"><img alt=\"\" src=\"image/product/mainlogo.png\"></a> </div>\n");
      out.write("                    <div class=\"col-md-6 footer-desc\"> <span>Gym Store: \n");
      out.write("                            Nếu bạn đang cân nhắc về nhu cầu thể hình, đang tìm kiếm những dụng cụ hỗ trợ nhanh chóng và tiện lợi, chúng tôi sẽ giúp bạn dễ dàng tìm thấy chính xác thứ bạn cần với mức giá bạn có thể mua được.</span> </div>\n");
      out.write("                    <div class=\"col-md-3 footer-block\">\n");
      out.write("                        <div class=\"content_footercms_right\">\n");
      out.write("                            <div class=\"footer-contact\">\n");
      out.write("                                <h5 class=\"contact-title footer-title\">Liên hệ</h5>\n");
      out.write("                                <ul class=\"ul-wrapper\">\n");
      out.write("                                    <li><i class=\"fa fa-map-marker\"></i><span class=\"location2\"> Trường Đại Học FPT,<br>\n");
      out.write("                                            Thạch Hòa, Thạch Thất, Hà Nội<br>\n");
      out.write("                                            Việt Nam</span></li>\n");
      out.write("                                    <li><i class=\"fa fa-envelope\"></i><span class=\"mail2\"><a href=\"#\">datnmhe153061@fpt.edu.com</a></span></li>\n");
      out.write("                                    <li><i class=\"fa fa-mobile\"></i><span class=\"phone2\">+ 0839-911-131</span></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <a id=\"scrollup\">Scroll</a> </footer>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/template.js\"></script>\n");
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
