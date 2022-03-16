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
        <title>JSP Page</title>
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
            <c:choose>
                <c:when test="${list.size()==0}">
                    <h1 class="text-warning text-center m-5">Không có lịch sử mua hàng sản</h1>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
                </c:when>
                <c:otherwise>
                    <h1 class="text-warning text-center m-5">Lịch sử mua hàng</h1>
                    <table class="table">
                        <thead>
                            <tr class="table-dark">
                                <th >Id</th>
                                <th >Mã sản phẩm</th>
                                <th >Hình ảnh</th>
                                <th >Tên sản phẩm</th>
                                <th >Ngày mua</th>
                                <th >Người nhận</th>
                                <th >Số điện thoại</th>
                                <th >Địa chỉ</th>
                                <th >Số lượng</th>
                                <th >Giá tiền</th>
                                <th >Tổng giá</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${list}">
                                <tr>
                                    <th>${c.id}</th>
                                    <th>${c.productid}</th>
                                    <td><img src="${c.productimage}" width="120"/></td>
                                    <td>${c.productname}</td>
                                    <td>${c.date}</td>
                                    <td>${c.recipient}</td>
                                    <td>${c.phone}</td>
                                    <td>${c.address}</td>
                                    <td>${c.quantity}</td>
                                    <td><fmt:formatNumber value="${c.productprice}" type="currency"/></td>
                                    <td><fmt:formatNumber value="${c.productprice*c.quantity}" type="currency"/></td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Tiếp tục mua sắm</a>
                    </c:otherwise>
                </c:choose>
        </div>    
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>
