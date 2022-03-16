<%-- 
    Document   : home
    Created on : Feb 24, 2022, 11:15:57 AM
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
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <jsp:include page="header.jsp" ></jsp:include>
            <!-- Header-->
            <header class="header">
                <div class="row row-first">
                    <div class="col-md-12">
                        <div id="main-banner" class="owl-carousel home-slider">
                            <div class="item"> <a href="#"><img name="imgch" onclick="changeImage()" src="image/banners/MainBanner1.jpg" alt="main-banner1" class="img-responsive" /></a> </div>
                        </div>   
                    </div>
                </div>
                <div class="row row-second">
                    <div class="cms_banner">
                        <div class="col-md-4 cms-banner-left"> <a href="#"><img alt="#" src="image/banners/sub-banner1.jpg"></a> </div>
                        <div class="col-md-4 cms-banner-middle"> <a href="#"><img alt="#" src="image/banners/sub-banner2.jpg"></a> </div>
                        <div class="col-md-4 cms-banner-right"> <a href="#"><img alt="#" src="image/banners/sub-banner3.jpg"></a> </div>
                    </div>
                </div>
            </header>
            <script>
                var index = 1;
                changeImage = function () {
                    var imgs = ["image/banners/MainBanner1.jpg", "image/banners/MainBanner2.jpg", "image/banners/MainBanner3.jpg"];
                    document.images['imgch'].src = imgs[index];
                    index++;
                    if (index == 3) {
                        index = 0;
                    }
                }
                setInterval(changeImage, 5000);
            </script>

            <!-- Section-->
            <section class="py-4">
                <div class="container mt-5">
                    <div id="column-left" class="row">
                        <div class="col-md-12">
                        <c:set var="count" value="0" scope="page"></c:set>
                        <c:forEach items="${listcategory}" var="c" varStatus="loop">
                            <div class="heading mb-2 mt-5" >
                                <h2 class="normal-title"><a href="#">${c.name}</a></h2>
                                <a class="normal-title-right view-all hidden-xs" href="filter-category?categoryId=${c.id}">Xem thêm <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                            <div class="row row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                <c:forEach items="${listproduct}" var="p" varStatus="loop">
                                    <c:if test="${p.listproduct_id == c.id}">
                                        <c:if test="${count < 8 }">
                                            <div class="col mb-0" style="padding: 0px 0px">
                                                <div class="card h-100">
                                                    <!-- Sale badge-->
                                                    <div class="badge bg-dark text-white position-absolute " style="top: 0.5rem; right: 0.5rem">-<fmt:formatNumber type="number" maxFractionDigits="0" value="${100-(p.promotionprice/p.price*100)}" />%</div>
                                                    <!-- Product image-->
                                                    <img class="card-img-top" src="${p.image}" alt="..." />
                                                    <!-- Product details-->
                                                    <div class="card-body p-4">
                                                        <div class="text-center">
                                                            <!-- Product name-->
                                                            <h5 class="fw-bolder">${p.name}</h5>
                                                            <!-- Product reviews-->
                                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                            </div>
                                                            <!-- Product price-->
                                                            <span class="text-muted text-decoration-line-through"><fmt:formatNumber value="${p.price}" type="currency"/></span>
                                                            <br>
                                                            <span class="fw-bold fs-5" style="color: red;"><fmt:formatNumber value="${p.promotionprice}" type="currency"/></span>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <span class="text-center"><a class="btn btn-outline-info mt-auto bg-info text-white" href="#" style="font-size: 14px"><i class="fa-solid fa-eye"></i><br>Xem Sản Phẩm</a></span>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <span class="text-center"><a class="btn btn-outline-warning mt-auto font-" href="AddToCartServlet?productId=${p.id}" style="font-size: 14px"><i class="fa-solid fa-cart-plus"></i> Thêm vào giỏ hàng</a></span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${count > 7 }">
                                    <c:set var="count" value="0" scope="page"/>
                                </c:if>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>

