//updated raw material jsp

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
     <link rel="icon" href="https://3.imimg.com/data3/OS/HB/MY-11129099/arihant-timber-industries-p-ltd-logo-120x120.jpg" type="image/png">
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
           
            <div>
            <!-- <img alt="" src="/ERPFinal/images/logo3.jpg" width="100%" ></div>-->
            <img alt="" src="https://2.bp.blogspot.com/-2GYAATtyOus/WwD_dKWzHGI/AAAAAAAAJCw/K0QVX_rByDg7XYkgM0KGq0kJjj4kjIvWwCLcBGAs/s1600/Arihant%2BInstitute%2BLimited%2BIPO.png" style="width:100%">
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
                            Raw Material
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
								<a href="Detailsinsert.jsp">Raw Material Details</a>
							</li>
                              
                            <li style="align-content: space-around "> 
							</li>
                        </ul>
							
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    
			<form name=myname method=post action="updaterawdetail.jsp">
					 <div class="row" style="padding-bottom: 10px " >
    					<div class="col-sm-7" >
    						<div id="builder-basic" class="query-builder form-inline">
								<table border="0">
									<tr  style="padding: 100px">
                                       <td>
										<input type="text"  value="" id="inputString" class="form-control" placeholder="Search RMgrade"
										onkeyup="lookup(this.value);" onblur="fill();" name="vendor"/>
								
										<div class="suggestionsBox" id="suggestions" style="display: none;">
										<div class="suggestionList" id="autoSuggestionsList">
										</div>
										</div>
									</td>
                                </table>
							</div>
						</div>
						<div class="col-sm-5" style="text-align: right;">
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
						
    				</div>
    <div id="Display_id1">
				
				<%
				
						String id = request.getParameter("userId");
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
						String dbName = "Erp";
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
												<th align="left" valign="middle" >Bar Number</th>
												<th align="left" valign="middle" >HSN Code</th>
												<th align="left" valign="middle" >Rmgrade</th>
												<th align="left" valign="middle" >Sec</th>
												<th align="left" valign="middle" >Size </th>
												<th align="left" valign="middle" >Weight</th>
												<th align="left" valign="middle" >Vendor Name </th>
												<th align="left" valign="middle" >Remarks</th>
												<th align="left" valign="middle" >Attachments </th>
											</tr>
											
										</thead>
						
						
						
										
						<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM RawMaterial";
						int i=0;
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
						%>
						<tr><td><input type="checkbox" name="check<%=i%>" value=<%= resultSet.getString(1) %>> </td>
						<td><%=resultSet.getString(1) %></td>
						<td><%=resultSet.getString(8) %></td>
						<td><%=resultSet.getString(2) %></td>
						<td><%=resultSet.getString(9) %></td>
						<td><%=resultSet.getString(10) %></td>
						<td><%=resultSet.getString(40) %></td>
						<td><%=resultSet.getString(3) %></td>
						<td><%=resultSet.getString(39) %></td>
						<td><%=resultSet.getString(12) %></td>
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
						<div id="Display_id2"  >
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
						<div id="dynamictable1"></div>
						</div>
						<br/>
						<!--  will display for when  particular match does not exist -->
						<div id="Display_id3" >
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
		$.post("grade_Searchrmd.jsp", {queryString: ""+inputString+""}, function(data){
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
	setTimeout("$('#suggestions').hide();",2000);
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
		url:"grade_Search_Displayrmd.jsp",
		type:"POST",
		dataType:"json",
		data:{'name':value},
		success:function(data)
		{
			var count=data.length;
			 $("#dynamictable1").show();
	         $("#dynamictable1") .innerHTML='';
	         $("#sample_2").remove()
	         $("#dynamictable1").append($("<table width=100% id='sample_2' class='table table-striped table-bordered sortable tablehover'>"+ 
	                                      "<thead><tr><th align='left' valign='middle' style='font-size:12px;'></th><th align='left' valign='middle' style='font-size:12px;'>Barno</th>"+
	                                      "<th align='left' valign='middle' style='font-size:12px;'>HSN Code</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Rmgrade</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Sec</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Size</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Weight</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Vendor Name</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Remarks</th>" + 
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Attachments</th>" + 
	                                      "</tr></thead><tbody>"));
	         if(count>0)
            {
                    for(var i=0;i<count;i++)
                        {
                     var table="<tr><td><input type='checkbox' name='check"+i+"'"+ "value='"+data[i].Barno+"'>"+
                     			"<td align='left' valign='middle'>" +data[i].Barno+
                     			"</td><td align='left' valign='middle'>"+data[i].HSNCode+
                               "</td><td align='left' valign='middle'>"+data[i].Rmgrade+
                               "</td><td align='left' valign='middle'>"+data[i].Sec+
                               "</td><td align='left' valign='middle'>"+data[i].Size+
                               "</td><td align='left' valign='middle'>"+data[i].Weight+
                               "</td><td align='left' valign='middle'>"+data[i].Vendorname+
                               "</td><td align='left' valign='middle'>"+data[i].Remarks+
                               "</td><td align='left' valign='middle'>"+data[i].Attachments+
                               "</td></tr>";
                              	$("#sample_2").append(table); 
                        }
                    $("#dynamictable1").append("</tbody></table>");
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
