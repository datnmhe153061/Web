<%-- 
    Document   : register
    Created on : Mar 16, 2022, 3:40:26 AM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/register.css" rel="stylesheet" type="text/css"/>  
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
                    <h1>Đăng kí tài khoản</h1>
                </div>
                <div class="form-content">
                    <form action="signup" method="POST">
                        <div class="form-group">
                            <label for="displayname">Tên hiển thị</label>
                            <input id="displayname" type="text" name="name" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <label for="username">Tài khoản</label>
                            <input id="username" type="text" name="user" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input id="password" type="password" name="pass" value="" required="required"/>
                        </div>
                        <div class="form-group">
                            <label for="password">Xác Nhận Mật khẩu</label>
                            <input id="password" type="password" name="repass" value="" required="required"/>
                        </div>
                        <c:if test="${alert!=null}">
                            <div class="form-group">
                                <p style="color: red">${alert}</p>
                            </div>
                        </c:if>
                        <div class="form-group">
                            <button type="submit"><i class="fa-solid fa-user-plus"></i> Đăng kí</button>
                        </div>
                        <div class="form-group">
                            <a href="HomeController"><i class="fa-solid fa-angle-left"></i> Trở về</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>

    <script src="js/SmoothScroll.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</html>
