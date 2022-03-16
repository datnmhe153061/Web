/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tld;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ADMIN
 */
public class TagHandler extends SimpleTagSupport {

    private int pageindex;
    private String url;
    private int totalrecords;
    private String item;
    public int getPageindex() {
        return pageindex;
    }

    public void setPageindex(int pageindex) {
        this.pageindex = pageindex;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getTotalrecords() {
        return totalrecords;
    }

    public void setTotalrecords(int totalrecords) {
        this.totalrecords = totalrecords;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }
    
    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            int pagesize = 8;
            int totalpage = totalrecords / pagesize;
            if (totalrecords % pagesize != 0) {
                totalpage++;
            }
            if (pageindex != 1) {
                out.print("<li class=\"page-item\"><a class=\"page-link\" href=\""+url+"?page=" + (pageindex - 1) + item + "\">Previous</a></li> ");
            }
            if (pageindex - 2 > 0) {
                out.print(" <li class=\"page-item\"> <a class=\"page-link\" href=\""+url+"?page=" + (pageindex - 2) + item + "\">" + (pageindex - 2) + "</a></li>");
            }
            if (pageindex - 1 > 0) {
                out.print(" <li class=\"page-item\"> <a class=\"page-link\" href=\""+url+"?page=" + (pageindex - 1) + item + "\">" + (pageindex - 1) + "</a></li>");
            }
            out.print(" <li class=\"page-item active\"> <a class=\"page-link\" href=\""+url+"?page=" + pageindex + item + "\">" + pageindex + "</a></li>");
            if (pageindex + 1 < totalpage) {
                out.print(" <li class=\"page-item\"> <a class=\"page-link\" href=\""+url+"?page=" + (pageindex + 1) + item + "\">" + (pageindex + 1) + "</a></li>");
            }
            if (pageindex + 2 < totalpage) {
                out.print(" <li class=\"page-item\"> <a class=\"page-link\" href=\""+url+"?page=" + (pageindex + 2) + item + "\">" + (pageindex + 2) + "</a></li>");
            }
            if (pageindex != totalpage) {
                out.print(" <li class=\"page-item\"> <a class=\"page-link\" href=\""+url+"?page=" + (pageindex + 1) + item + "\">Next</a></li>");
            }

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in Pager tag", ex);
        }
    }

}