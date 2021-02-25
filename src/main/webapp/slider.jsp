<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.hidden{
  display: none
}

.sliderContainer{
  display: flex;
  justify-content: center;
}

.sliderContainer>div{
  width: 450px;
  height: 420px;
  background-color: #ffffff;
  color: #fff;
  font-size: 25px;
  text-transform: capitalize;
  overflow:hidden;
  border: 1px solid black;
  
}

.cntNum{
  display: flex;
  justify-content: center;
  align-items: center;
  opacity: 1;
  animation: op 200ms linear;
}

@keyframes op{
  0%{
    opacity: 0
  }

  100%{
    opacity: 1
  }
}

#slideshow {
  margin: 80px auto;
  position: relative;
  width: 340px;
  height: 340px;
  padding: 10px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

#slideshow > div {
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
  overflow: hidden;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
$(function () {
    "use strict"; // 엄근진 모드 적용
    //you can put cntNum class in any element you want to start with it
  
    //change cntNum class every num of seconds
    setInterval(function () {
        //loop on every cntNum in the page
        $(".cntNum").each(function () {
        	
            // 쿼리 끝단에 설정된 시간(2000)에 따라 cntNum 생성, hidden 클래스 제거를 반복
            $(this).addClass("hidden").removeClass("cntNum");
            $(this).next().addClass("cntNum").removeClass("hidden");
            
            
            // hasClass = 지정된 값에 해당 클래스 존재 여부 확인 / boolean 리턴
            if ($(".sliderContainer").children().last().hasClass("cntNum")) {
                setTimeout(function () { //check if the last element has cntNum class to repeat the loop again
                    $(".sliderContainer").children().first().removeClass("hidden").addClass("cntNum");
                },2000);//you must set this time as the same time for setInterval time
            }
        });
    },2000);//you can change the time for silder from 2000 to any value you want
});

$("#slideshow > div:gt(1)").hide();

setInterval(function() {
  $('#slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
}, 3000);
</script>

</head>
 <body>
 <!-- Slider Ver.01 -->
	<div class="sliderContainer">
		<div class="cntNum"><img src="images/julmi.jpg"></div>
		<div class="hidden"><img src="images/woody.png"></div>
		<div class="hidden"><img src="images/welsh.png"></div>
		<div class="hidden"><img src="images/nick.png"></div>
	</div>
</body>

<!-- Slider Ver.02 -->
<!-- https://css-tricks.com/snippets/jquery/simple-auto-playing-slideshow/ -->
<div id="slideshow">
   <div>
     <img src="images/woody.png">
   </div>
   <div>
     <img src="images/ebisushi.jpg">
   </div>
</div>

<!-- 
참고자료
hasClass = https://api.jquery.com/hasclass/
use strict = https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Strict_mode

 -->
</html>
