<%-- 
    Document   : hello
    Created on : Oct 14, 2017, 9:56:29 PM
    Author     : jelena
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>IT355-DZ02</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
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
            padding-top: 30px;

        }
        </style>
</head>
<body>
    <div class="container-fluid bg text-center">
        <h1 style="font-size: 70px; font-weight: bolder; color: whitesmoke">${heading}</h1>
        <h5 style="color: whitesmoke">${subheading}</h5>
        <div id="banner">
            <img src="https://mir-s3-cdn-cf.behance.net/project_modules/1400/be6bc210923081.560ede04bba94.jpg" style="width: 70%; height: 275px; padding-top: 20px" />
        </div>
        <div class="container-fluid bg-2 text-center" style="color: whitesmoke">
            <h1>About us</h1>
            <p> We are expecting you! We know what it means to come from a long and tiring trip and to long for a genuine welcome, a good drink and a comfortable bed to stretch out on. 
                If you enjoy in relaxing atmosphere and welcoming and helpful staff, you’ve come to the right place!
                Families as well as business people love staying at our hotel, and have given us nothing but best reviews.  
                We’ve been hosts to countless, weddings, university graduations, family vacations, re-unions, birthday celebrations and meetings.
                Our appeal to such a wide range of clientele might have to do with our attention to detail and making it all very personal.
                If you want to join our satisfied visitors check out our gallery and locations.
            </p>
        </div>
        <hr>
        <h1 style="color: whitesmoke; padding-bottom: 5px">Our hotels</h1>
    </div>
        <table class="table table bordered tb" style="background-color: #101010; color: whitesmoke">
        <thead>
            <tr>
                <th>Hotel Name</th>
                <th>Number of Rooms</th>
                <th>Destination</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>MetHotel 1</td>
                <td>250</td>
                <td>Spain</td>
            </tr>
            <tr>
                <td>MetHotel 2</td>
                <td>130</td>
                <td>Greece</td>
            </tr>
            <tr>
                <td>MetHotel 3</td>
                <td>180</td>
                <td>France</td>
            </tr>
        </tbody>
    </table>
<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>

