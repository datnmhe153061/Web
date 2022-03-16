<%-- 
    Document   : updateproduct
    Created on : Mar 15, 2022, 5:54:58 PM
    Author     : Laptop88
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    </head>
    <body>
        <!-- Edit Modal HTML -->
        <div id="updateEmployeeModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="edit-product" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Sửa thông tin sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Id</label>
                                <input value="${product.id}" name="productid" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input value="${product.name}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input  value="${product.image}" name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá thị trường</label>
                                <input value="${product.price}" name="price" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá bán</label>
                                <input value="${product.promotionprice}" name="promotionprice" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Số lượng</label>
                                <input value="${product.quantity}" name="quantity" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea name="description" class="form-control" required>${product.description}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Thương hiệu</label>
                                <input value="${product.brand}" name="brand" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Danh mục</label>
                                <select name="categoryid" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listcategory}" var="o">
                                        <option ${o.id==product.listproduct_id?"selected":""} value="${o.id}">${o.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <a href="manage-product"><input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy"></a>
                            <input type="submit" class="btn btn-success" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script src="js/SmoothScroll.min.js"></script>
    </body>
</html>

