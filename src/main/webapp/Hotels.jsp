<%@page import="java.util.List"%>
<%@page import="Models.HotelInfo"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Hotels Offers</title>
	<!-- Animate.css -->
	<link rel="stylesheet" href="/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/css/bootstrap.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="/css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="/css/cs-select.css">
	<link rel="stylesheet" href="/css/cs-skin-border.css">
	
	<link rel="stylesheet" href="/css/style.css">
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
			<div class="search-property" style="width: 30%">
				<div class="s-holder">
					<h2>Search Properties</h2>
					<div class="row">
                                            <form method="GET" action="HotelsController">
						<div class="col-xxs-12 col-xs-12">
							<div class="input-field">
								<label for="from">Destination City:</label>
								<input type="text" class="form-control" name="destinationName" placeholder="Name.."/>
							</div>
						</div>
						<div class="col-xxs-12 col-xs-12">
							<section>
								<label for="class">Min Trip Date</label>
								<input type="text" class="form-control" name="minTripDate" placeholder="yyyy-mm-dd"/>
							</section>
						</div>
						<div class="col-xxs-12 col-xs-12">
							<section>
								<label for="class">Max Trip Date</label>
								<input type="text" class="form-control" name="maxTripDate" placeholder="yyyy-mm-dd"/>
							</section>
						</div>
						<div class="col-xxs-12 col-xs-12">
							<div class="input-field">
								<label for="from">Length of stay:</label>
								<input type="text" class="form-control" name="lengthOfStay" placeholder="length.."/>
							</div>
						</div>
						
                                                                   <div class="col-xxs-12 col-xs-12">
							<section>
								<label for="class">Guest Rating:</label>
								<div class="wide">
                                                                    <label for="class">Min</label>
									<select class="cs-select cs-select-half cs-skin-border input-half" name="minGuestRating" id="minGuestRating">
										<option value="0" disabled selected>Any</option>
										<option value="1">1</option>
										<option value="2">2</option>
                                                                                <option value="3">3</option>
										<option value="4">4</option>
                                                                                <option value="5">5</option>
									</select>
                                                                    <label for="class">Max</label>
									<select class="cs-select cs-select-half cs-skin-border input-half" name="maxGuestRating" id="maxGuestRating">
										<option value="0" disabled selected>Any</option>
										<option value="1">1</option>
										<option value="2">2</option>
                                                                                <option value="3">3</option>
										<option value="4">4</option>
                                                                                <option value="5">5</option>
									</select>
								</div>
							</section>
						</div>
						
						
						<div class="col-xxs-12 col-xs-12 text-center">
							<p><button type="submit" class="btn btn-primary btn-lg" href="#">Search</button></p>
						</div>
                                               </form>
					</div>
				</div>
			</div>
               
                   <c:forEach items="${Hotels}" var="hotel"> 
                     <div class="col-md-2 animate-box fadeInUp animated">
                         <div class="property">                  
                            <a href="/HotelsController?show=<c:out value="${hotel.getHotelId()}"/>" target=\"_blank\" class="fh5co-property">
                                <img src="<c:out value="${hotel.getHotelImageUrl()}"/>" style="margin-left:30%;margin-top:50%;width:40%">
                                <ul class="list-details">
                                     <li><c:out value="${hotel.getHotelName()}"/></li><br>
                                     <li> city : <c:out value="${hotel.getHotelCity()}"/></li><br>
                                     <li> Rating: <c:out value="${hotel.getHotelGuestReviewRating()}"/></li><br> 
                                </ul>
                            </a>
                         </div>
                     </div>
                   </c:forEach>
                </div></div></div>
		<footer>
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

	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->
	<script src="/Scripts/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/Scripts/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/Scripts/bootstrap.min.js"></script>
	<!-- Date Picker -->
	<script src="/Scripts/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="/Scripts/classie.js"></script>
	<script src="/Scripts/selectFx.js"></script>	
	<!-- Main JS -->
	<script src="/Scripts/main.js"></script>

	</body>
</html>

