
<!DOCTYPE html>
<html lang="en">
<head>
<title>Reset Password</title>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<link rel="icon" href="<c:url value="resources/image/favicone.jpg"></c:url>" />

<link rel="stylesheet" href="<c:url value="resources/css/style.css"></c:url>">
<link rel="stylesheet" href="<c:url value="resources/bootstrap/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet" href="<c:url value="resources/css/font-awesome.min.css"></c:url>">

<script src="<c:url value="resources/js/jquery.min.js"></c:url>"></script>
<script src="<c:url value="resources/js/jquery.validate.min.js"></c:url>"></script>
<script src="<c:url value="resources/bootstrap/js/bootstrap.min.js"></c:url>"></script>
<script src="<c:url value="resources/bootstrap/js/ValidationFormScript.js"></c:url>"></script>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<body>
    <div class="container">
        <div >
            <h1 >form</h1>
            <br/>
            <form action="/user/registration" method="POST" enctype="utf8" >
                <div class="form-group row" >
                    <label class="col-sm-3" >first</label>
                    <span class="col-sm-5"><input class="form-control" name="firstName" value="" required="required"/></span>
                    <span id="firstNameError" class="alert alert-danger col-sm-4" style="display:none"></span>
                    
                </div>
                <div class="form-group row">
                    <label class="col-sm-3">last</label>
                    <span class="col-sm-5"><input class="form-control" name="lastName" value="" required="required"/></span>
                    <span id="lastNameError" class="alert alert-danger col-sm-4" style="display:none"></span>
                    
                </div>
                <div class="form-group row">
                    <label class="col-sm-3" >email</label>
                    <span class="col-sm-5"><input type="email" class="form-control" name="email" value="" required="required"/></span>                    
                    <span id="emailError" class="alert alert-danger col-sm-4" style="display:none"></span>
                    
                </div>
                <div class="form-group row">
                    <label class="col-sm-3" ">password</label>
                    <span class="col-sm-5"><input id="password" class="form-control" name="password" value="" type="password" required="required"/></span>
                    <span id="passwordError" class="alert alert-danger col-sm-4" style="display:none"></span>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3" >confirm</label>
                    <span class="col-sm-5"><input id="matchPassword" class="form-control" name="matchingPassword" value="" type="password" required="required"/></span>
                    <span id="globalError" class="alert alert-danger col-sm-4" style="display:none"></span>
                </div>
                <div class="form-group row">
                    <label class="col-sm-3" >Use Two Step Verification</label>
                    <span class="col-sm-5"><input type="checkbox" name="using2FA" value="true"/></span>
                </div>
                <br/>
                <button type="submit" class="btn btn-primary" >submit</button>
            </form>
            <br/> 

        </div>
    </div>

</body>

</html>
