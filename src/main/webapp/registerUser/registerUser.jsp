<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div id="fullscreen_bg" class="fullscreen_bg"/>
<div class="container">    
<div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<div class="panel panel-info">
<div class="panel-heading">
<div class="panel-title">Sign Up</div>
<div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" ">Sign In</a></div>
</div>  
<div class="panel-body" >
<form id="signupform" class="form-horizontal" role="form" action="../controller/doRegisterUser.jsp" method="post">
<div id="signupalert" style="display:none" class="alert alert-danger">
<p>Error:</p>
<span></span>
</div>
<div class="form-group">
<label for="firstname" class="col-md-3 control-label">UserName</label>
<div class="col-md-9">
<input type="text" class="form-control" name="username" placeholder="UserName">
</div>
</div>
<div class="form-group">
<label for="password" class="col-md-3 control-label">Password</label>
<div class="col-md-9">
<input type="password" class="form-control" name="password" id="password" placeholder="Password">
</div>
</div>
<div class="form-group">
<label for="password" class="col-md-3 control-label">Confirm Password</label>
<div class="col-md-9">
<input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="Confirm Password">
</div>
</div>
<div class="form-group">
<!-- Button -->                                        
<div class="col-md-offset-3 col-md-9">
<button id="btn-signup" type="submit" class="btn btn-info btn-block"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>

               