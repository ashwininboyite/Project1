<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<%@page language="java"%>
<%@page import="java.sql.*"%>

<head id="Head1">
    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="CACHE-CONTROL" content="NO-CACHE" />
    <meta http-equiv="PRAGMA" content="NO-CACHE" />
    <meta http-equiv="EXPIRES" content="0" />
    <title>new Vendor</title>
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
    
<% if(null != request.getParameter("delete_clicked"))
{

						String id[]= new String[10];
					String delid=null;
					for(int i=0;i<10;i++){
					id[i]=request.getParameter("check"+i);
					out.println(id[i]);
					}
					
					try{
					Connection conn = null;
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp","root", "Rams3098!");
					ResultSet rs = null;
					Statement st=null;
					st=conn.createStatement();
					RequestDispatcher rd;
					for(int a=0;a<10;a++){
						
						st.executeUpdate("delete from Vendors where Vendorcode='"+id[a]+"'");
					}
					
					rd=request.getRequestDispatcher("Vendordetails.jsp");     
					try {      rd.forward(request, response);     
					} 
					catch (ServletException e) 
					{      // TODO Auto-generated catch block      
						e.printStackTrace(); 
					                                          
					
					}     
					}catch(SQLException e){ 
					    System.out.println(e.getMessage()); 
					    }
					  
	
}

if(null != request.getParameter("edit_clicked"))
{
%>	<div class="header navbar navbar-fixed-top">
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
                                <i class="icon-home" style="color: white"></i><a href="index.html">Home </a><i class="icon-angle-right" style="color: white">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a><i class="icon-angle-right" style="color: white"></i></li>
							<li><a href="newVendor.html">new Vendor</a></li>
                            <li class="pull-right">
								<div>
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
									
                                </div>
								</div>
                            </li>
							  <li class="pull-right">
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
                                </div>
                               <!--  <div class="search-container">
                                    <form action="/action_page.php">
                                    
										<form action="/action_page.php">
	      									<input type="text" placeholder="  Search..." name="search">
											<button type="submit"><i class="icon-search"></i></button>
	    								</form>
                                   
                                </form>
                                 </div>-->
                            </li>
							<li style="align-content: space-around "> 
							</li>
                        </ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
				 <form method="post" action="save.jsp">
								<%String id1[]= new String[10];
					String delid1=null;
					for(int i=0;i<10;i++){
					id1[i]=request.getParameter("check"+i);
					
					}
					String ide1=null;
					
					int sumcount=0;
					try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp", "root", "Rams3098!");
					for(int a=0;a<10;a++){
						if(id1[a]!=null)
							ide1=id1[a];
					}
					System.out.println(ide1);
					
					String query = "select * from vendors where Vendorcode='"+ide1+"'";
					
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					while(rs.next()){
						
					%>
					<div class="row" style="padding-left: 850px">
					<div class="col-md-12">
						<div class="btn-group" style="Border-radius:2px">
							<input class="btn btn-primary " type="submit" value="Update"> 
							</div>
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
                  		<input type="text" class="form-control" maxlength="200" id="txtusername" name="Name" value="<%=rs.getString(2)%>" required/>
                   		</div>
	                   </td>
						<td><span id="validusername" style="color:orangered;visibility:hidden">*</span></td>
	                   </tr> 
                   <tr> 
                   <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Address:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-home"></i></span>
                                                                <input type="text" class="form-control" maxlength="200" id="txtaddress"name="Address" value="<%=rs.getString(3)%>" required/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">GST Number:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-pencil" class="icon-color"></i></span>
                                                                <input type="number" class="form-control" maxlength="200" id="txtgstnumber" name="GST No" value="<%=rs.getString(4)%>" onkeypress="return checkgstnumber()" required />
                                                            </div>
                                                        </td>
                                                        <td><span id="validconfpassword" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Contact Person:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                                                <input type="text" class="form-control" maxlength="200" id="txtcontactperson" name="Contact Person" value="<%=rs.getString(5)%>" onkeypress="return " required />
                                                            </div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Designation:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-certificate"></i></span>
                                                                <input type="text" class="form-control" maxlength="200" id="txtdesignation" name="Designation" value="<%=rs.getString(6)%>" onkeypress="return checkedesignation()" required />
                                                            </div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Phone Number:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-phone"></i></span>
                                                                <input type="number" class="form-control" maxlength="10" id="txtphonenumber" name="Contact" value="<%=rs.getString(7)%>" onkeypress="return isNumberKey(event)" required />
                                                            </div>
                                                        </td>
                                                        <td></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Email Id:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                                                <input type="email" class="form-control" maxlength="200" id="txtemailid" name="Email" value="<%=rs.getString(8)%>" onkeypress="return checkemailid()" required />
                                                            </div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
                                                    
                                                    <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
                                                    </tr>
		
<%
}
}
catch(Exception e)
					{ }
%>
</table>
</form>
							
						</div>		
	</div>
	
