<%--
  Created by IntelliJ IDEA.
  User: hangnt
  Date: 22/01/2023
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="nav-link active" aria-current="page" href="/lop-hoc/hien-thi">Lớp học</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link " href="/sinh-vien/hien-thi">Sinh Viên</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<main class="container">
    <h3 style="text-align: center;">Quản Lý Lớp Học</h3>
    <section>
        <form action="/lop-hoc/add-update?id=${lopHoc.id}" method="post">
            <div class="row mt-4">
                <div class="col-6">
                    <label>Mã lớp</label>
                    <input type="text" class="form-control" name="maLop" value="${lopHoc.maLop}"/>
                    <span style="color: red;">${errors.get("MA_EMPTY")}</span>
                </div>
                <div class="col-6">
                    <label>Tên lớp</label>
                    <input type="text" class="form-control" name="tenLop" value="${lopHoc.tenLop}"/>
                    <span style="color: red;">${errors.get("TEN_EMPTY")}</span>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-12">
                    <label>Số lượng SV</label>
                    <input type="text" class="form-control" name="soLuongSinhVien" value="${lopHoc.soLuongSV}"/>
                    <span style="color: red;">${errors.get("NUMBER_EMPTY")}</span>
                </div>
            </div>

            <div class="row mt-4" style="justify-content: center">
                <button class="btn btn-success col-1 m-3">
                    Add
                </button>
                <button class="btn btn-primary col-1 m-3">
                    Update
                </button>
            </div>
        </form>
    </section>
    <section>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Mã lớp</th>
                <th scope="col">Tên lớp</th>
                <th scope="col">Số lượng SV</th>
                <th colspan="2">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${lops}" var="l">
                <tr>
                    <td>${l.id}</td>
                    <td>${l.maLop}</td>
                    <td>${l.tenLop}</td>
                    <td>${l.soLuongSV}</td>
                    <td>
                        <a href="/lop-hoc/detail?id=${l.id}" class="btn btn-success " tabindex="-1" role="button"
                           aria-disabled="true">Detail</a>
                        <a href="/lop-hoc/delete?id=${l.id}" class="btn btn-danger " tabindex="-1" role="button"
                           aria-disabled="true">Remove</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</main>
<footer><p style="text-align: center;">HangNT169</p></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
</body>
</html>
