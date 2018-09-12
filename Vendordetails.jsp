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
    <title>Vendor Details</title>
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
                            Vendor Details
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
               
					<form name=myname method=post action="update.jsp">
					 <div class="col-md-12 col-md-push-1">
							<table style="width: 100%;cellSpacing=0"; >
							<tr>
							<td>
								<div id="select_drop_down">
										<select name="Search_id" id="Search_id" class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Select Category" >
			                            <option value="select_op">Select Category </option>
													 <option value="1">Vendor Name</option>
			                                        <option value="2" >Vendor Code</option>
													
			                        </select>
								</div>
							</td>
							<td style="margin-right:100px">
								<input type="text"  value="" id="inputString" class="form-control" placeholder="Search"
										onkeyup="lookup(this.value);"  name="vendor" autocomplete="off" style="display: inline-block;" title="search" />
								
										<div class="suggestionsBox" id="suggestions" style="display: none;" >
										<div class="suggestionList" id="autoSuggestionsList" >
										</div>
										</div>
							</td>
							<td>
										<h6  id="selectoption" style="color: black"	>*Select option</h6>
									</td>
							<td >
								<div style="float: right;">
									
										<div class="btn-group" style="Border-radius:2px">
											 <button class="btn btn-primary" name="new_clicked" title="new" style="border-radius: 50%"><i class="icon-plus" style="color: white;" title="New" ></i></button>
											<button class="btn btn-primary" type="submit" name="edit_clicked" title="edit" value="View" id="Edit_button" style="border-radius: 50%"><i class="icon-pencil" style="color: white" ></i></button>
											<button class="btn btn-primary" type="submit" name="view_clicked" title="view" value="View" style="border-radius: 50%"><i class="icon-move" style="color: white"></i></button> 
				            				<button class="btn btn-primary" type="submit"  name="delete_clicked" title="delete" value="Delete"  id="delete_button" style="border-radius: 50%"><i class="icon-trash" style="color: white;"></i></button> 
											<button class="btn btn-primary" type="submit"  name="close_clicked"value="Close" title="close" style="border-radius: 50%"><i class="icon-remove-sign" style="color: white"></i></button>
									   </div>
									   
								</div>
							</td>
						</tr>
				</table>
    </div>
			</div>
				
				<div id="Display_id1">
				<%
				
						String id = request.getParameter("userId");
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
						String dbName = "erp";
						String userId = session.getAttribute("FullName").toString();
						String password = session.getAttribute("password").toString();
						
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
											<tr class="display_dec" bgcolor="#1abc9c" >
											<th align="left" valign="middle" style="color: white;"></th>
												<th align="left" valign="middle" >Vendor Code</th>
												<th align="left" valign="middle" >Vendor Name </th>
											</tr>
										</thead>
						<%
						try{ 
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM vendors";
						int i=0;
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
							
						%>
						<tr><td><input type="checkbox" name="check<%=i%>" value=<%=resultSet.getString(1) %>> </td>
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
						<div id="Display_id2" >
						<h5 class="page-title" style="font-size: 30px">
                            Search Result
                        </h5>
						
							<table class="table table-striped table-bordered sortable table-hover">
								<tr class="display_dec">
									<td style="height: 40px">
										<a style="color: black;font-size: 20px; cursor: pointer"><i class="icon-remove-sign"  onclick="display_vendor();" style="cursor: pointer"> back</i></a>
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
        </div>
    </div>


    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
function lookup(inputString) {
	debugger
	
	var selected = document.getElementById('Search_id');
	var data_id=selected.options[selected.selectedIndex].value;
	if(data_id=="1")
		{
				$('#selectoption').hide();
				if(inputString.length == 0) {
				$('#suggestions').hide();
				} else {
				$.post("vendor_Search.jsp", {queryString: ""+inputString+"",querySelection:""+data_id+""}, function(data){
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
					$('#selectoption').hide();
				}
				});
				}
			}
	else if(data_id=="2")
	{
		$('#selectoption').hide();
		if(inputString.length == 0) {
			$('#suggestions').hide();
			} else {
			$.post("vendor_Search.jsp", {queryString: ""+inputString+"",querySelection:""+data_id+""}, function(data){
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
				$('#selectoption').hide();
			}
			});
			}
	}
	else{
		$('#selectoption').show();
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
	$('#selectoption').hide();
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

function select_option(options)
{
	if(options.value==='1' || options.value==='2')
		{
		$('#selectoption').hide();
		$('#Display_id1').show();
		$('#Display_id2').hide();
		$('#Display_id3').hide();
		$('#inputString').show();
		document.getElementById("inputString").value='';
		}
}
function display_vendor(){
	debugger
	$('#Display_id1').show();
	$('#Display_id2').hide();
	$('#Display_id3').hide();
	$('#inputString').show();
	$('#selectoption').hide();
	$("div.select_drop_down select").val("select_op");
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
				debugger;
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