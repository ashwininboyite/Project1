
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<%! public static String id; %>
<head id="Head1">
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>New Bar Creation</title>
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
    <script type="text/javascript" src="jquery-1.4.2.js"></script>
<script type="text/javascript">
function lookup(inputString) {
		if(inputString.length == 0) {
		$('#suggestions').hide();
		} else {
		$.post("SearchVendor.jsp", {queryString: ""+inputString+""}, function(data){
		if(data.length >0) {
		$('#suggestions').show();
		$('#autoSuggestionsList').html(data);
		}
		});
		}
}
function lookup1(inputString) {
	if(inputString.length == 0) {
	$('#suggestions').hide();
	} else {
	$.post("SearchGrade.jsp", {queryString: ""+inputString+""}, function(data){
	if(data.length >0) {
	$('#suggestions').show();
	$('#autoSuggestionsList').html(data);
	}
	});
	}
}
function fill(thisValue) {
	
		$('#inputString').val(thisValue);
		setTimeout("$('#suggestions').hide();", 2000);

}
function fill1(thisValue) {
	
	$('#inputString1').val(thisValue);
	setTimeout("$('#suggestions').hide();", 2000);
	if(thisValue!=null)
		{lookup2(thisValue);}
	

}
function lookup2(inputString) {
	
	value=inputString;
	
	$.ajax({
		async: false,
		url:"SearchGradeValues.jsp",
		type:"POST",
		dataType:"json",
		data:{ 'name':value},
		success:function(data)
		{
			
			for (var key in data) {
						if (data.hasOwnProperty(key)) {
					  	$('#rmin_c').text(data[key].MinC);
					  	$('#rmin_Mn').text(data[key].MinMn);
					  	$('#rmin_si').text(data[key].MinSi);
					  	$('#rmin_s').text(data[key].MinS);
					  	$('#rmin_p').text(data[key].MinP);
					  	$('#rmin_cr').text(data[key].MinCr);
					  	$('#rmin_ni').text(data[key].MinNi);
					  	$('#rmin_mo').text(data[key].MinMo);
					  	$('#rmin_cu').text(data[key].MinCu);
					  	$('#rmin_v').text(data[key].MinV);
					  	$('#rmin_al').text(data[key].MinAl);
					  	$('#rmin_w').text(data[key].MinW);
					  	$('#rmin_n').text(data[key].MinN);
					  	
					  	$('#rmax_c').text(data[key].MaxC);
					  	$('#rmax_Mn').text(data[key].MaxMn);
					  	$('#rmax_si').text(data[key].MaxSi);
					  	$('#rmax_s').text(data[key].MaxS);
					  	$('#rmax_p').text(data[key].MaxP);
					  	$('#rmax_cr').text(data[key].MaxCr);
					  	$('#rmax_ni').text(data[key].MaxNi);
					  	$('#rmax_mo').text(data[key].MaxMo);
					  	$('#rmax_cu').text(data[key].MaxCu);
					  	$('#rmax_v').text(data[key].MaxV);
					  	$('#rmax_al').text(data[key].MaxAl);
					  	$('#rmax_w').text(data[key].MaxW);
					  	$('#rmax_n').text(data[key].MaxinN);
}
}
		}
		,error:function(error) {
			alert('not found!!')
		}
	})
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
background-color: green;
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
                           New Bar Creation
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
								<a href="new_Bar_Creation.html">New Bar Creation</a>
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
             <form action="Detailsinsert.jsp" method="post">
				<div class="row" style="padding-left: 700px; padding-bottom: 10px">
						<div class="btn-group" style="Border-radius:2px">
						<button class="btn btn-primary " type="submit"  name="create_clicked"value="Delete"><i class="icon-plus"></i>&nbsp;Create</button> 
							
					<button class="btn btn-primary " type="submit"  name="close_clicked"value="Close"><i class="icon-remove-sign"></i>&nbsp;Close</button>
					   </div>
				</div>
				<div class="search-container">
										
				</div>
				<div class="row">
							<div style="padding-left:15px">
						<table>
							<tr>
							
								<td style="text-align: center">
									<label class="control-label1">
										VENDOR
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										INVOICE NO
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										Date
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										WEIGHT
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										RATE/KG
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										HSN CODE
									</label>
								</td>

							</tr>
								<tr>
									<td>
										<input type="text"  value="" id="inputString" class="form-control" placeholder=""
								onkeyup="lookup(this.value);" onblur="fill();" name="vendor"/>
								
								<div class="suggestionsBox" id="suggestions" style="display: none;">
								<div class="suggestionList" id="autoSuggestionsList">
								</div>
								</div>
									</td>
									<td>
										<input type="text" id="todate" class="form-control" name="invoice" placeholder="">
									</td>
									<td>
										<input type="date" id="todate" class="form-control" name="date" placeholder="">
									</td>
									<td>
										<input type="text" id="todate" class="form-control" name="weight" placeholder="">
									</td>
									<td>
										<input type="text" id="todate" class="form-control" name="rate" placeholder="">
									</td>
									<td style="padding-left: 90px">
										<input type="text" id="todate" class="form-control" name="hsncode" placeholder="">
									</td>
								</tr>
							</table>
								<div class="row">
							<div style="padding-left:15px">
						<table>
							<tr style="padding-top: 20px">
							
								<td style="text-align: center">
									<label class="control-label1">
										RM GRADE
									</label>
								</td>
								
									
								
								<td style="text-align: center">
								
								
									<label class="control-label1">
										SEC
									</label>
									
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										SIZE
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										HT NO
									</label>
								</td>
								<td style="text-align: center">
									<label class="control-label1">
										ATTACHMENT
									</label>
								</td>
								</tr>
								<tr>
									<td>
										<input type="text"  value="" id="inputString1" class="form-control" placeholder=""
								onkeyup="lookup1(this.value);" onblur="fill1();" name="grade"/>
								
								<div class="suggestionsBox" id="suggestions" style="display: none;">
								<div class="suggestionList" id="autoSuggestionsList">
								</div>
								</div>
									</td>
									<td>
									<select name="sec" style="text-align: center;width:190px;height:35px">	
									<option value = "DIA"  selected>DIA</option>
									<option value = "RCS"  selected>RCS</option>
									</select>
									</td>
									<td>
										<input type="text" id="todate" class="form-control" name="size" placeholder="">
									</td>
									<td>
										<input type="text" id="todate" class="form-control" name="htno" placeholder="">
									</td>
									<td>
										<input type="file" id="todate" class="form-control" placeholder="" title="SCAN DOCUMENT ATTACHMENT LINK" name="file_access">
									</td>
								</tr>
							</table>
				</div>
				</div>
				</div>
				</div>
				
				<div style="padding-top: 25px; padding-right: 20px;">
							<div id="builder-basic" class="query-builder form-inline" style="padding:10px">
								<table border="1" style="border: 2px solid #2C3E50">
													<tr  style="padding: 100px; background-color: #5fec75; border: 2px solid #2C3E50">
                                                        <td colspan="15"  style="background-color:#ffb848; text-align: center  ">
															<label class="control-label1" style=""><b>Chemical Compostion</b></label>
														</td>
                                                    </tr>
													<tr border="1" style="border: 2px solid #2C3E50">
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">%</label>
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">C</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Mn</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Si</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">S</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">P</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Cr</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Ni</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Mo</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Cu</label>	
														</td >
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">V</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">Al</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">W</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">N</label>	
														</td>
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label class="control-label1">---</label>	
														</td>
													</tr>
									<tr  style="padding: 100px; border: 2px solid #2C3E50">
                                                        <td>
															<label><b>MIN</b></label>
														</td>
														<td id="rmin_c" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															
														</td>
														<td id="rmin_Mn" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_si" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_s" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_p" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_cr" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_ni" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															
														</td>
														<td id="rmin_mo" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_cu" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_v" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_al" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_w" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin_n" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmin__" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
													</tr>
													<tr>
														<td>
															<label><b>MAX</b></label>
														</td>
														<td id="rmax_c" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_Mn" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_si" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_s" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_p" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_cr" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_ni" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															
														</td>
														<td id="rmax_mo" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_cu" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_v" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_al" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_w" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax_n" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>
														<td id="rmax__" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 
														</td>	
													</tr>
												<tr>
														<td>
															<label><b>LADLE </b></label>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladC"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladMn"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladSi"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladS"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladP"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladCr"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladNi"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladMo"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladCu"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladV"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladAl"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladW"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="ladN"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="vendor_code"/>
														</td>
													</tr>
													<tr>
														<td>
															<label><b>ACTUAL </b></label>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actC"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actMn"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actSi"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actS"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actP"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actCr"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actNi"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actMo"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actCu"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actV"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actAl"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actW"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="actN"/>
														</td>
														<td>
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="vendor_code"/>
														</td>
													</tr>
													<tr>
														<td class="table-row">
															<label class="control-label1">Remarks:-</label>
														</td>
														
														<td colspan="14">
															 <input type="text" class="form-control" maxlength="200" id="vendorcode" name="remarks" placeholder="Enter the remark"/>
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
