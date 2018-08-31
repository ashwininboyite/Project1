<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import=" java.io.File"%>
<%@page import=" java.io.FileInputStream"%>
<%@page import=" java.io.IOException"%>
<%@page import=" java.io.InputStream"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<%! public static String id; %>
<%@page language="java"%>
<%@page import="java.sql.*"%>
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

</head>

<body class="page-header-fixed">

<% if(null != request.getParameter("create_clicked"))
{
try { 
	List<String> arr = new ArrayList<String>();
	boolean flag=false;   
	Connection con=null;  
	PreparedStatement smt=null;
	Statement smt1=null;
	int b1=1000;
	int count=0;
	ResultSet rs;
	Double rmin_c;
	String[] ids=request.getParameterValues("permission");
    // this will get array of values of all checked checkboxes
    for(String id:ids){
     // do something with id, this is checkbox value
     
     arr.add(id);
    }
    StringBuilder commaSepValueBuilder = new StringBuilder();

    //Looping through the list
    for ( int i = 0; i< arr.size(); i++){
      //append the value into the builder
      commaSepValueBuilder.append(arr.get(i));

      //if the value is not the last element of the list
      //then append the comma(,) as well
      if ( i != arr.size()-1){
        commaSepValueBuilder.append(", ");
      }
    }
    String s2=commaSepValueBuilder.toString();
   
	String username=request.getParameter("txt_uname");
	String role=request.getParameter("txt_role");
	String emailid=request.getParameter("txt_emailid");
	int password=request.getParameter("password").hashCode(); ;
	response.setContentType("text/html");   
	Class.forName("com.mysql.jdbc.Driver");    
	con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Erp","admin","1656406939");  
	smt1=con.createStatement();
	Statement smt2=con.createStatement();
	Statement smt3=con.createStatement();
	smt =con.prepareStatement("insert into user(Email,name,role,permission,Db_pass) values(?,?,?,?,?);");
	smt.setObject(1,emailid,Types.VARCHAR);
	
	smt.setObject(2, request.getParameter("txt_uname"),Types.VARCHAR);
	smt.setObject(3, request.getParameter("txt_role"),Types.VARCHAR);
	smt.setObject(4, s2,Types.VARCHAR);
	smt.setObject(5, request.getParameter("password").hashCode(),Types.INTEGER);
	
	String sq1="create user '"+username+"'@localhost identified by '"+password+"'";
	
	int i1=smt1.executeUpdate(sq1);
	
	String sq3="GRANT SELECT,EXECUTE ON *.* TO '"+username+"'@localhost WITH GRANT OPTION";
	
	int i3=smt3.executeUpdate(sq3);
	
	
	 for(String id:ids){
		 String s1=id;
		 
			String sq2="GRANT "+s1+" ON *.* TO '"+username+"'@localhost WITH GRANT OPTION";
			
			int i2=smt2.executeUpdate(sq2);
			
	 }
	 //System.out.println("hii2");
	
	 int i=smt.executeUpdate();
	//HttpSession session1=request.getSession(); 
	RequestDispatcher rd;    
					if(i!=0 ) 
					{
						System.out.println("Hello world");
						session.setAttribute("databaseuname", username);
						session.setAttribute("databasepass", password);
						
						rd=request.getRequestDispatcher("index.html");     
						try {      rd.forward(request, response);     
						} 
						catch (Exception e) 
						{      // TODO Auto-generated catch block      
							e.printStackTrace();
					                                              

						} 
						out.clear();
					}    
					else    
					{    
						rd=request.getRequestDispatcher("create_userhtml.jsp");     
						try {      rd.forward(request, response);     
						} 
						catch (Exception e) 
						{      // TODO Auto-generated catch block      
							e.printStackTrace();
					                                              

						} 
						out.clear();
					}    
					con.close(); 

	
}
catch(Exception e)
{
	e.printStackTrace(); }

}
if(null != request.getParameter("close_clicked"))
  {

	RequestDispatcher rd; 
	rd=request.getRequestDispatcher("index.html");     
	try {      rd.forward(request, response);     
	} 
	catch (Exception e) 
	{      // TODO Auto-generated catch block      
		e.printStackTrace();
                                              

	} 
	out.clear();

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