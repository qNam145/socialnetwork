<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <title>Dashboard</title>
                <!-- Plugin css for this page -->
                <link rel="stylesheet" type="text/css" href="/js/select.dataTables.min.css">
                <!-- End plugin css for this page -->
                <!-- inject:css -->
                <link rel="stylesheet" href="/css/style.css">
                <!-- endinject -->
                <link rel="shortcut icon" href="/images/favicon.png" />
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

            </head>

            <body class="with-welcome-text">
                <div class="container-scroller">
                    <!-- partial:partials/_navbar.html -->
                    <!-- include navbar here -->
                    <!-- partial -->
                    <div class="container-fluid page-body-wrapper">
                        <!-- partial:partials/_sidebar.html -->
                        <jsp:include page="../layout/sidebar.jsp" />
                        <!-- partial -->
                        <div class="main-panel">
                            <div class="content-wrapper">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="home-tab">
                                            <!-- content-here -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            
                    <nav style="display: flex; justify-content: center">
                        <ul class="pagination pagination-circle">
                            <li class="prv-btn"><a class="page-link">Previous</a></li>
                            <c:forEach var="page" begin="1" end="${totalPages}">
                                <li class="page-item"><a class="page-link"
                                        href="/admin/accounts?page=${page}">${page}</a></li>
                            </c:forEach>
                            <li class="next-btn"><a class="page-link">Next</a></li>
                        </ul>
                    </nav>
                </div>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/custom.js"></script>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                    crossorigin="anonymous"></script>
                <!-- End custom js for this page-->
            
            </body>

            </html>