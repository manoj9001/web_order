<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>  
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><tiles:insertAttribute name="title" /> </title>
  	<tiles:insertAttribute name="style" />
  	
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   	
  	 <script src="<%=request.getContextPath() %>/resources/grid/js/jquery.min.js"></script>
  	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script>window.jQuery || document.write(decodeURIComponent('%3Cscript src="js/jquery.min.js"%3E%3C/script%3E'))</script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/grid/css/dx.common.css" />
    <link rel="dx-theme" data-theme="generic.light" href="<%=request.getContextPath() %>/resources/grid/css/dx.light.css" />
    <script src="<%=request.getContextPath() %>/resources/grid/js/jszip.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/grid/js/dx.all.js"></script>
  	
</head> 

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<tiles:insertAttribute  name="header" />
  		<tiles:insertAttribute name="sidebar" />
      
  <div class="content-wrapper">
    <section class="content-header">
      <h1> <spring:message code="label.companysite"></spring:message></h1>
      <ol class="breadcrumb"> 
        <li><a href="#"><i class="fa fa-dashboard"></i> <spring:message code="label.home"></spring:message> </a></li>
        <li class="active"> <spring:message code="label.companysite"></spring:message> </li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"><spring:message code="label.companysitelist"></spring:message> </h3>
        </div>
        <div class="box-body">
          <div class="demo-container">
	        <div id="siteGridContainer"></div>
	      </div>
          
        </div>
        <div class="box-footer">
          <!-- Footer -->
        </div>
      </div>
    </section>
  </div> 
  <tiles:insertAttribute name="footer" />
</div>
	<tiles:insertAttribute name="commonscript" />


<script type="text/javascript">
    
$(function(){
	
	var companyList = "";
	$.ajax({
		type : "GET",
		url  : "getComapny.do",
		async: false, 
		success : function(data){
			companyList = data;
		},error : function(e){
			
		} 		
	}); 
	
    var orders = new DevExpress.data.CustomStore({
        load: function (loadOptions) {
            var deferred = $.Deferred(),
                args = {};
    
            if (loadOptions.sort) {
                args.orderby = loadOptions.sort[0].selector;
                if (loadOptions.sort[0].desc)
                    args.orderby += " desc";
            }
    
            args.skip = loadOptions.skip || 0;
            args.take = loadOptions.take || 12;
    
            $.ajax({
                url: "getCompanySiteList.do",
                dataType: "json",
                data: args,
                success: function(result) {
                    deferred.resolve(result.items, { totalCount: result.totalCount });
                },
                error: function() {
                    deferred.reject("Data Loading Error");
                },
                timeout: 5000
            });
    
            return deferred.promise();
        },
        insert: function (params) {
        	console.log(JSON.stringify(params)); 
	        return $.ajax({ 
	            url: "insertCompanySite.do",
	            method: "POST",
	            data: params
	        })
	    },
	    update: function (key, params) {
	    	 return $.ajax({  
	            url: "updateCompanySite.do",
 				method: "POST",	            
	            data:{  
	            	'siteId' : key.site_id,
	            	'params' : JSON.stringify(params)
	            }
	        })
	    }
    });
    
    $("#siteGridContainer").dxDataGrid({
        dataSource: {
            store: orders
        },
        showBorders: true,
        remoteOperations: {
            sorting: true,
            paging: true
        },
        editing: {
            mode: "form",
            allowUpdating: true,
            allowDeleting: true,
            allowAdding: true
        },
        paging: {
            pageSize: 12
        },
        pager: {
            showPageSizeSelector: true,
            allowedPageSizes: [8, 12, 20]
        },
        columns: [
        	{
                dataField: "site_id",
                caption: "site_id",
                visible: false,   
                width: 125 
            },{
                dataField: "site_name",  
                caption: "<spring:message code='label.site' />", 
                width: 125
            },
            {
              	 dataField: "company_id",  
                 caption: "company Name",    
                 width: 145, 
                 validationRules: [{ type: "required" }],
                 lookup: {
                     dataSource: companyList, 
                     displayExpr: "company_name",
                     valueExpr: "company_id" 
                 }
            },
            {
                dataField: "created_date",
                caption: "<spring:message code='label.date' />", 
                dataType: "date",
                width: 125
            },{
                dataField: "created_by",
                caption: "<spring:message code='label.createBy' />", 
                width: 125
            },{
            	dataField : "status", 
            	caption: "<spring:message code='label.status' />",
            	lookup: {
            		dataSource: [
                    	"<spring:message code='label.active' />",
                    	"<spring:message code='label.deactive' />"                  	
                    ] 
                }
            },
            {
                dataField: "reason_for_update", 
                caption: "<spring:message code='label.reason' />", 
                
            },     
        ],onInitNewRow: function(e) {
        	 e.component.columnOption("created_date", "allowEditing", false);
        	e.component.columnOption("created_by", "allowEditing", false);
        	/*e.component.columnOption("company_id", "allowEditing", false);  */  
        } 
    }).dxDataGrid("instance");
});
     
 
    
    </script>
     
</body>
</html>
