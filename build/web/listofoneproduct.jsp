<%-- 
    Document   : listofoneproduct
    Created on : Mar 12, 2022, 6:49:53 PM
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
        <!-- Navigation-->
        <jsp:include page="header.jsp" ></jsp:include>
            <!-- Section-->
            <section class="py-5">
                <div class="container px-4 px-lg-5 mt-5">
                    <div id="column-left" class="row">
                        <div class="col-md-3">
                            <div class="column-block">
                                <div class="columnblock-title"><h1>Categories</h1></div>
                                <div class="category_block" style="background-color: white">
                                    <ul class="list-group">
                                    <c:forEach items="${listcategory}" var="s" varStatus="loop">
                                        <li class="">
                                            <i class="fa-solid fa-plus"></i>
                                            <a class="${s.id==cid?"active":""}" href="filter-category?categoryId=${s.id}">${s.name}</a>
                                            <span class="badge bg-secondary text-white ms-1 rounded-pill" style="background-color: #0a53be">${s.size}</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                            <div>
                                
                            </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row row-second">
                            <div class="cms_banner">
                                <div class="col-md-4 cms-banner-left"> <a href="#"><img alt="#" src="image/banners/sub-banner4.jpg"></a> </div>
                                <div class="col-md-4 cms-banner-middle"> <a href="#"><img alt="#" src="image/banners/sub-banner5.jpg"></a> </div>
                                <div class="col-md-4 cms-banner-right"> <a href="#"><img alt="#" src="image/banners/sub-banner6.jpg"></a> </div>
                            </div>
                        </div>
                        <div><h1>List Product</h1></div>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            <c:if test="${nofound != null}">
                                <h3>${nofound}</h3>
                            </c:if>
                            <c:forEach items="${listproduct}" var="p" varStatus="loop">
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
                                                <span class="text-muted text-decoration-line-through"><fmt:formatNumber value="${p.promotionprice}" type="currency"/></span>
                                                <span class="fw-bold fs-5" style="color: red;"><fmt:formatNumber value="${p.price}" type="currency"/></span>
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
                                        <li class="page-item"><a class="page-link" href="filter-category?index=${tag-1}&categoryId=${cid}">Previous</a></li>  
                                        </c:if>

                                    <c:forEach begin="1" end="${page}" var="i">
                                        <li class="page-item ${tag==i?"active":""}"><a class="page-link" href="filter-category?index=${i}&categoryId=${cid}">${i}</a></li>
                                        </c:forEach>
                                        <c:if test="${tag < page}">
                                        <li class="page-item"><a class="page-link" href="filter-category?index=${tag+1}&categoryId=${cid}">Next</a></li>
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
