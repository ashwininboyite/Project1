<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head id="Head1">
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>RM Material Master</title>
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
                           RM Material Master
                        </h6>
						<div>	
      					</div>
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
								<span  style="color: white"><i class="icon-home" style="color: white"></i></span><a href="index.html">Home </a><i class="icon-angle-right"  style="color: white">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a>
							<i class="icon-angle-right"  style="color: white">
                                </i>
							</li>
							<li><a href="rawmaterial.html">Raw Material </a>
							<i class="icon-angle-right"  style="color: white">
                                </i>
							</li>
							
							<li>
								<a href="rm_master.html">RM Material Master</a>
							</li>
                               <!--  <div class="search-container">
                                    <form action="/action_page.php">
                                    
										<form action="/action_page.php">
	      									<input type="text" placeholder="  Search..." name="search">
											<button type="submit"><i class="icon-search"></i></button>
	    								</form>
                                   
                                </form>
                                 </div>-->
                            <li style="align-content: space-around "> 
							</li>
                        </ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
               <form action="newGrade">
				<div class="row" style="padding-left: 500px; padding-bottom: 10px">
						<div class="btn-group">
							<a href="newGrade.html"><button class="btn btn-primary"><i class="icon-plus"></i>&nbsp;New</button></a>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary"><i class="icon-pencil"></i>&nbsp;Edit</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary"><i class="icon-trash"></i>&nbsp;Delete</button>
						</div>
						<div class="btn-group">
							<a href="rawmaterial.html"><button class="btn btn-primary"><i class="icon-remove-sign"></i>&nbsp;Close</button></a>
						</div>
				</div>
				<div class="search-container">
                                    <form action="/action_page.php">
                                    
										<form action="/action_page.php">
	      									<input type="text" placeholder="Grade Search Box" name="search">
											<button type="submit"><i class="icon-search"></i></button>
	    								</form>
                                   
                                </form>
                 </div>
				<div class="row">
							<div id="builder-basic" class="query-builder form-inline" style="padding:10px">
								<table border="1" style="border: 2px solid #2C3E50">
													<tr  style="padding: 100px; background-color: #5fec75; border: 2px solid #2C3E50">
                                                        <td style="padding: 10px;border: 2px solid #2C3E50 " rowspan="2"> 
                                                            <label class="control-label1">RM Grade:</label>
                                                        </td>
														<td colspan="15"  style="background-color:#ffb848; text-align: center  ">
															<label class="control-label1" style=""><b>Chemical Compostion</b></label>
														</td>
                                                    </tr>
													<tr border="1" style="border: 2px solid #2C3E50">
														<td class="table-row">
															<label class="control-label1">%</label>
														</td>
														<td class="table-row">
															<label class="control-label1">C</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Mn</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Si</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">S</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">P</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Cr</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Ni</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Mo</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Cu</label>	
														</td >
														<td class="table-row">
															<label class="control-label1">V</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">Al</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">W</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">N</label>	
														</td>
														<td class="table-row">
															<label class="control-label1">---</label>	
														</td>
													</tr>
								</table>
							</div>
				</div>
			</form>	
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
		</div>
	</div>
</body>
</html>