<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="/admin">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        <hr/>
        <li class="nav-item">
            <a class="nav-link" href="/admin/accounts">
                <i class="menu-icon mdi mdi-file-document"></i>
                <span class="menu-title">Accounts</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/admin/posts">
                <i class="menu-icon mdi mdi-file-document"></i>
                <span class="menu-title">Posts</span>
            </a>
        </li>
    </ul>
</nav>