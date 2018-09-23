<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>Raw Material Master</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);
        function hideURLbar() {
            window.scrollTo(0, 1);
        }
        
    </script>
<style type="text/css">
.mylist li:after {
    content: "";
    display: block;
    height: 1px;
    width: 100%;
    
    background: #565f5b;
}
body {
font-family: Helvetica;
font-size: 13px;
color: #000;
}
.suggestionsBox {
position: relative;
margin: 0px 0px 0px 0px;
width: 210px;
background-color: white;
-moz-border-radius: 7px;
-webkit-border-radius: 1px;
border: 2px solid #ced4da;
color: #fff;
max-height:80px;
overflow-y:scroll;

}
.suggestionList {
margin: 0px;
padding: 0px;

}
.suggestionList li {
margin: 0;
cursor: pointer;
color: black;
list-style:none;
border-style: solid;
border-width: 0.1px;
border-color: #ced4da;
border-bottom: 5px solid rgba(0,0,0,0);
padding-left: 15px;
}
.suggestionList li:hover {
background-color:#b0ded7 ;
}
</style>

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
    <link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    
    <!--//web-fonts-->
</head>

<body>
    <div class="se-pre-con"></div>
    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a href="index.html" style="font-family: monospace">ERP</a>
                </h1>
                <span style="font-family: monospace">ERP</span>
            </div>
			
            <!--<div class="profile-bg"></div>-->
            <ul class="list-unstyled components mylist">
                <li class="active">
                    <a href="index.html">
                        <i class="icon-dashboard"></i>
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href="charts.html">
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
                            <a href="cards.html">Raw Material Master</a>
                        </li>
                        <li>
                            <a href="carousels.html">Raw Material Details</a>
                        </li>
                          </ul>
                	</li>
                  </ul>
                </li>
                <li>
                    <a href="widgets.html">
                        <i class="far fa-window-restore"></i>
                        Reports
                    </a>
                </li>
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
                            Raw Material Master
                        </h4>
                    <ul class="top-icons-agileits-w3layouts float-right">
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user" style="color: black"></i>
                            </a>
                             
                            <div class="dropdown-menu drop-3">
                                <%String name=session.getAttribute("FullName").toString();%>
                                <a href="index.jsp" class="dropdown-item mt-3" id="Change_Password">
                                    <h4>
                                        <i class="fas fa-envelope mr-3"></i><%=name %></h4>
                                </a>
                                
                                <a href="password.jsp" class="dropdown-item mt-3" id="Change_Password">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Change Password</h4>
                                </a>
                                  <a href=create_userhtml.jsp class="dropdown-item mt-3" id="Add_User">
                                    <h4>
                                        <i class="far fa-plus-square mr-3"></i>Add User</h4>
                                </a>
                              	  <a href="logout.jsp" class="dropdown-item mt-3" id="Logout"> 
                                    <h4>
                                        <i class="far fa-user mr-3"></i>Logout</h4>
                                </a>
                                </div>
                            
                        </li>
                    </ul>
                </div>
            </nav>
            <!--// top-bar -->
                 <!--// three-grids -->
            <div class="container-fluid">
            <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
						
                       
						<div>	
      					</div>
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
								<span  style="color: white"><i class="icon-home" style="color: black"></i></span><a href="index.html">Home </a><i class="icon-angle-right"  style="color: black">
                                </i>
                            </li>
							<li><a href="Vendordetails.jsp">Purchase </a><i class="icon-angle-right"  style="color: black"></i></li>
							<li><a href="Vendordetails.jsp">Vendor Details</a></li>
                            <li class="pull-right">
								<div>
                                </div>
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
										onkeyup="lookup(this.value);" onblur="fill();" name="vendor" autocomplete="off"/>
								
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
											con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Erp","root","Ashu1997"); 
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
						
						<div id="Display_id2">
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
                        </div>
 						<!--  will display for when  particular match does not exist -->
						<div id="Display_id3">
							<h5 class="page-title" style="font-size: 30px">
                            	Search Result
                       		</h5>
							<table class="table table-striped table-bordered sortable table-hover">
								<tr class="display_dec">
									<td style="height: 40px">
										<a style="color: black;font-size: 20px; cursor: pointer"><i class="icon-remove-sign"  onclick="display_vendor();" style="cursor: pointer"> back</i></a>
									</td>
									<td style="height: 40px">
										<h6 class="page-title" >
                            				Search Result Not Found
                       					</h6>
									</td>
								</tr>
							</table>
							
						</div>
						</form>	
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
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
			//debugger
		if(res) {
		$('#suggestions').show();
		$('#autoSuggestionsList').html(data);
		}
		else{
			debugger
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
		//debugger
		$('#Display_id1').hide();
		$('#Display_id2').show();
		$('#Display_id3').hide();
		value=inputString;
		
		$.ajax({
			
			async: false,
			url:"grade_Search_display.jsp",
			type:"GET",
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

    <script src="js3/moment.min.js"></script>
    <script src="js3/pignose.calender.js"></script>
          <script>
        $(document).ready(function () {
        	
        	display();
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
      function display()
      {
    	  $.ajax({
    			async: false,
    			url:"AdminAddUser.jsp",
    			type:"GET",
    			dataType:"json",
    			success:function(data)
    			{
    				//debugger;
    				//alert(data);
    				if(data[0].Result=="True") {
    					
    					$('#Add_User').show();
    					
    					}
    					else{
    						//alert("hi");
    						$('#Add_User').hide();
    						
    					}
    			}
    	  });
      }
    </script>
    <script src="js/app.js" type="text/javascript"></script>
    <script src="js/table-managed.js" type="text/javascript"></script>
     <script type="text/javascript">
        $(document).ready(function () {
            App.init();
            TableManaged.init();
            $('#Display_id2').hide();
			$('#Display_id3').hide();
			$('#selectoption').hide();
        });
    </script>
    <script type="text/javascript">
    
    $(document).ready(function(){
    	$.ajax({
			async: false,
			url:"button_display.jsp",
			type:"GET",
			dataType:"json",
			success:function(data)
			{
				//debugger;
				//alert(data);
				if(data[0].Result_delete=="True") {
					
					$('#delete_button').show();
					
					}
					else{
						//alert("hi");
						$('#delete_button').hide();
						
					}
				if(data[0].Result_update=="True") {
					
					$('#Edit_button').show();
					
					}
					else{
						//alert("hi");
						$('#Edit_button').hide();
						
					}

			}
	  });
	});
	
	  </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="js3/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>
