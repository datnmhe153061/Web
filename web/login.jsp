<%-- 
    Document   : login
    Created on : Mar 14, 2022, 12:53:27 AM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="form">
            <div class="form-toggle"></div>
            <div class="form-panel one">
                <div class="form-header">
                    <h1>Đăng nhập tài khoản</h1>
                </div>
                <div class="form-content">
                    <form action="login" method="POST">
                        <div class="form-group">
                            <label for="username">Tài khoản</label>
                            <input id="username" type="text" name="username" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input id="password" type="password" name="password" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <label class="form-remember">
                                <input type="checkbox" name="remember" value="ON"/>Ghi nhớ tôi
                        </div>
                        <c:if test="${alert!=null}">
                            <div class="form-group">
                                <p style="color: red">${alert}</p>
                            </div>
                        </c:if>
                        <div class="form-group">
                            <button type="submit">Đăng nhập</button>
                        </div>
                        <div class="form-group">
                            <a class="bg-info w-100 text-center" href="register.jsp"><i class="fa-solid fa-user-plus"></i> Đăng kí</a>
                        </div>
                         <div class="form-group">
                             <a class="bg-info" href="HomeController"><i class="fa-solid fa-angle-left"></i> Trở về</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="js/SmoothScroll.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</html>
