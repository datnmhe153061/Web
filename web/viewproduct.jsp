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
                        <h3 class="mb-3">${getproduct.name}</h3>
                        <p class="mb-3">
                            Giá thị trường: <span class="item_price text-decoration-line-through">${getproduct.price}</span><br>    
                            <span class="item_price">Giá bán: ${getproduct.promotionprice}</span><br>
                            <span class="item_price">Tiết kiệm: ${getproduct.promotionprice}</span><br>
                            <span class="item_price">Tình trạng: ${getproduct.promotionprice}</span><br>

                        </p>
                        <div class="single-infoagile">
                            <span class="border-end-1">Mô tả: ${getproduct.description}</span>
                        </div>
                        <div class="product-single-w3l">
                            <p class="my-3">
                                <label>Free ship</label><br>
                                <i class="far fa-hand-point-right mr-2"></i>
                                <label>1 Năm</label> Bảo Hành Toàn Quốc</p>
                            <p class="my-sm-4 my-3">
                                <span class="item_price">Số lượng: </span><br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <a class="btn btn-outline-info mt-auto" href="AddToCartServlet?productId=${getproduct.id}" ><i class="fa-solid fa-cart-plus"></i><br>Thêm vào giỏ hàng</a>
                                <a class="btn btn-outline-info mt-auto" href="#" ><i class="fa-solid fa-cart-plus"></i><br>Mua nhanh ngay</a>
                            </div>
                           
                            </p>
                        </div>
                        <div class="occasion-cart">
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="AddProductToCartServlet" method="POST">
                                    <fieldset>
                                        <input type="hidden" name="productidb" value="${product.id}" />
                                        <c:if test="${product.soLuong>0}">
                                            <input type="submit" name="submit" value="Thêm vào giỏ hàng" class="button btn" />
                                        </c:if>
                                        <c:if test="${product.soLuong<1}">
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
