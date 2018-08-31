<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
 <head id="Head1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>New User</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/DT_bootstrap.css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
     <link href="css/style-metro.css" rel="stylesheet" type="text/css" />
   
   
   
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
 <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
 </head>
 <body >
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
                    <!-- Search-from -->
                     <h4 class="form-inline mx-auto search-form" style="padding-bottom: 10px">
                            New User
                        </h4>
                  
                    <!--// Search-from -->
                    <ul class="top-icons-agileits-w3layouts float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                <%String name=session.getAttribute("username").toString();%>
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
								<span  style="color: white"><i class="icon-home" style="color: black"></i></span><a href="index.html">Home </a>
                                </i>
                            </li>
							<li><a href="create_userhtml.jsp">New User </a></li>
					</div>
                            </li>
						</ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
					<form class="form-container" method="post" action="create_new.jsp">
							<div class="col-md-9">	
				<div class="row" style="padding-left: 475px; padding-bottom: 10px">
					<div class="col-md-12">
						<div class="btn-group">
					
							<button class="btn btn-primary" name="create_clicked" type="submit"><i class="icon-save"></i>&nbsp;Create</button>
							
					</div>
					<div class="btn-group">
						<button class="btn btn-primary" name="close_clicked" type="submit"><i class="icon-remove"></i>&nbsp;Close</button>
					</div>
 					</div>
				</div>
							<div class="portlet-title">
                                <div class="caption">
                                    <i class="icon icon-plus" style="color: black"></i>Create New User
                                </div>
                             </div>
                            
								<table border="0">
													
                                                    
                                                    <tr>
                                                        <td style="padding: 10px">
                                                            <label class="control-label text-left">Name:</label>
                                                        </td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                                                <input type="text" class="form-control" maxlength="200" id="txtusername" name="txt_uname" placeholder="User Name" required/>
                                                            </div>
                                                        </td>
														<td><span id="validusername" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Role:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-pencil" class="icon-color"></i></span>
                                                                <input type="text" class="form-control" maxlength="200" id="txtgstnumber" name="txt_role" placeholder="Role"  required />
                                                            </div>
                                                        </td>
                                                        <td><span id="validconfpassword" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
												    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Email Id:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                                                <input type="email" class="form-control" maxlength="200" id="txtemailid" name="txt_emailid" placeholder="EmaiId" required  />
                                                            </div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
		                                                     <td style="padding: 10px"><label class="control-label text-left">Password:</label></td>
		                                                    <td style="padding: 10px">
		                                                            <div class="input-group">
		                                                                <span class="input-group-addon"><i class="icon-key"></i></span>
		                                                                <input type="password" class="form-control" maxlength="200" id="txtusername" name="password" placeholder="Password" required/>
		                                                            </div>
		                                                     </td>
		                                                     <td><span id="validusername" style="color:orangered;visibility:hidden">*</span></td>
														
                                                    </tr>
                                                   <tr>
                                                    <td style="padding: 10px"><label class="control-label text-left">set user persmission:</label></td>
                                                   </tr>
                                                   
                                                   
                                                   <tr>
                                                    <td style="padding: 10px">
											                        <!-- Material inline 2 -->
											            <div class="form-check form-check-inline">
											                <input type="checkbox" class="form-check-input" name='permission' value="delete" id="materialInline2">
											                <label class="form-check-label" for="materialInline2">delete</label>
											            </div>
											
											            <!-- Material inline 3 -->
											            <div class="form-check form-check-inline">
											                <input type="checkbox" class="form-check-input" name='permission' value="update"  id="materialInline3">
											                <label class="form-check-label" for="materialInline3">update</label>
											            </div>
											            <div class="form-check form-check-inline">
											                <input type="checkbox" class="form-check-input" name='permission' value="Alter"  id="materialInline3">
											                <label class="form-check-label" for="materialInline3">Alter</label>
											            </div>
           												   <div class="form-check form-check-inline">
											                <input type="checkbox" class="form-check-input" name='permission' value="permission"  id="materialInline3">
											                <label class="form-check-label" for="materialInline3">All</label>
											            </div>
           	
                                                   </td>
                                                 </tr>
                                               </table>
                                                <br/>
                                                </form>			            
               								 </div>
         								</div>
    								</div>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
function lookup(inputString) {
	debugger
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
	debugger
	$('#inputString').val(thisValue);
	setTimeout("$('#suggestions').hide();",200);
	if(thisValue!=null)
	{Search_name(thisValue);}
}
function Search_name(inputString) {
	debugger
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
			debugger
			var count=data.length;
			 $("#dynamictable1").show();
	         $("#dynamictable1").innerHTML='';
	         $("#sample_2").remove()
	         $("#dynamictable1").append($("<table width=100% id='sample_2' class='table table-striped table-bordered sortable tablehover'>"+ 
	                                      "<thead><tr><th align='left' valign='middle' style='font-size:12px;'></th><th align='left' valign='middle' style='font-size:12px;'>Vendor Code</th>"+
	                                      "<th align='left' valign='middle' style='font-size:12px;'>Vendor Name</th>" + 
	                                      "</tr></thead><tbody>"));
	         if(count>0)
             {
                     for(var i=0;i<count;i++)
                         {
                      var table="<tr><td><input type='checkbox' name='check"+i+"'"+ "value='"+data[i].Vendorcode+"'>"+
                      			"<td align='left' valign='middle'>" +data[i].Vendorcode+
                                "</td><td align='left' valign='middle'>"+data[i].Name+"</td></tr>";
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
    				debugger;
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
        });
    </script>
    <!-- //dropdown nav -->
     <!-- Js for bootstrap working-->
    <script src="js3/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->
  	
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
