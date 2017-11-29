<%-- 
    Document   : room
    Created on : Oct 21, 2017, 3:39:29 PM
    Author     : jelena
--%>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp" %>
<html>
<head>
    <title>Add Room</title>
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        body, html {
            height: 100%;
            margin: 0;
}

        .bg 
        {
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
<body>
    <div class="container-fluid bg text-center" style="align-items: center">
        <h1 style="font-size: 70px; font-weight: bolder; color: whitesmoke">Add room information</h1>
        <div class="container-fluid tb text-center" style="padding-left: 360px">
            <form:form method="POST" action="/IT355-DZ02-JelenaZivkovic2731/addRoom">
            <table class="table table bordered tb" style="background-color: #101010; color: whitesmoke; width: 50%">
                <tr>
                    <td><form:label path="roomType"><spring:message code="roomType"/></form:label></td>
                    <td style="color: black"><form:input path="roomType" /></td>
                </tr>
                <tr>
                    <td><form:label path="numOfBeds"><spring:message code="numOfBeds"/></form:label></td>
                    <td style="color: black"><form:input path="numOfBeds" /></td>
                </tr>
                <tr>
                    <td><form:label path="ac"><spring:message code="ac"/></form:label></td>
                    <td style="color: black"><form:input path="ac" /></td>
                </tr>
                <tr>
                    <td><form:label path="tv"><spring:message code="tv"/></form:label></td>
                    <td style="color: black"><form:input path="tv" /></td>
                </tr>
                <tr>
                    <td><form:label path="bathroom"><spring:message code="bathroom"/></form:label></td>
                    <td style="color: black"><form:input path="bathroom" /></td>
                </tr>
                <tr>
                    <td><form:label path="kitchen"><spring:message code="kitchen"/></form:label></td>
                    <td style="color: black"><form:input path="kitchen" /></td>
                </tr>
                <tr>
                    <td><form:label path="hairDryer"><spring:message code="hairDryer"/></form:label></td>
                    <td style="color: black"><form:input path="hairDryer" /></td>
                </tr>
                <tr>
                    <td><form:label path="price"><spring:message code="price"/></form:label></td>
                    <td style="color: black"><form:input path="price" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="color: black">
                    <input type="submit" value="Add room"/>
                    </td>
                </tr>
            </table>
            </form:form>
        </div>
    </div>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>

