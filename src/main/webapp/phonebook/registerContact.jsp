<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>

	<div id="wrapper">

		<jsp:include page="../layout/sidebar.jsp"></jsp:include>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">


				<div id="page-wrapper">
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header">Contact</h1>
						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">New Contact</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-6">
											<form role="form" action="../doRegisterContact.jsp" method="post">
												<div class="form-group">
													<label>Contact Name</label> <input class="form-control" name="name">
													Enter the Contact Name</p>
												</div>
												<div class="form-group">
													<label>phone_number</label> <input class="form-control"
														placeholder="Enter phone number" name="tellnumber">
												</div>




												<button type="submit" class="btn btn-default">Add
													contact</button>
												<button type="reset" class="btn btn-default">Reset
													page</button>
											</form>
										</div>

									</div>
									<!-- /.container-fluid -->
								</div>
								<!-- /#page-wrapper -->

							</div>
							<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>

</html>