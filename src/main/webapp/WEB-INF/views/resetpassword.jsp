
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
 <form action="resetPassword.do" method="post" class="form-horizontal" >
<div class="form-signin ">
  
  	
  		<c:if test="${fn:length(message) == 0 }">
	     <!-- Form Name -->    
	    <h3 class="brand-home text-center mg0"><strong> <s:message code="label.resetpassword"></s:message> </strong></h3>
	    <hr>
	    
	    <div class="form-group">
	      <label class="col-md-3 control-label" for="newPassword"><s:message code="label.newpassword" text="New Password" /></label>
	      <div class="col-md-9">
	        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
	          <input id="password" required name="password" type="password" placeholder="New Password" class="form-control input-md">
	        </div>
	      </div>
	    </div>
	    
	    <div class="form-group">
	      <label class="col-md-3 control-label" for="newPassword"><s:message code="label.confirmpassword" text="Confirm Password" /></label>
	      <div class="col-md-9">
	        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
	          <input id="confirmPassword" required name="confirmPassword" type="password" placeholder="Confirm Password" class="form-control input-md">
	        </div>
	      </div>
	    </div>
	    
	    
	    <c:if test="${fn:length(password) > 0 }">
        	 <p class="text-center"><font  color="red" size="3"><s:message code="message.passwordupdate"></s:message></font></p>
        	 <div class="form-group">
		      <label class="col-md-4 control-label" ></label>
		      <div class="col-md-8">       
		        <a href="<%=request.getContextPath() %>/" class="btn btn-info btn-md">Home</a> 
		      </div>
		    </div>
	     
        </c:if>
	    
	    <input type="hidden" name="userKey" value="${userKey }">
	    <input type="hidden" name="action" value="update"> 
	    <!-- Button -->
	    <div class="form-group">
	      <label class="col-md-4 control-label" ></label>
	      <div class="col-md-8">      
	        <input type="submit" name="update" value="Update" class="btn btn-info btn-md">
	      </div>
	    </div>
	    
        </c:if> 
        <c:if test="${fn:length(message) > 0 }">
        	 <p class="text-center"><font  color="red" size="3"><s:message code="label.linkexpire"></s:message></font></p>
        	 
        	 <div class="form-group">
		      <label class="col-md-4 control-label" ></label>
		      <div class="col-md-8">       
		        <a href="<%=request.getContextPath() %>/" class="btn btn-info btn-md">Home</a> 
		      </div>
		    </div>
	     
        </c:if>
          
	    
	 	
</div>
</form> 
 
</body>
</html>