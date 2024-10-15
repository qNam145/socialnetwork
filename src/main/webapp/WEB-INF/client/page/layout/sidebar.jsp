<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!-- <div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 4.5rem;">
                <a href="/" class="d-block p-3 link-dark text-decoration-none" title="" data-bs-toggle="tooltip"
                    data-bs-placement="right" data-bs-original-title="Icon-only">
                    <svg class="bi" width="40" height="32">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                    <span class="visually-hidden">Icon-only</span>
                </a>
                <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
                    <li class="nav-item">
                        <a href="#" class="nav-link active py-3 border-bottom" aria-current="page" title=""
                            data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Home">
                            <svg class="bi" width="24" height="24" role="img" aria-label="Home">
                                <use xlink:href="#home">dasdsa</use>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link py-3 border-bottom" title="" data-bs-toggle="tooltip"
                            data-bs-placement="right" data-bs-original-title="Dashboard">
                            <svg class="bi" width="24" height="24" role="img" aria-label="Dashboard">
                                <use xlink:href="#speedometer2">asdsadsadsadsad</use>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link py-3 border-bottom" title="" data-bs-toggle="tooltip"
                            data-bs-placement="right" data-bs-original-title="Orders">
                            <svg class="bi" width="24" height="24" role="img" aria-label="Orders">
                                <use xlink:href="#table"></use>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link py-3 border-bottom" title="" data-bs-toggle="tooltip"
                            data-bs-placement="right" data-bs-original-title="Products">
                            <svg class="bi" width="24" height="24" role="img" aria-label="Products">
                                <use xlink:href="#grid"></use>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link py-3 border-bottom" title="" data-bs-toggle="tooltip"
                            data-bs-placement="right" data-bs-original-title="Customers">
                            <svg class="bi" width="24" height="24" role="img" aria-label="Customers">
                                <use xlink:href="#people-circle"></use>
                            </svg>
                        </a>
                    </li>
                </ul>
                <div class="dropdown border-top">
                    <a href="#"
                        class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle"
                        id="dropdownUser3" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="mdo" width="24" height="24" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser3">
                        <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                    </ul>
                </div>
            </div> -->
            <div class="container-fluid">
                <div class="row">
                    <!-- Sidebar -->
                    <div id="sidebar" class="col-md-3 col-lg-2 p-0">
                        <div class="list-group list-group-flush">
                            <a href="/" class="list-group-item list-group-item-action d-flex justify-content-center">
                                <i class="material-icons" style="font-size: 42px;">&#xe88a;</i>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action d-flex justify-content-center">
                                <i class="material-icons" style="font-size: 40px;">&#xe853;</i>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action d-flex justify-content-center"
                                id="openPopupBtn" onclick="preventDefault()">
                                <p>
                                    <span class="glyphicon" style="font-size: 40px;">&#xe081;</span>
                                </p>
                            </a>
                            <a href="#" class="list-group-item list-group-item-action d-flex justify-content-center">
                                <p>
                                    <span class="glyphicon" style="font-size: 40px;">&#xe123;</span>
                                </p>
                            </a>
                            <form method="post" action="/logout">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <button
                                    class="list-group-item list-group-item-action d-flex justify-content-center">
                                    <i class="material-icons" style="font-size: 40px;">&#xe879;</i>
                                </button>
                            </form>
                            <!-- <a href="/logout" class="list-group-item list-group-item-action d-flex justify-content-center">
                                <i class="material-icons" style="font-size: 40px;">&#xe879;</i>
                            </a> -->
                        </div>
                    </div>
                </div>
            </div>