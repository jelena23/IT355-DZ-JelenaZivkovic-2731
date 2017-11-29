<%-- 
    Document   : viewRoom
    Created on : Oct 21, 2017, 3:55:34 PM
    Author     : jelena
--%>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="header.jsp" %>
<html>
<head>
    <title>Rooms</title>
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
        <h1 style="font-size: 70px; font-weight: bolder; color: whitesmoke">Room information</h1>
        <div class="container-fluid tb text-center" style="padding-left: 360px">
            <table class="table table bordered tb" style="background-color: #101010; color: whitesmoke; width: 50%">
                <tr>
                    <td>Room type</td>
                    <td>${roomType}</td>
                </tr>
                <tr>
                    <td>Number of beds: </td>
                    <td>${numOfBeds}</td>
                </tr>
                <tr>
                    <td>AC: </td>
                    <td>${ac}</td>
                </tr>
                <tr>
                    <td>TV : </td>
                    <td>${tv}</td>
                </tr>
                <tr>
                    <td>Bathroom: </td>
                    <td>${bathroom}</td>
                </tr>
                <tr>
                    <td>Kitchen: </td>
                    <td>${kitchen}</td>
                </tr>
                <tr>
                    <td>Hair dryer: </td>
                    <td>${hairdryer}</td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td>${price}</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
