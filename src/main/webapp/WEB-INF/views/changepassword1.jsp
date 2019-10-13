
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

</head>
<body class="wrapper">
 <!-- id="form1" -->
 <form action="savePassword.do" method="post" class="form-horizontal" >
<div class="form-signin ">
	    <!-- <input type="text" name="userName" value="" placeholder=userEmail"> -->
	    <input type="text" name="password" value="" placeholder="temp password">
	    <input type="submit" name="action" value="submit"> 
	    <!-- Button -->
	    <div class="form-group">
	      <label class="col-md-4 control-label" ></label>
	      <div class="col-md-8">      
	        <input type="submit" name="login2" class="btn btn-info btn-md">
	      </div>
	    </div>
	    

        
          
	    
	 	
</div>
</form> 
 
</body>
</html>