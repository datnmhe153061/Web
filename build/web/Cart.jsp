<%-- 
    Document   : Cảt
    Created on : Mar 14, 2022, 4:31:18 PM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
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
                <c:when test="${listcart.size()==null||listcart.size()==0}">
                    <h1 class="text-warning text-center m-5">Giỏ hàng không có sản phẩm nào</h1>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
                </c:when>
                <c:otherwise>
                    <h1 class="text-warning text-center m-5">Giỏ hàng</h1>
                    <table class="table">
                        <thead>
                            <tr class="table-dark">
                                <th scope="col">Id</th>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Giá tiền</th>
                                <th scope="col">Tổng giá</th>
                                <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${listcart}">
                            <form action="update-quantity">
                                <tr>
                                <input type="hidden" name="productId" value="${c.product.id}" />
                                <th scope="row">${c.product.id}</th>
                                <td><img src="${c.product.image}" width="120"/></td>
                                <td>${c.product.name}</td>
                                <td><input onchange="this.form.submit()" type="number" name="quantity" value="${c.quantity}" style="width: 50px"/></td>
                                <td><fmt:formatNumber value="${c.product.promotionprice}" type="currency"/></td>
                                <td><fmt:formatNumber value="${c.product.promotionprice*c.quantity}" type="currency"/></td>
                                <td><a onclick="showMess(${c.product.id})" class="btn btn-outline-danger"><i class="fa-solid fa-trash-can"></i> Delete</a></td>
                                </tr>
                            </form>
                        </c:forEach>
                        <tr style="border: #fff">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><h3>Tổng tiền:</h3></td>
                            <td><h3><fmt:formatNumber value="${totalMoney}" type="currency"/></h3></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                    <a href="HomeController" class="btn btn-info w-25"><i class="fa-solid fa-angle-left"></i> Tiếp tục mua sắm</a>
                    <a href="checkout" class="btn btn-success w-25" style="float: right">Mua <i class="fa-solid fa-angle-right"></i></a>
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
           var option = confirm('Bạn có chắc chắn xóa sản phẩm này ra khỏi đơn hàng không?');
           if(option == true){
               window.location.href = 'delete-cart?productId='+id;
           }
       }
   </script>
    </body>
</html>
