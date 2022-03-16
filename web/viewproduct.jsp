<%-- 
    Document   : view
    Created on : Mar 14, 2022, 12:58:46 AM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Single Page -->
            <div class="banner-bootom-w3-agileits py-5">
                <div class="container py-xl-4 py-lg-2">
                    <!-- tittle heading -->
                    <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                    </h3>
                    <!-- //tittle heading -->
                    <div class="row">
                        <div class="col-lg-5 col-md-8 single-right-left ">
                            <div class="grid images_3_of_2">
                                <div class="flexslider">
                                    <div class="thumb-image">
                                        <img src="${getproduct.image}" data-imagezoom="true" class="img-fluid" alt=""> 
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 single-right-left simpleCart_shelfItem">
                        <h3 class="mb-3 pb-3 fs-1" style="border-bottom: #ffc107 solid thin">${getproduct.name}</h3>
                        <p class="mb-3">
                            <span class="item_price fs-5">Giá thị trường:</span> <span class="item_price text-decoration-line-through"><fmt:formatNumber value="${getproduct.price}" type="currency"/></span><br>    
                            <span class="item_price fs-4">Giá bán: </span><span class="fs-2 text-danger fw-bold"><fmt:formatNumber value="${getproduct.promotionprice}" type="currency"/></span><br>
                            <span class="item_price">Tiết kiệm:</span><span class="badge bg-dark text-white position-absolute mx-2"><fmt:formatNumber type="number" maxFractionDigits="0" value="${100-(getproduct.promotionprice/getproduct.price*100)}" />%</span><br>
                            <span class="item_price">Tình trạng: </span>
                            <c:if test="${getproduct.quantity > 0}">
                                <span class="fw-bold">Còn hàng </span><span>(${getproduct.quantity} sản phẩm)</span><br>
                            </c:if>
                            <c:if test="${getproduct.quantity < 1}">
                                <span class="fw-bold">HẾT HÀNG</span><br>
                            </c:if>

                        </p>
                        <div class="single-infoagile">
                            <span class="fs-5">Mô tả: </span><span class="fw-bold">${getproduct.name} </span><span>${getproduct.description}</span>
                        </div>
                        <div class="product-single-w3l">
                            <p class="my-3">
                                <label>Free ship</label><br>
                                <i class="far fa-hand-point-right mr-2"></i>
                                <label class="fw-bold">1 Năm</label> Bảo Hành Toàn Quốc</p>
                            <p class="my-sm-4 my-3">
                            <div class="occasion-cart">
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="AddToCartServlet" method="POST">
                                        <fieldset>
                                            <input type="hidden" name="productId" value="${getproduct.id}" />
                                            <c:if test="${getproduct.quantity >0}">
                                                <input type="submit" name="submit" value="Thêm vào giỏ hàng" class="btn btn-info text-white"/>
                                            </c:if>
                                            <c:if test="${getproduct.quantity<1}">
                                                <button type="button" class="btn btn-danger">HẾT HÀNG</button>
                                            </c:if>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Single Page -->

        <!-- middle section -->

        <!-- middle section -->

        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>
