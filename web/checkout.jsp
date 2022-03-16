<%-- 
    Document   : checkout
    Created on : Mar 14, 2022, 8:52:59 PM
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
                <div class="row">
                    <h1 class="text-center my-5 text-warning">Thanh toán</h1>
                    <div class="col-md-8" >
                        
                        <div class="mb-5" style="border: 1px solid #ccc; border-radius: 10px; padding: 1rem" >
                            <h3 class="text-center my-2">Sản phẩm</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Hình ảnh</th>
                                        <th scope="col">Tên sản phẩm</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Giá tiền</th>
                                        <th scope="col">Tổng giá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${carts}">
                                    <tr>
                                <input type="hidden" name="productId" value="${c.value.product.id}" />
                                <th scope="row">${c.value.product.id}</th>
                                <td><img src="${c.value.product.image}" width="100"/></td>
                                <td>${c.value.product.name}</td>
                                <td>${c.value.quantity}</td>
                                <td>${c.value.product.promotionprice}</td>
                                <td>${c.value.product.promotionprice*c.value.quantity}</td>
                                </tr>
                            </c:forEach>
                            <tr style="border: #fff">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><h3>Tổng tiền:</h3></td>
                                <td><h3>${totalMoney}đ</h3></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card mb-4 mb-lg-4" style="border: 1px solid #ccc; border-radius: 10px; padding: 1rem">
                        <div class="card-body">
                            <p><strong>Có thể thanh toán </strong></p>
                            <img class="me-2" width="45px"
                                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                                 alt="Visa" />
                            <img class="me-2" width="45px"
                                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                                 alt="American Express" />
                            <img class="me-2" width="45px"
                                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                                 alt="Mastercard" />
                            <img class="me-2" width="45px"
                                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBYt-kNCvha7Xey44Jbp38yrqgB88H1gJ41p0Y6QH7PBkod93-5zEE-5hlXh4tarHtGS0&usqp=CAU"
                                 alt="PayPal acceptance mark" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4" style="border: 1px solid #ccc; border-radius: 10px; padding: 1rem">
                    <h3>Thông tin</h3>
                    <form action="checkout" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Tên người nhận</label>
                            <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Địa chỉ</label>
                            <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="note" class="form-label">Ghi chú</label>
                            <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-success w-100">Mua hàng</button>
                        <a href="HomeController" class="btn btn-info w-100 mt-5"><i class="fa-solid fa-angle-left"></i> Trở lại mua sắm</a>
                    </form>
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
