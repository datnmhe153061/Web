<%-- 
    Document   : listorder
    Created on : Mar 18, 2022, 10:27:25 AM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đơn hàng</title>
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
                <c:when test="${listorder.size()==0}">
                    <h1 class="text-warning text-center m-5">Chưa đặt đơn hàng nào</h1>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
                </c:when>
                <c:otherwise>
                    <h1 class="text-warning text-center m-5">Danh sách đơn hàng</h1>
                    <table class="table text-center">
                        <thead>
                            <tr class="table-dark">
                                <th scope="col">Mã đặt hàng</th>
                                <th scope="col">Ngày đặt hàng</th>
                                <th scope="col">Trạng thái</th>
                                <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${listorder}">
                                <tr>
                                <th scope="row">#${c.id}</th>
                                <td>${c.createdate}</td>
                                <c:if test="${c.status == false}">
                                    <td><button type="button" class="btn btn-warning">Chờ xác nhận</button></td>
                                </c:if>
                                <c:if test="${c.status == true}">
                                    <td><button type="button" class="btn btn-success">Đã gửi</button></td>
                                </c:if>
                                <td>
                                    <a href="order-detail?orderid=${c.id}" class="btn btn-outline-info"> Xem chi tiết</a>
                                    <c:if test="${c.status == false}">
                                        <a onclick="showMess(${c.id})" class="btn btn-outline-danger"><i class="fa-solid fa-trash-can"></i> Hủy đơn hàng</a>
                                    </c:if>
                                </td>
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
        <script>
        function showMess(id){
           var option = confirm('Bạn có chắc chắn xóa đơn hàng này không?');
           if(option == true){
               window.location.href = 'delete-order?orderid='+id;
           }
       }
   </script>
    </body>
</html>
