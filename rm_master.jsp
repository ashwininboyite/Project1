<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>ERP</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);
        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
      <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="css3/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Bars Css -->
    <link rel="stylesheet" href="css3/bar.css">
    <!--// Bars Css -->
    <!-- Calender Css -->
    <link rel="stylesheet" type="text/css" href="css3/pignose.calender.css" />
    <!--// Calender Css -->
    <!-- Common Css -->
    <link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Nav Css -->
    <link rel="stylesheet" href="css3/style4.css">
    <!--// Nav Css -->
    <!-- Fontawesome Css -->
    <link href="css3/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    
    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->
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

.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    margin-left:-118px;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

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

<body>
    <div class="se-pre-con"></div>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a  style="font-family: monospace">ERP</a>
                </h1>
                <span style="font-family: monospace">ERP</span>
            </div>
			
            <!--<div class="profile-bg"></div>-->
            <ul class="list-unstyled components">
                <li class="active">
                    <a href="index.html">
                        <i class="fas fa-th-large"></i>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="Salesreport.jsp">
                        <i class="fas fa-chart-pie"></i>
                        Sales
                    </a>
                </li>
                <li>
                    <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">
                        <i class="far fa-file"></i>
                        Purchase
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu1">
                        <li>
                            <a href="Vendordetails.jsp">Vendor</a>
                        </li>
                        <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                        
                        Raw Material
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="rm_master.jsp">Raw Material Master</a>
                        </li>
                        <li>
                            <a href="rawmaterialdetail.jsp">Raw Material Details</a>
                        </li>
                          </ul>
                	</li>
                  </ul>
                </li>
               <!-- <li>
                    <a href="mailbox.html">
                        <i class="far fa-envelope"></i>
                        Mailbox
                        <span class="badge badge-secondary float-md-right bg-danger">5 New</span>
                    </a>
                </li>-->
                <li>
                    <a href="Report.jsp">
                        <i class="far fa-window-restore"></i>
                        Reports
                    </a>
                </li>
               <!-- <li>
                    <a href="pricing.html">
                        <i class="fas fa-table"></i>
                        Pricing Tables
                    </a>
                </li>
                <li>
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                        <i class="fas fa-users"></i>
                        User
                        <i class="fas fa-angle-down fa-pull-right"></i>
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3">
                        <li>
                            <a href="login.html">Login</a>
                        </li>
                        <li>
                            <a href="register.html">Register</a>
                        </li>
                        <li>
                            <a href="forgot.html">Forgot password</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="maps.html">
                        <i class="far fa-map"></i>
                        Maps
                    </a>
                </li>-->
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                       <h4 class="page-title" style="padding-bottom: 10px">
                            RM Material Master
                        </h4>
                
                    <ul class="top-icons-agileits-w3layouts float-right">
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user" style="color: black;"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                
                                <a href="password.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Change Password</h4>
                                </a>
                                <a href="logout.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-user mr-3"></i>Logout</h4>
                                </a>
                                </div>
                        </li>
                    </ul>
                </div>
            </nav>
         <div class="page-content-wrapper">
            <div class="page-content">
                <!-- BEGIN PAGE HEADER-->
				
               <div class="container-fluid">
            <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
						
                       
						<div>	
      					</div>
                     <ul class="page-breadcrumb breadcrumb">
                            <li>
								<span  style="color: white"><i class="icon-home" style="color: black;"></i></span><a href="index.html">Home </a><i class="icon-angle-right"  style="color: black">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a>
							<i class="icon-angle-right"  style="color: black;">
                                </i>
							</li>
							<li><a href="rawmaterial.html">Raw Material </a>
							<i class="icon-angle-right"  style="color: black;">
                                </i>
							</li>
							
							<li>
								<a href="rm_master.html">RM Material Master</a>
							</li>
                              
                            <li style="align-content: space-around "> 
							</li>
                        </ul>
							
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    
			    <form action="updateraw.jsp" method=post >
				<div class="row" style="padding-left: 10px; padding-bottom: 10px">
						<div class="btn-group">
							<button class="btn btn-primary" name="new_clicked"><i class="icon-plus" style="color: black;"></i>&nbsp;New</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="edit_clicked"><i class="icon-pencil"  style="color: black;"></i>&nbsp;Edit</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="delete_clicked"><i class="icon-trash"  style="color: black;"></i>&nbsp;Delete</button>
						</div>
						<div class="btn-group">
							<button class="btn btn-primary" name="close_clicked"><i class="icon-remove-sign"  style="color: black;"></i>&nbsp;Close</button></a>
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
										<table border="0" style="border: 2px solid #2C3E50" id="Display_id11" >
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
											con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Erp","root",""); 
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
						
						<div id="Display_id2" >
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
                        <h5 id="RMGRADE" style="color: green;"></h5>
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
								  </div>
								  <div id="Display_id3">
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
	</div>
</div>
</div>
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
			debugger
			$('#suggestions').hide();
			$('#Display_id11').hide();
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
	$('#Display_id11').hide();
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
			debugger
			for (var key in data) {
				if (data.hasOwnProperty(key)) {
				document.getElementById("mytext").value =data[key].Rmgrade ;
				$('#RMGRADE').text(data[key].Rmgrade);
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
	$('#Display_id11').show();
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

    <!-- Required common Js -->
    <script src='js3/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->
    
    <!-- loading-gif Js -->
    <script src="js3/modernizr.js"></script>
    <script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>
    <!--// loading-gif Js -->

    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
       <!--// Graph -->
     <script src="js3/moment.min.js"></script>
    <script src="js3/pignose.calender.js"></script>
          <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <script src="js/app.js" type="text/javascript"></script>
    <script src="js/table-managed.js" type="text/javascript"></script>
     <script type="text/javascript">
        $(document).ready(function () {
            App.init();
            TableManaged.init();
            $('#Display_id2').hide();
			$('#Display_id3').hide();
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="js3/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>
