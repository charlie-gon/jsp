<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$('#liveToastBtn').on('click', function(){
			$('.toast').toast('show');
		});
		$('.btn').tooltip();
		$('#btnRegister').on('click',function(){
			$('.modal').modal();
		});
	});
</script>
</head>
<body>
	<div class="container">
		<!-- Content here -->
		<div class="row">
			<div class="col-3 border">
				<a href="" class="btn btn-outline-warning" data-toggle="tooltip" data-placement="bottom" title="로그인 페이지로 이동!">Login</a> 
				<span class="btn btn-success btnRegister" data-toggle="tooltip" data-placement="bottom" title="회원가입 페이지로 이동!">Join</span>
				<button class="btn btn-warning">Board</button>
			</div>
			
			<div class="col-9 border">
				<button type="button" class="btn btn-primary" id="liveToastBtn">Show live toast</button>
			</div>
			
		</div>
		
		<div class="row">
			<div class="col-lg-6 col-mid-12 border">
				<table class="table">
					<thead class="table-dark">
						<tr><td>번호</td><td>이름</td></tr>
					</thead>
					<tr><td>1</td><td>김홍</td></tr>
					<tr><td>2</td><td>박홍</td></tr>
				</table>
			</div>

			<div class="col-lg-6 col-mid-12 border">
			</div>
			
		</div>
		<div class="alert alert-danger" role="alert">A simple warning
			alert—check it out!</div>

		<div class="row">
			<div class="card mr-5 pt-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			</div>
		<!-- end of row -->
	</div>
	<!-- end of div -->
	
	<!-- Toast start -->
	<div class="position-fixed bottom-0 right-0 p-3"
		style="z-index: 5; right: 0; top: 0;">
		<div id="liveToast" class="toast hide" role="alert"
			aria-live="assertive" aria-atomic="true" data-delay="5000">
			<div class="toast-header">
				<img src="images/nick.png" class="rounded mr-2" alt="..."> <strong
					class="mr-auto">Bootstrap</strong> <small>11 mins ago</small>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">Hello, world! This is a toast message.
			</div>
		</div>
	</div>
	<!-- end of Toast -->

	<!-- Modal start -->
	<div class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- 로그인 페이지 호출 -->
					<form>
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp"> <small id="emailHelp"
								class="form-text text-muted">We'll never share your
								email with anyone else.</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1">
						</div>
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Check me out</label>
						</div>
						<button type="submit"
							class="btn btn-primary justify-content-center">등록</button>
						<button type="submit"
							class="btn btn-primary justify-content-center">취소</button>
					</form>
					<!-- 로그인 페이지 호출 -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">저장</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end of Modal -->
</body>
</html>