<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!doctype html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Document</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous">
            </head>

            <body>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous" />
                <div class="container">
                    <form:form action="/register" method="post" modelAttribute="regAccount">
                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <h2 class="text-center">Sign Up</h2>
                                <div class="form-group mb-3">
                                    <label for="">Email</label>
                                    <form:input class="form-control" type="Email" name="email" required="true"
                                        placeholder="Enter your email" path="email" id="email" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="password">Password</label>
                                    <form:input class="form-control" type="password" name="password" required="true"
                                        placeholder="Enter your password" minlength="8" maxlength="20"
                                        path="password" />
                                    <small id="passwordHelpInline" class="text-muted">
                                        Must be 8-20 characters long.
                                    </small>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="fullName">Full Name</label>
                                    <form:input type="text" name="fullName" required="true" class="form-control"
                                        placeholder="Full Name" path="fullName" />
                                </div>
                                <div class="form-group mb-3">
                                    <label for="username">Username</label>
                                    <form:input name="username" type="text" class="form-control" placeholder="Username"
                                        path="username" />
                                </div>
                                <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1"
                                        required="true" />
                                    <label class="custom-control-label" for="customCheck1">Agree to Terms and
                                        Conditions</label>
                                </div>
                                <div class="d-flex justify-content-center align-items-center">
                                    <button type="submit" class="btn btn-primary d-block w-100 col-6 btn-submit-form">
                                        Sign Up
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </body>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>

            </html>