<%-- 
    Document   : orderdetail
    Created on : Mar 19, 2022, 2:42:48 AM
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
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container px-4 px-lg-5 " style="min-height: 500px">
            <c:choose>
                <c:when test="${listorderdetail.size()==0}">
                    <h1 class="text-warning text-center m-5">Chưa đặt đơn hàng nào</h1>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
                </c:when>
                <c:otherwise>
                    <h1 class="text-warning text-center m-5">Chi tiết đơn hàng #${listorderdetail.get(0).order.id}</h1>
                    <table class="table text-center">
                        <thead>
                            <tr class="table-dark">
                                <th scope="col">Mã đặt hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Tổng giá</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${listorderdetail}">
                                <tr>
                                    <th scope="row">#${c.id}</th>
                                    <td>${c.order.createdate}</td>
                                    <td>${c.product.name}</td>
                                    <td><img src="${c.product.image}" width="100"/></td>
                                    <td><fmt:formatNumber value="${c.product.promotionprice}" type="currency"/></td>
                                    <td>${c.quantity}</td>
                                    <td><fmt:formatNumber value="${c.quantity*c.product.promotionprice}" type="currency"/></td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-md-8">

                        </div>
                        <div class="col-md-4">
                            <table class="fs-5" style="">
                                <tr class="fs-4 fw-bold">
                                    <td>Tổng tiền: </td>
                                    <td class="px-4"><fmt:formatNumber value="${totalMoney}" type="currency"/></td>
                                </tr>
                                <tr>
                                    <td>Tên người nhận: </td>
                                    <td class="px-4">${listorderdetail.get(0).order.ship.name}</td>
                                </tr>
                                <tr>
                                    <td>Số điện thoại: </td>
                                    <td class="px-4">${listorderdetail.get(0).order.ship.phone}</td>
                                </tr>
                                <tr>
                                    <td>Địa chỉ: </td>
                                    <td class="px-4">${listorderdetail.get(0).order.ship.address}</td>
                                </tr>
                                <tr>
                                    <td>Chú thích: </td>
                                    <td class="px-4">${listorderdetail.get(0).order.ship.note}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
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
