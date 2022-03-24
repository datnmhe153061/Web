<%-- 
    Document   : editorderdetail
    Created on : Mar 24, 2022, 9:27:46 AM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tag" uri="/WEB-INF/tlds/mytag.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí đơn hàng</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet"/>
    </head>

    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-md-10">
                            <h2>Quản lí <b>chi tiết đơn hàng</b></h2>
                        </div>
                        <div class="col-md-2">
                            <c:if test="${sessionScope.account!=null}">
                                <a class="nav-link dropdown-toggle btn btn-success text-white" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user"></i> ${sessionScope.account.name}</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <c:if test="${sessionScope.account.admin == true}">
                                        <li><a class="dropdown-item" href="manage-account">Quản lí tài khoản</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.account.admin == true || sessionScope.account.seller == true}">
                                        <li><a class="dropdown-item" href="manage-product">Quản lí sản phẩm</a></li>
                                        <li><a class="dropdown-item" href="manage-order">Quản lí đơn hàng</a></li>
                                        </c:if>
                                    <li><a class="dropdown-item" href="logout">Đăng Xuất</a></li>
                                </ul>
                            </c:if>
                        </div>
                    </div>
                </div>
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
                            <th scope="col">Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="c" items="${listorderdetail}">
                        <form action="edit-orderdetail" method="post">
                            <tr>
                                <th scope="row">#${c.id}</th>
                                <input type="hidden" name="productId" value="${c.product.id}" />
                                <input type="hidden" name="orderId" value="${c.order.id}" />
                                <td>${c.order.createdate}</td>
                                <td>${c.product.name}</td>
                                <td><img src="${c.product.image}" width="100"/></td>
                                <td><fmt:formatNumber value="${c.product.promotionprice}" type="currency"/></td>
                                <td><input onchange="this.form.submit()" type="number" name="quantity" value="${c.quantity}" style="width: 50px"/></td>
                                <td><fmt:formatNumber value="${c.quantity*c.product.promotionprice}" type="currency"/></td>
                                <td>
                                    <input type="hidden" class="btn btn-success" value="Save"/>
                                    <a onclick="showMess(${c.product.id}, ${c.order.id})" href="" class="delete btn btn-danger" data-toggle="modal">Delete</a>
                                </td>
                            </tr>
                            </form>
                        </c:forEach>

                    </tbody>
                </table>
  
            </div>
            <a href="HomeController"><button type="button" class="btn btn-primary"><i class="fa-solid fa-angle-left"></i> Trở về trang chủ</button></a>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/SmoothScroll.min.js"></script>
        <script>
            function showMess(productid, orderid){
           var option = confirm('Bạn có chắc chắn xóa sản phẩm này ra khỏi đơn hàng không?');
           if(option == true){
               window.location.href = 'manage-delete-orderdetail?productId='+productid+'&orderId='+orderid;
           }
       }
        </script>
    </body>
</html>

