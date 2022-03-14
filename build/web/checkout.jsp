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
                    <h1>Checkout</h1>
                    <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>Cart</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="c" items="${carts}">
                            <form action="update-quantity">
                                <tr>
                                <input type="hidden" name="productId" value="${c.value.product.id}" />
                                <th scope="row">${c.value.product.id}</th>
                                <td><img src="${c.value.product.image}" width="100"/></td>
                                <td>${c.value.product.name}</td>
                                <td>${c.value.product.promotionprice}</td>
                                <td><input onchange="this.form.submit()" type="number" name="quantity" value="${c.value.quantity}"/></td>
                                <td>${c.value.product.promotionprice*c.value.quantity}</td>
                                <td><a href="delete-cart?productId=${c.value.product.id}" class="btn btn-outline-danger"><i class="fa-solid fa-trash-can"></i> Delete</a></td>
                                </tr>
                            </form>
                        </c:forEach>
                        </tbody>
                    </table>
                    <h3>Total Amount: ${totalMoney}đ</h3>
                </div>
                <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                    <h3>Information</h3>
                    <form>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Submit</button>
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
