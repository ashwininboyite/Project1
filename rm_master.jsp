<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
    <script type="text/javascript">
function lookup(inputString) {
		if(inputString.length == 0) {
		$('#suggestions').hide();
		} else {
		$.post("grade_Search.jsp", {queryString: ""+inputString+""}, function(data){
		//	var letters = /^[A-Za-z0-9<]+$/;
			var result = data.trim();
			var patt = new RegExp("<");
			var res = patt.test(result);
			debugger
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
		url:"grade_Search_display.jsp",
		type:"POST",
		dataType:"json",
		data:{'name':value},
		success:function(data)
		{
			for (var key in data) {
				if (data.hasOwnProperty(key)) {
				document.getElementById("mytext").value =data[key].Rmgrade ;	
				$('#rmin_c').text(data[key].MinC);
			  	$('#rmin_mn').text(data[key].MinMn);
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
			  	$('#rmax_mn').text(data[key].MaxMn);
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
function display_vendor(){
	$('#Display_id1').show();
	$('#Display_id2').hide();
	$('#Display_id3').hide();
	$('#inputString').show();
	document.getElementById("inputString").value='';
}

function alternate(id){ 
	  if(document.getElementsByTagName){  
	    var table = document.getElementById(id);   
	    var rows = table.getElementsByTagName("tr");   
	    for(i = 2; i < rows.length; i++){ 
	    	if(i%2==0){
	    	 rows[i].className = "even";}
	    	else{
	    		rows[i].className="odd";}
	    }
	  //manipulate rows 
	      
	    
	  } 
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

 
  .odd{background-color: white;} 
  .even{background-color: gray;} 
</style>
</head>

<body class="page-header-fixed" onload="alternate('Display_id11')">
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
                    <li><a href="Report.jsp"><span class="title">Report  </span><i class="icon-file-text-alt"  style="padding-left: 130px"></i> </a></li>
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
                              
                            <li style="align-content: space-around "> 
							</li>
                        </ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
              <form action="updateraw.jsp" method=post >
				<div class="row" style="padding-left: 500px; padding-bottom: 10px">
						<div class="btn-group">
							<button class="btn btn-primary" name="new_clicked"><i class="icon-plus"></i>&nbsp;New</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="edit_clicked"><i class="icon-pencil"></i>&nbsp;Edit</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="delete_clicked"><i class="icon-trash" ></i>&nbsp;Delete</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="close_clicked"><i class="icon-remove-sign"></i>&nbsp;Close</button></a>
						</div>
				</div>
				<div class="row" >
							<div id="builder-basic" class="query-builder form-inline" style="padding:10px">
								<table border="0">
									<tr  style="padding: 100px">
                                       <td>
										<input type="text"  value="" id="inputString" class="form-control" placeholder="Search Grade Name"
										onkeyup="lookup(this.value);" onblur="fill();" name="vendor"/>
								
										<div class="suggestionsBox" id="suggestions" style="display: none;">
										<div class="suggestionList" id="autoSuggestionsList">
										</div>
										</div>
									</td>
                                </table>
					</div>
				</div>
				
				<div id="Display_id1" >
                 
				<div class="row" >
								<table border="1" style="border: 2px solid #2C3E50" id="Display_id11" >
													<tr  style="padding: 100px; background-color: #5fec75; border: 2px solid #2C3E50">
                                                        <td style="padding: 10px;border: 2px solid #2C3E50 " rowspan="2"> 
                                                            <label class="control-label1">RM Grade:</label>
                                                        </td>
														<td colspan="15"  style="background-color:#ffb848; text-align: center ;font-size:18px; ">
															<label class="control-label1" style=""><b>Chemical Compostion</b></label>
														</td>
                                                    </tr>
													<tr border="1" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														<td class="table-row" style='width:80px;'>
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
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center' >
															<label class="control-label1">---</label>	
														</td>
													</tr>
													
										<%try{
											boolean flag=false;   
											Connection con=null;  
											Statement smt=null;
											
											ResultSet rs;
											Double rmin_c;
											String s=request.getParameter("rm_grade");
											response.setContentType("text/html");   
											Class.forName("com.mysql.jdbc.Driver");    
											con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Erp","root","Rams3098!"); 
											smt=con.createStatement();
											String sql ="select * from Mingrade Natural join Maxgrade;";
											int i=0;
											rs =smt.executeQuery(sql);
											
										while(rs.next()){
										%>
												
										<tr  style="padding: 100px; border: 2px solid #2C3E50" id="Display_id11">
                                                        <td style="padding: 1px;border: 1px solid #2C3E50;font-size:16px;text-align:center " rowspan="2"> 
                                                           <input type="checkbox" name="check<%=i%>" value=<%= rs.getString(1) %>> 
                                                       
                                                        <%= rs.getString(1) %></td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label><b>MIN</b></label>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<%= rs.getString(2) %> 
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(3) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(4) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(5) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<%= rs.getString(6) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(7) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(8) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<%= rs.getString(9) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(10) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(11) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(12) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(13) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(14) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%="-" %>
														</td>
													</tr>
													<tr >
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label><b>MAX</b></label>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(15) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(16) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(17) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(18) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(19) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(20) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(21) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(22) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(23) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(24) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(25) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(26) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%= rs.getString(27) %>
														</td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															  <%="-" %>
														</td>										
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
						</div>
						
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
                        <div class="row">
								<table border="1" style="border: 2px solid #2C3E50">
													<tr  style="padding: 100px; background-color: #5fec75; border: 2px solid #2C3E50">
                                                        <td style="padding: 10px;border: 2px solid #2C3E50 " rowspan="2"> 
                                                            <label class="control-label1">RM Grade:</label>
                                                        </td>
														<td colspan="15"  style="background-color:#ffb848; text-align: center ;font-size:18px; ">
															<label class="control-label1" style=""><b>Chemical Compostion</b></label>
														</td>
                                                    </tr>
													<tr border="1" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														<td class="table-row" style='width:80px;'>
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
														<td class="table-row" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center' >
															<label class="control-label1">---</label>	
														</td>
													</tr>
													
										<%
										%>		
										<% int j=0 ;%>
										<tr  style="padding: 100px; border: 2px solid #2C3E50">
                                                        <td style="padding: 1px;border: 1px solid #2C3E50;font-size:16px;text-align:center " rowspan="2"> 
                                                           <input type="checkbox" name="check<%=j%>" id="mytext" >
                                                       
                                                        </td>
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label><b>MIN</b></label>
														</td>
														<td id="rmin_c" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmin_mn" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
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
														<td id="" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															 <%="-" %>
														</td>
													</tr>
													<tr >
														<td style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															<label><b>MAX</b></label>
														</td>
														<td id="rmax_c" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmax_mn" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmax_si" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmax_s" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmax_p" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
														</td>
														<td id="rmax_cr"  style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
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
														<td id="" style='width:80px;border: 1px solid #2C3E50 ;font-size:16px;text-align:center'>
															  <%="-" %>
														</td>										</tr>
								
								<% 
						
						
						%>
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
						</div>
						</form>	
							
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
		</div>
	</div>
</body>
</html>
