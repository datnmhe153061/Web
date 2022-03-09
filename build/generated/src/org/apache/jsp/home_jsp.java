package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_varStatus_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_varStatus_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_varStatus_var_items.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Shop Homepage - Start Bootstrap Template</title>\n");
      out.write("        <!-- Favicon-->\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("        <!-- Bootstrap icons-->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Navigation-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Header-->\n");
      out.write("        <header class=\"header\">\n");
      out.write("            <div class=\"row row-first\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div id=\"main-banner\" class=\"owl-carousel home-slider\">\n");
      out.write("                        <div class=\"item\"> <a href=\"#\"><img name=\"imgch\" onclick=\"changeImage()\" src=\"image/banners/Main-Banner1.jpg\" alt=\"main-banner1\" class=\"img-responsive\" /></a> </div>\n");
      out.write("                    </div>   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row row-second\">\n");
      out.write("                <div class=\"cms_banner\">\n");
      out.write("                    <div class=\"col-md-4 cms-banner-left\"> <a href=\"#\"><img alt=\"#\" src=\"image/banners/subbanner1.jpg\"></a> </div>\n");
      out.write("                    <div class=\"col-md-4 cms-banner-middle\"> <a href=\"#\"><img alt=\"#\" src=\"image/banners/subbanner2.jpg\"></a> </div>\n");
      out.write("                    <div class=\"col-md-4 cms-banner-right\"> <a href=\"#\"><img alt=\"#\" src=\"image/banners/subbanner3.jpg\"></a> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <script>\n");
      out.write("            var index = 1;\n");
      out.write("            changeImage = function () {\n");
      out.write("                var imgs = [\"image/banners/Main-Banner1.jpg\", \"image/banners/Main-Banner2.jpg\", \"image/banners/Main-Banner3.jpg\"];\n");
      out.write("                document.images['imgch'].src = imgs[index];\n");
      out.write("                index++;\n");
      out.write("                if (index == 3) {\n");
      out.write("                    index = 0;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            setInterval(changeImage, 5000);\n");
      out.write("        </script>\n");
      out.write("        <!-- Section-->\n");
      out.write("        <section class=\"py-5\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 mt-5\">\n");
      out.write("                <div id=\"column-left\" class=\"row\">\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <div class=\"column-block\">\n");
      out.write("                            <div class=\"columnblock-title\">Categories</div>\n");
      out.write("                            <div class=\"category_block\">\n");
      out.write("                                <ul class=\"list-group\">\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-9\">\n");
      out.write("                        <div class=\"row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center\">\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Fancy Product</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $40.00 - $80.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">View options</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Special Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$20.00</span>\n");
      out.write("                                    $18.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Sale Item</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$50.00</span>\n");
      out.write("                                    $25.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Popular Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $40.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Sale Item</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$50.00</span>\n");
      out.write("                                    $25.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Fancy Product</h5>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $120.00 - $280.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">View options</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Sale badge-->\n");
      out.write("                            <div class=\"badge bg-dark text-white position-absolute\" style=\"top: 0.5rem; right: 0.5rem\">Sale</div>\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Special Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    <span class=\"text-muted text-decoration-line-through\">$20.00</span>\n");
      out.write("                                    $18.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col mb-5\">\n");
      out.write("                        <div class=\"card h-100\">\n");
      out.write("                            <!-- Product image-->\n");
      out.write("                            <img class=\"card-img-top\" src=\"https://dummyimage.com/450x300/dee2e6/6c757d.jpg\" alt=\"...\" />\n");
      out.write("                            <!-- Product details-->\n");
      out.write("                            <div class=\"card-body p-4\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    <!-- Product name-->\n");
      out.write("                                    <h5 class=\"fw-bolder\">Popular Item</h5>\n");
      out.write("                                    <!-- Product reviews-->\n");
      out.write("                                    <div class=\"d-flex justify-content-center small text-warning mb-2\">\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                        <div class=\"bi-star-fill\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Product price-->\n");
      out.write("                                    $40.00\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Product actions-->\n");
      out.write("                            <div class=\"card-footer p-4 pt-0 border-top-0 bg-transparent\">\n");
      out.write("                                <div class=\"text-center\"><a class=\"btn btn-outline-dark mt-auto\" href=\"#\">Add to cart</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Footer-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Bootstrap core JS-->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Core theme JS-->\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_varStatus_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("s");
    _jspx_th_c_forEach_0.setVarStatus("loop");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <li class=\"list-group-item\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</li><br>\n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_varStatus_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
