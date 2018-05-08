<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>轮播图</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/MainWarp.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/lunbotu.js"></script>
</head>
<body>

	<div id="lunbotu" class="flexslider">
		<div class="flex-viewport"
			style="overflow: hidden; position: relative;">
			<ul class="slides"
				style="width: 1400%; transition-duration: 0.4s; transform: translate3d(-2880px, 0px, 0px);">
				<li class="clone" style="width: 100%; float: left; display: block;">
					<div class="img">
						<img src="img/02.jpg" width="100%" alt="" height="600">
					</div>
				</li>
				<li class="" style="width: 100%; float: left; display: block;">
					<div class="img">
						<img src="img/01.jpg" width="100%" alt="" height="600">
					</div>
				</li>
			</ul>
		</div>
		<ul class="flex-direction-nav" style="margin-bottom: 0px;">
			<li><a class="flex-prev" href="#">Previous</a></li>
			<li><a class="flex-next" href="#">Next</a></li>
		</ul>
	</div>
	<script>
		$(function() {
			$('#lunbotu').flexslider({
				animation : "slide",
				direction : "horizontal",
				easing : "swing"
			});
		});
	</script>
</body>
</html>