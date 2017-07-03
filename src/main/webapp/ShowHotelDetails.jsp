
<%@page import="java.util.List"%>
<%@page import="Models.HotelInfo"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
 <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Hotels Offers</title>


	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/Hotel_Deals/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/Hotel_Deals/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/Hotel_Deals/css/bootstrap.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="/Hotel_Deals/css/cs-select.css">
	<link rel="stylesheet" href="/Hotel_Deals/css/cs-skin-border.css">
	
	<link rel="stylesheet" href="/Hotel_Deals/css/style.css">
	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.jsp"><i class="icon-home"></i>Hotel<span>offers</span></a></h1>
				</div>
			</div>
		</header>

		<!-- end:header-top -->

		<div id="fh5co-search-map">
			<div class="search-property" style="width: 100%;height:650px;">
                                
					<div class="col-xxs-12 col-xs-12 text-center" style="margin-top: 20px">
                                            <c:set var = "hotel" value ="${hotel}" />              
                                            <img src="<c:out value="${hotel.getHotelImageUrl()}"/>" style="width:10%">
                                            <div style="color: rgba(0, 0, 0, 0.7);font-size:140%">Hotel Name: <div style="color:white"><c:out value="${hotel.getHotelName()}"/></div></div>
                                            <div style="color: rgba(0, 0, 0, 0.7);font-size:140%">Hotel City: <div style="color:white"><c:out value="${hotel.getHotelCity()}"/></div></div>"
                                           <div style="color: rgba(0, 0, 0, 0.7);font-size:140%"> Description: <div style="color:white"><c:out value="${hotel.getDescription()}"/></div></div>
                                            <div style="color: rgba(0, 0, 0, 0.7);font-size:140%">Travel Start Date: <div style="color:white"><c:out value="${hotel.getTravelStartDate()}"/></div></div>
                                            <div style="color: rgba(0, 0, 0, 0.7);font-size:140%">Travel End Date: <div style="color:white"><c:out value="${hotel.getTravelEndDate()}"/></div></div>
                                            <div style="color: rgba(0, 0, 0, 0.7);font-size:140%">Guest Rating: <div style="color:white"><c:out value="${hotel.getHotelGuestReviewRating()}"/></div></div>

					</div>
                               
					</div>
				</div>
			</div>           
                                             
                </div>
		<footer style="width:100%">
			<div id="footer">
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-md-3">
							<h3 class="section-title">About Homestate</h3>
							<p>Welcome to the most popular site for Hotels reservation offers.</p>
						</div>
						
						<div class="col-md-3 col-md-push-1">
							<h3 class="section-title">Links</h3>
							<ul>
								<li><a href="#">Home</a></li>
							</ul>
						</div>

						<div class="col-md-3">
							<h3 class="section-title">Information</h3>
							<ul>
								<li><a href="#">Terms &amp; Condition</a></li>
								<li><a href="#">License</a></li>
								<li><a href="#">Privacy &amp; Policy</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						
					</div>
					<div class="row">
						<div class="col-md-12">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</body>
</html>     
