<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>轮播图</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/lunbotu.css" />

</head>
<body>
	<div class="flexslider" id="lunbotu" >
		<div class="flex-viewport" 
			style="overflow: hidden; position: relative;">
			<ul class="slides" 
				style="width: 1400%; transition-duration: 0.4s; transform: translate3d(-2880px, 0px, 0px);">

				<s:iterator value="listNewsCarouselDTO" >
					<li class="clone" style="width: 100%; float: left; display: block;">
						<div class="img">
							<img
								src="${pageContext.request.contextPath}/carousel/img_carouseImgShow?imgName=<s:property value="newsCarouselInfo.CI_Img" />"
								width="100%" alt="" height="600px">
						</div>
					</li>
				</s:iterator>
			</ul>
		</div>
		<ul class="flex-direction-nav" style="margin-bottom: 0px;">
			<li><a class="flex-prev" href="#">Previous</a></li>
			<li><a class="flex-next" href="#">Next</a></li>
		</ul>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/lunbotu.js"></script>
	  <script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery1.8.2.js"></script>

	
	<script>
// 		$(function() {
// 			console.log("a")
// 			$('.flexslider').flexslider({
// 				animation : "slide",
// 				direction : "horizontal",
// 				easing : "swing"
			  
// 			});
// 		});
$(document).ready(function(){  
    $('.flexslider').flexslider({  
        directionNav: true,  
        pauseOnAction: false  
    });  
});  
	</script>
</body>
</html>