<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>Vendor Details</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/DT_bootstrap.css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="css/default.css" rel="stylesheet" type="text/css" id="style_color" />
     <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
function lookup(inputString) {
		if(inputString.length == 0) {
		$('#suggestions').hide();
		} else {
		$.post("vendor_Search.jsp", {queryString: ""+inputString+""}, function(data){
		//	var letters = /^[A-Za-z0-9<]+$/;
			var result = data.trim();
			var patt = new RegExp("<");
			var res = patt.test(result);
			//debugger
		if(res) {
		$('#suggestions').show();
		$('#autoSuggestionsList').html(data);
		}
		else{
			//alert("hi");
			$('#suggestions').hide();
			$('#Display_id1').hide();
			$('#Display_id2').hide();
			$('#Display_id3').show();
		}
		});
		}
}
function fill(thisValue) {
	$('#inputString').val(thisValue);
	setTimeout("$('#suggestions').hide();",200);
	if(thisValue!=null)
	{Search_name(thisValue);}
}

function Search_name(inputString) {
	//$('#inputString').hide();
	$('#Display_id1').hide();
	$('#Display_id2').show();
	$('#Display_id3').hide();
	value=inputString;
	
	$.ajax({
		async: false,
		url:"vendor_Search_display.jsp",
		type:"POST",
		dataType:"json",
		data:{'name':value},
		success:function(data)
		{
			for (var key in data) {
				if (data.hasOwnProperty(key)) {
				document.getElementById("mytext").value =data[key].Vendorcode ;	
			  	$('#vendor_code').text(data[key].Vendorcode);
			  	$('#vendor_name').text(data[key].Name);
				}
			}
		}
		,error:function(error) {
			alert('not found!!')
		}
	})
}
function display_vendor(){
	$('#Display_id1').show();
	$('#Display_id2').hide();
	$('#Display_id3').hide();
	$('#inputString').show();
	document.getElementById("inputString").value='';
}
</script>
<style type="text/css">
body {
font-family: Helvetica;
font-size: 13px;
color: #000;
}
.suggestionsBox {
position: relative;
margin: 0px 0px 0px 0px;
width: 182px;
background-color: gray;
-moz-border-radius: 7px;
-webkit-border-radius: 7px;
border: 2px solid #000;
color: #fff;
}
.suggestionList {
margin: 0px;
padding: 0px;
}
.suggestionList li {
margin: 0px 0px 3px 0px;
padding: 3px;
cursor: pointer;
}
.suggestionList li:hover {
background-color: gray;
}
</style>
</head>
<body class="page-header-fixed">
    <div class="header navbar navbar-fixed-top">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="header-inner">
            <!-- BEGIN LOGO -->
            <a class="navbar-brand" href="index.html">
                <span style="color:white"><b>ERP</b></span>
            </a>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <img src="images/menu-toggler.png" alt="" />
            </a>
			
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <li class="dropdown user">
                    <a href="javascript:;" id="trigger_fullscreen" class="dropdown-toggle">
                        <span class="username">
                            <i class="icon-move"></i>
                            Full Screen
                        </span>
                    </a>

                </li>
            </ul>
			
            <!-- END TOP NAVIGATION MENU -->
            <!-- END TOP NAVIGATION BAR -->
        </div>
    </div>
    <!-- END HEADER -->
    <div class="clearfix">
    </div>
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->
        <div class="page-sidebar-fixed">
            <div class="page-sidebar navbar-collapse collapse">
                <!-- BEGIN SIDEBAR MENU -->
                <ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
                    <li class="sidebar-toggler-wrapper">
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                        <div class="sidebar-toggler hidden-phone">
                        </div>
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    </li>
					<li class="sidebar-search-wrapper">&nbsp;</li>
                    <li><a href="index.html"><span class="title">Dashboard </span><i class="icon-tasks" style="padding-left: 100px"></i> </a>
                    <li>
                        <a href="sales.html">
                            <span class="title">Sales </span><i class="icon-dollar" style="padding-left: 140px"></i>
                        </a>
                    </li>
					<li class="start active"><a href="purchase.html"><span class="title">Purchase  </span><i class="icon-shopping-cart" style="padding-left: 110px"> </i>
						<span class="selected"></span>
						</a>
					</li>
                    <li><a href="report.html"><span class="title">Report  </span><i class="icon-file-text-alt"  style="padding-left: 130px"></i> </a></li>
                </ul>
                <!-- END SIDEBAR MENU -->
            </div>
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
		
        <div class="page-content-wrapper">
            <div class="page-content">
                <!-- BEGIN PAGE HEADER-->
				
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
						
                        <h6 class="page-title">
                            Vendor Details
                        </h6>
						<div>	
      					</div>
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
								<span  style="color: white"><i class="icon-home" style="color: white"></i></span><a href="index.html">Home </a><i class="icon-angle-right"  style="color: white">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a><i class="icon-angle-right"  style="color: white"></i></li>
							<li><a href="VendorDetails.html">Vendor Details</a></li>
                            <li class="pull-right">
								<div>
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
									
                                </div>
								</div>
                            </li>
						</ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
					<form name=myname method=post action="update.jsp">
				<div class="row" style="padding-left: 0px; padding-bottom: 15px">
					<div class="col-md-12">
						<div class="btn-group" style="Border-radius:2px">
							 
							<button class="btn btn-primary " type="submit" name="edit_clicked" value="View"><i class="icon-pencil"></i>&nbsp;Edit</button>
							<button class="btn btn-primary " type="submit" name="view_clicked" value="View"><i class="icon-move"></i>&nbsp;View</button> 
            				<button class="btn btn-primary " type="submit"  name="delete_clicked"value="Delete"><i class="icon-trash"></i>&nbsp;Delete</button> 
							<button class="btn btn-primary " type="submit"  name="close_clicked"value="Close"><i class="icon-remove-sign"></i>&nbsp;Close</button>
					   </div>
					   </div>
				</div>
				<div class="row" >
							<div id="builder-basic" class="query-builder form-inline" style="padding:10px">
								<table border="0">
									<tr  style="padding: 100px">
                                       <td>
										<input type="text"  value="" id="inputString" class="form-control" placeholder="Search Vendor Name"
										onkeyup="lookup(this.value);" onblur="fill();" name="vendor"/>
								
										<div class="suggestionsBox" id="suggestions" style="display: none;">
										<div class="suggestionList" id="autoSuggestionsList">
										</div>
										</div>
									</td>
                                </table>
					</div>
				</div>
				
				<div id="Display_id1">
				<%
				
						String id = request.getParameter("userId");
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
						String dbName = "erp";
						String userId = "root";
						String password = "";
						
						try {
						Class.forName(driverName);
						} catch (ClassNotFoundException e) {
						e.printStackTrace();
						}
						
						Connection connection = null;
						Statement statement = null;
						ResultSet resultSet = null;
						%>
						
						<table class="table table-striped table-bordered sortable table-hover">
										<thead>
											<tr class="display_dec" bgcolor="green">
											<th align="left" valign="middle" ></th>
												<th align="left" valign="middle" >Vendor Code</th>
												<th align="left" valign="middle" >Vendor Name </th>
											</tr>
											
										</thead>
						<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM vendors Group by(Name)";
						int i=0;
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
							
						%>
						<tr><td><input type="checkbox" name="check<%=i%>" value=<%= resultSet.getString(1) %>> </td>
						<td><%=resultSet.getString(1) %></td>
						<td><%=resultSet.getString(2) %></td>
						</tr>
						
						<% 
						i++;
						}
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
						</table>
						</div>
						
						<!-- Table will display for particular match -->
						<div id="Display_id2" hidden >
						<h5 class="page-title" style="font-size: 30px">
                            Search Result
                        </h5>
						
							<table class="table table-striped table-bordered sortable table-hover">
								<tr class="display_dec">
									<td style="height: 40px">
										<a><i class="icon-remove-sign" style="color: black" onclick="display_vendor();"> back</i></a>
									</td>
								</tr>	
							</table>
						<table class="table table-striped table-bordered sortable table-hover">
						<thead>
										
											<tr class="display_dec" bgcolor="green">
												<th align="left" valign="middle" ></th>
												<th align="left" valign="middle" >Vendor Code</th>
												<th align="left" valign="middle" >Vendor Name </th>
											</tr>
										</thead>
							<tr >
							<% int j=0 ;%>
							<tr><td style="background-color:#cec9ba"><input type="checkbox" name="check<%=j%>" value="" id="mytext" > </td>
							<td id="vendor_code" style="background-color:#cec9ba"></td>
							<td id="vendor_name" style="background-color:#cec9ba" ></td>						
							</tr>
						</table>							
						</div>
						<br/>
						<!--  will display for when  particular match does not exist -->
						<div id="Display_id3" hidden >
							<h5 class="page-title" style="font-size: 30px">
                            	Search Result
                       		</h5>
							<table class="table table-striped table-bordered sortable table-hover">
								<tr class="display_dec">
									<td style="height: 40px">
										<a><i class="icon-remove-sign" style="color: black" onclick="display_vendor();"> back</i></a>
									</td>
									<td style="height: 40px">
										<h4 class="page-title" >
                            				Search Result Not Found
                       					</h4>
									</td>
								</tr>
							</table>
							
						</div>
						</form>
				
	</div>
