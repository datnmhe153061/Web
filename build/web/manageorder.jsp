<%-- 
    Document   : manageorder
    Created on : Mar 18, 2022, 11:39:30 PM
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
        <title>JSP Page</title>
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
                        <div class="col-sm-6">
                            <h2>Quản lí <b>đơn hàng</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Người đặt</th>
                            <th>Ngày đặt hàng</th>
                            <th>Đang chờ</th>
                            <th>Gửi đi</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="a">
                        <form action="update-order" method="post">
                            <tr>
                                <th><input  name="orderid" type="hidden" value="${a.id}">${a.id}</th>
                                <td>${a.account.name}</td>
                                <td>${a.createdate}</td>
                                <td><input type="checkbox" name="status1" ${a.status==false?"checked":""}/></td>
                                <td><input type="checkbox" name="status2" ${a.status==true?"checked":""}/></td>
                                <td>
                                    <input type="submit" value="Save"/>
                                    <a href="delete-order-mana?orderid=${a.id}" class="text-danger" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Hủy">&#xE872;</i></a>
                                </td>
                            </tr>
                        </form>    
                        </c:forEach>
                    </tbody>
                </table>
                <div class="text-center">
                    <ul class="pagination">
                        <tag:TagHandler totalrecords="${newlist.size()}" url="manage-order" pageindex="${index}" item=""></tag:TagHandler>
                    </ul>
                </div>
            </div>
            <a href="HomeController"><button type="button" class="btn btn-primary"><i class="fa-solid fa-angle-left"></i> Trở về trang chủ</button></a>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>
