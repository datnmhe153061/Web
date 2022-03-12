<%-- 
    Document   : header
    Created on : Mar 6, 2022, 1:34:29 PM
    Author     : Laptop88
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <div class="col-sm-4 col-xs-6 mb-2 header-left">
            <div class="shipping">
                <div>
                    <img src="image/product/shipping.png" alt="">
                    <div class="shipping-text">Free Shipping <span class="shipping-detail">Free on all products</span></div>
                </div>
            </div>        
        </div>
        <div class="col-sm-4 col-xs-6 mb-2 header-middle">
            <div class="header-middle-top">
                <div id="logo"> <a href="#"><img src="image/product/logo.png" title="E-Commerce" alt="E-Commerce" class="img-responsive" /></a> </div>
            </div>

        </div>
        <div class="float-right" class="col-sm-4 col-xs-6 mb-2 header-right">
            <div class="top-right pull-right" style="box-shadow: 1px 1px 1px 1px tomato; border-radius: 5px">
                <div id="top-links" class="nav pull-right">
                    <div class="dropdown">
                        <a class="nav-link dropdown-toggle" style="color: black" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">My Account</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Register</a></li>
                            <li><a class="dropdown-item" href="#">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div>
                <form class="d-flex mt-2" style="box-shadow: 1px 1px 1px 1px tomato; border-radius: 5px">
                    <button class="btn float-none " type="submit">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                    </button>
                </form>
            </div>
        </div>
    </div>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5 menu1">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">Page</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">Contact Us</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">All Products</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <form class="d-flex mt-3" action="SearchServlet" method="post">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="textsearch" value="${txt} ">
            <button class="btn btn-outline-dark" type="submit">Search</button>
        </form>
    </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
