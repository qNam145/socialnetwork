<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <svg xmlns="http://www.w3.org/2000/svg" height="30" width="30" fill="currentColor"
                        class="bi bi-image pt-2">
                        <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0" />
                        <path
                            d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1z" />
                    </svg>
                    <a class="navbar-brand" href="#">SN</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link rounded-pill" aria-current="page" href="#"
                                    onclick="ChangeCurrentActive(this)">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link rounded-pill" href="#" onclick="ChangeCurrentActive(this)">Watch</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link rounded-pill" href="#"
                                    onclick="ChangeCurrentActive(this)">Explore</a>
                            </li>
                        </ul>
                        <form class="d-flex col-6 mx-auto" role="search">
                            <div class="input-group">
                                <input class="form-control border-end-0 border rounded-pill" type="search"
                                    placeholder="search" id="example-search-input" />
                                <span class="input-group-append">
                                    <button class="btn btn-outline-secondary bg-white border-0 rounded-pill ms-n5"
                                        type="button">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="30"
                                            fill="currentColor" class="bi bi-search pt-2">
                                            <path
                                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                                        </svg>
                                    </button>
                                </span>
                            </div>
                        </form>
                        <div class="d-flex">
                            <a href="/login" class="btn btn-md me-2 btn-secondary px-3 py-2 rounded-pill" type="button"
                                onclick="togglePopup()">
                                Login
                            </a>
                            <a href="/register" class="btn btn-md btn-outline-dark px-3 py-2 rounded-pill"
                                type="button">
                                Sign Up
                            </a>
                        </div>
                    </div>
                </div>
            </nav>