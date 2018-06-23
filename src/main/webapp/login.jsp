<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<jsp:include page="./layout/header.jsp"></jsp:include>
<body>
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="login-panel panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">Please Sign In</h3>
</div>
<div class="panel-body">
<form role="form" action="./doLogin.jsp" method="post">
<fieldset>
<div class="form-group">
<input class="form-control" placeholder="username" name="username" type="text" autofocus>
</div>
<div class="form-group">
<input class="form-control" placeholder="Password" name="password" type="password" value="">
</div>
<!-- Change this to a button or input when using this as a form -->
<input type="submit" value="Login" class="btn btn-lg btn-success btn-block"/>
</fieldset>
</form>
<a href="./registerUser/registerUser.jsp" class="text-center new-account">Create an account </a>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>