</div>
			<!-- END PAGE HEADER-->
               <div class="clearfix">
               </div>
		
		<!-- END CONTENT -->
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
		<div class="footer">
			<div class="footer-tools">
				<span class="go-top"><i class="icon-angle-up"></i></span>
			</div>
		</div>	
	</div>				
    <!-- END FOOTER -->
    <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <script src="js/excanvas.min.js"></script>
    <![endif]-->
	
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
    <script src="js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!--<script src="js/jquery-1.8.2.js"></script>-->
    <script src="js/jquery.uniform.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="js/DT_bootstrap.js"></script>
    <script type="text/javascript" src="js/datepicker.js"></script>
    <script type="text/javascript" src="js/jquery.timepicker.js"></script>
    <script src="js/pace.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <script src="js/jquery.flot.min.js" type="text/javascript"></script>
    <script src="js/jquery.flot.resize.min.js" type="text/javascript"></script>
    <script src="js/jquery.pulsate.min.js" type="text/javascript"></script>
    <script src="js/app.js" type="text/javascript"></script>
    <script src="js/table-managed.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jchart.js"></script>
    <script type="text/javascript" src="js/line_chart.js"></script>
    <script type="text/javascript" src="js/pie_chart.js"></script>
    <script type="text/javascript" src="js/script.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            App.init();
            TableManaged.init();
        });
    </script>
</body>
</html>
