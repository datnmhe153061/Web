<%-- 
    Document   : thank
    Created on : Mar 16, 2022, 11:28:52 AM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet"/>
        <style>
            .form-group{
                text-align: center;
            }
            .form-group a{
                outline: none;
                background: rgb(43, 176, 216);
                width: 25%;
                border: 0;
                border-radius: 4px;
                padding: 12px 20px;
                color: #FFFFFF;
                font-family: inherit;
                font-size: inherit;
                font-weight: 500;
                line-height: inherit;
                text-transform: uppercase;
                cursor: pointer;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container px-4 px-lg-5 " style="min-height: 500px">
                <div class="row">
                    <h1 class="text-center my-5">Cảm ơn quý khách đã đặt hàng.<br>Chúng tôi sẽ liên hệ sớm nhất</h1>
                    <div class="form-group">
                        <a href="HomeController"><i class="fa-solid fa-angle-left"></i> Tiếp tục mua hàng</a>
                    </div>
                </div>
            </div>    
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>
