<%-- 
    Document   : login
    Created on : Nov 29, 2017, 7:43:34 PM
    Author     : jelena
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ include file="header.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<html>
    <head>
        <title>Login Page</title>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }

            .bg{
                background-image: url("http://hdwallpaper.info/wp-content/uploads/bfi_thumb/pictures-for-background-n2y98kckuwkwmq7ukyx72hlhoxnfww5qt9mjggz880.jpg");
                height: 100%; 
                background-position: center;
                background-repeat: no-repeat;
                background-size:   cover;
            }
        
            .container-fluid {
                padding-top: 50px;
            }
        </style>
    </head>
    <body onload='document.loginForm.username.focus();'>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <c:if test="${not empty msg}">
            <div class="msg">${msg}</div>
        </c:if>
        <div class="container-fluid bg text-center" style="align-items: center">
            <h1 style="font-size: 70px; font-weight: bolder; color: whitesmoke">MetHotels</h1>
            <div class="container-fluid tb text-center" style="padding-left: 210px">
            <div id="loginbox" style="margin-top:50px; width: 30%" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                    <div class="panel-heading" style="background-color: #010101; color: whitesmoke">
                        <div class="panel-title">Login</div>
                    </div>     
                    <div style="padding-top:30px" class="panel-body" >
                        <div style="display:none;" id="login-alert" class="alert alert-danger col-sm-12"></div>
                        <form id="loginform" class="form-horizontal" role="form" action="<c:url value='/j_spring_security_check' />" method='POST'>
                            <div style="margin-bottom: 25px; padding-left: 20px" class="input-group">
                                <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Username">                                        
                            </div>

                            <div style="margin-bottom: 25px; padding-left: 20px" class="input-group">
                                <input id="login-password" type="password" class="form-control" name="password" placeholder="Password">
                            </div>

                            <div style="margin-top:10px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <input id="btn-login" class="btn btn-success" style="background-color: #003366; color: whitesmoke" name="submit" type="submit" value="Login" />
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                        </form>
                    </div>                     
                </div>  
            </div>
            </div>
        </div> 
</body>
</html>