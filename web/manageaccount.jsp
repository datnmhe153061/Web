<%-- 
    Document   : manageaccount
    Created on : Mar 14, 2022, 12:53:47 AM
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
                            <h2>Quản lí <b>tài khoản</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Admin</th>
                            <th>Seller</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="a">
                        <form action="set-admin" method="post">
                            <tr>
                                <th><input  name="accountid" type="hidden" value="${a.id}">${a.id}</th>
                                <td>${a.name}</td>
                                <td>${a.username}</td>
                                <td>${a.password}</td>
                                <td><a><input name="admin" type="checkbox" ${a.admin==true?"checked":""}/></td>
                                <td><input name="seller" type="checkbox" ${a.seller==true?"checked":""}/></td>
                                <td>
                                    <a onclick="showMess(${a.id})" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                                <td>
                                    <input type="submit" class="btn btn-success" value="Save"/>
                                </td>
                            </tr>
                        </form>    
                        </c:forEach>
                    </tbody>
                </table>
                <div class="text-center">
                    <ul class="pagination">
                        <tag:TagHandler totalrecords="${newlist.size()}" url="manage-account" pageindex="${index}" item=""></tag:TagHandler>
                    </ul>
                </div>
            </div>
            <a href="HomeController"><button type="button" class="btn btn-primary"><i class="fa-solid fa-angle-left"></i> Trở về trang chủ</button></a>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/SmoothScroll.min.js"></script>
        <script>
        function showMess(id){
           var option = confirm('Bạn có chắc chắn xóa tài khoản này không?');
           if(option == true){
               window.location.href = 'delete-account?accountid='+id;
           }
       }
   </script>
    </body>
</html>
