<%-- 
    Document   : viewhistorybuy
    Created on : Mar 16, 2022, 1:20:38 PM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tài khoản</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container px-4 px-lg-5 " style="min-height: 500px">
                <div class="row justify-content-center">
                    <h1 class="text-warning text-center m-5">Thông tin tài khoản</h1>
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header bg-secondary fs-3 fw-bold text-center">Cập nhập</div>
                            <div class="card-body">

                                <form class="form-horizontal" action="update-account" method="post">

                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label fs-4">Họ Tên</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa fa-user fa btn btn-primary h-100 py-2" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="name" id="name" placeholder="Nhập tên của bạn" value="${infoaccount.name}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="username" class="cols-sm-2 control-label fs-4">Tên đăng nhập</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa fa-user fa btn btn-primary h-100 py-2" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="username" id="username" placeholder="" value="${infoaccount.username}" readonly/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label fs-4">Mật Khẩu</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa-solid fa-key btn btn-primary h-100 py-2"></i></span>
                                                <input type="text" class="form-control" name="password" id="password" value="${infoaccount.password}" readonly />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label fs-4">Email</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa-solid fa-envelope btn btn-primary h-100 py-2" aria-hidden="true"></i></span>
                                                <input type="email" class="form-control" name="email" id="email" value="${infoaccount.email}" placeholder="Nhập Email" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label fs-4">Số điện thoại</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa-solid fa-phone btn btn-primary h-100 py-2" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="phone" id="phone" value="${infoaccount.phone}" placeholder="Nhập số điện thoại" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="cols-sm-2 control-label fs-4">Địa chỉ</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group mb-4">
                                                <span class="input-group-addon"><i class="fa-solid fa-location-dot btn btn-primary h-100 py-2" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="address" id="address" value="${infoaccount.address}" placeholder="Nhập địa chỉ" />
                                            </div>
                                        </div>
                                    </div>
                                                <c:if test="${save != null}">
                                                    <span class="w-100 mb-4 text-success">${save}</span><br>
                                                </c:if>
                                        <input type="submit" class="btn btn-primary btn-lg btn-success login-button form-group mb-4" value="Lưu"/>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
                <a href="HomeController" class="btn btn-info w-25 mt-5"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
            
        </div>    
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>
