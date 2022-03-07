<%-- 
    Document   : home
    Created on : Feb 24, 2022, 11:15:57 AM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <div class="item"> <a href="#"><img name="imgch" onclick="changeImage()" src="image/banners/Main-Banner1.jpg" alt="main-banner1" class="img-responsive" /></a> </div>
                        </div>   
                    </div>
                </div>
                <div class="row row-second">
                    <div class="cms_banner">
                        <div class="col-md-4 cms-banner-left"> <a href="#"><img alt="#" src="image/banners/subbanner1.jpg"></a> </div>
                        <div class="col-md-4 cms-banner-middle"> <a href="#"><img alt="#" src="image/banners/subbanner2.jpg"></a> </div>
                        <div class="col-md-4 cms-banner-right"> <a href="#"><img alt="#" src="image/banners/subbanner3.jpg"></a> </div>
                    </div>
                </div>
            </header>
            <script>
                var index = 1;
                changeImage = function () {
                    var imgs = ["image/banners/Main-Banner1.jpg", "image/banners/Main-Banner2.jpg", "image/banners/Main-Banner3.jpg"];
                    document.images['imgch'].src = imgs[index];
                    index++;
                    if (index == 3) {
                        index = 0;
                    }
                }
                setInterval(changeImage, 5000);
            </script>
            <!-- Section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    <div id="column-left" class="row">
                        <div class="col-md-3">
                            <div class="column-block">
                                <div class="columnblock-title">Categories</div>
                                <div class="category_block">
                                    <ul class="list-group">
                                    <c:forEach items="${listcategory}" var="s" varStatus="loop">
                                        <li class="list-group-item"><a href="filter-category?categoryId=${s.id}">${s.name}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            <c:forEach items="${listpage}" var="p" varStatus="loop">
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
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
                                                <span class="text-muted text-decoration-line-through">${p.promotionprice}</span>
                                                ${p.price}
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="d-flex justify-content-center">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <c:if test="${tag > 1}">
                                        <li class="page-item"><a class="page-link" href="HomeController?index=${tag-1}">Previous</a></li>  
                                    </c:if>
                                    
                                    <c:forEach begin="1" end="${page}" var="i">
                                        <li class="page-item ${tag==i?"active":""}"><a class="page-link" href="HomeController?index=${i}">${i}</a></li>
                                    </c:forEach>
                                    <c:if test="${tag < page}">
                                        <li class="page-item"><a class="page-link" href="HomeController?index=${tag+1}">Next</a></li>
                                    </c:if>
                                </ul>
                              </nav>
                        </div>
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
    </body>
</html>

