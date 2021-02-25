<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/lightslider.css" />                  
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/lightslider.js"></script>
<!-- // Do not include both lightslider.js and lightslider.min.js -->

<script type="text/javascript">
$(document).ready(function() {
    $('#imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:9,
        slideMargin:0,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            el.lightGallery({
                selector: '#imageGallery .lslide'
            });
        }   
    });  
  });
</script>

</head>
<body>
	<ul id="imageGallery">
		<li data-thumb="images/julmi.jpg" data-src="images/julmi.jpg"><img
			src="images/julmi.jpg" /></li>
		<li data-thumb="images/siba.jpg" data-src="images/siba.jpg"><img
			src="images/siba.jpg" /></li>
		<li data-thumb="images/welsh.png" data-src="images/welsh.png"><img
			src="images/welsh.png" /></li>
	</ul>
	<!-- http://sachinchoolur.github.io/lightslider/ -->
</body>
</html>