<%	
}

  if(null != request.getParameter("view_clicked"))
{
%>	
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
                                <i class="icon-home" style="color: white"></i><a href="index.html">Home </a><i class="icon-angle-right" style="color: white">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a><i class="icon-angle-right" style="color: white"></i></li>
							<li><a href="newVendor.html">new Vendor</a></li>
                            <li class="pull-right">
								<div>
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
									
                                </div>
								</div>
                            </li>
							  <li class="pull-right">
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
                                </div>
                               <!--  <div class="search-container">
                                    <form action="/action_page.php">
                                    
										<form action="/action_page.php">
	      									<input type="text" placeholder="  Search..." name="search">
											<button type="submit"><i class="icon-search"></i></button>
	    								</form>
                                   
                                </form>
                                 </div>-->
                            </li>
							<li style="align-content: space-around "> 
							</li>
                        </ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
<form method="post" action="Vendordetails.jsp">
								<%String id3[]= new String[10];
					String delid3=null;
					for(int i=0;i<10;i++){
					id3[i]=request.getParameter("check"+i);
					
					}
					String ide3=null;
					
					int sumcount=0;
					try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Erp", "root", "Rams3098!");
					for(int a=0;a<10;a++){
						if(id3[a]!=null)
							ide3=id3[a];
					}
					System.out.println(ide3);
					String query = "select * from vendors where Vendorcode='"+ide3+"'";
					
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					while(rs.next()){
						
					%>
					<div class="row" style="padding-left: 850px">
					<div class="col-md-12">
						<div class="btn-group" style="Border-radius:2px">
							<a href="Vendordetails.jsp"><button class="btn btn-primary"><i class="icon-remove-sign"></i>&nbsp;Close</button></a>
							</div>
							</div>
							</div>
					<table border="0">

 				<tr>
		                 <td style="padding: 10px">
		               <label class="control-label text-left">Name:</label>
		                 </td>
                  <td style="padding: 10px">
                   		<div class="input-group">
                    	<span class="input-group-addon" ><i class="icon-user"></i></span>
                    	<span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
                  		<%=rs.getString(2)%>
                  		</span>
                   		</div>
	                  </td>
						<td><span id="validusername" style="color:orangered;visibility:hidden">*</span></td>
	                   </tr> 
                   <tr> 
                   <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Address:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-home"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
										                  		<%=rs.getString(3)%>
										                  		</span>
										                   		</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">GST Number:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-pencil" class="icon-color"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
										                  		<%=rs.getString(4)%>
										                  		</span>
										                   		</div>
                                                        </td>
                                                        <td><span id="validconfpassword" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Contact Person:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
										                  		<%=rs.getString(5)%>
										                  		</span>
										                   		</div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Designation:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-certificate"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
											                  		<%=rs.getString(6)%>
											                  		</span>
											                   		</div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Phone Number:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-phone"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
											                  		<%=rs.getString(7)%>
											                  		</span>
											                   		</div>
                                                        </td>
                                                        <td></td>
                                                    </tr>
													<tr>
                                                        <td style="padding: 10px"><label class="control-label text-left">Email Id:</label></td>
                                                        <td style="padding: 10px">
                                                            <div class="input-group">
                                                                <span class="input-group-addon"><i class="icon-envelope"></i></span>
                                                                <span class="form-control" style='border:1px black solid;width:190px; box-sizing: border-box;font-size:14px;font-weight:400'>
										                  		<%=rs.getString(8)%>
										                  		</span>
										                   		</div>
                                                        </td>
                                                        <td><span id="validemailid" style="color:orangered;visibility:hidden">*</span></td>
                                                    </tr>
                                                    <tr>
                                                    
                                                    <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
                                                    </tr>
		
<%
}
}
catch(Exception e){}
%>
</table>
</form>
							
						</div>		
			
<% }
  if(null != request.getParameter("close_clicked"))
  {
%>
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
                            Purchase
                        </h6>
						<div>	
      					</div>
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
								<span  style="color: white"><i class="icon-home" style="color: white"></i></span><a href="index.html">Home </a><i class="icon-angle-right"  style="color: white">
                                </i>
                            </li>
							<li><a href="purchase.html">Purchase </a></li>
                              <li class="pull-right">
                                <div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top"
                                     data-original-title="Change dashboard date range">
                                    <i class="icon-calendar"></i><span></span><i class="icon-angle-down"></i>
                                </div>
                               <!--  <div class="search-container">
                                    <form action="/action_page.php">
                                    
										<form action="/action_page.php">
	      									<input type="text" placeholder="  Search..." name="search">
											<button type="submit"><i class="icon-search"></i></button>
	    								</form>
                                   
                                </form>
                                 </div>-->
                            </li>
							<li style="align-content: space-around "> 
							</li>
                        </ul>
						
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
				<div>
				<ul class="page-breadcrumb breadcrumb"  style="background-color: #ffb848" width="60" height="60">
					<a href="vendor.html" ><h4 style="font-size: 20px" ><b>Vendor</b></h4></a>
					</ul>
				
				<ul class="page-breadcrumb breadcrumb"  style="background-color: #ffb848" width="60" height="60">
					<a href="rawmaterial.html"><h4 style="font-size: 20px"><b>Raw Material</b></h4></a>
					</ul>
				
				        <!-- END PAGE HEADER-->
                
				</div>
<%
}
%>
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