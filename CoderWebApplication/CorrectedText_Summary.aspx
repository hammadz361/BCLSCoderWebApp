<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="CorrectedText_Summary.aspx.cs" Inherits="CoderWebApplication.CorrectedTextSummary" %>
<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->

<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  
  <!-- DNS prefetch -->
  <link rel=dns-prefetch href="//fonts.googleapis.com">

  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>CLS</title>
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width,initial-scale=1">

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->

  <!-- CSS: implied media=all -->
  <!-- CSS concatenated and minified via ant build script-->
  <link rel="stylesheet" href="css/style.css"> <!-- Generic style (Boilerplate) -->
  <link rel="stylesheet" href="css/960.fluid.css"> <!-- 960.gs Grid System -->
  <link rel="stylesheet" href="css/main.css"> <!-- Complete Layout and main styles -->
  <link rel="stylesheet" href="css/buttons.css"> <!-- Buttons, optional -->
  <link rel="stylesheet" href="css/lists.css"> <!-- Lists, optional -->
  <link rel="stylesheet" href="css/icons.css"> <!-- Icons, optional -->
  <link rel="stylesheet" href="css/notifications.css"> <!-- Notifications, optional -->
  <link rel="stylesheet" href="css/typography.css"> <!-- Typography -->
  <link rel="stylesheet" href="css/forms.css"> <!-- Forms, optional -->
  <link rel="stylesheet" href="css/tables.css"> <!-- Tables, optional -->
  <link rel="stylesheet" href="css/charts.css"> <!-- Charts, optional -->
  <link rel="stylesheet" href="css/jquery-ui-1.8.15.custom.css"> <!-- jQuery UI, optional -->
  <!-- end CSS-->
  
  <!-- Fonts -->
  <link href="//fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet" type="text/css">
  <!-- end Fonts-->

  <!-- All JavaScript at the bottom, except for Modernizr / Respond.
       Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
       For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
  <script src="js/libs/modernizr-2.0.6.min.js"></script>
</head>
<body id="top">

  <!-- Begin of #container -->
  <div id="container">
  	<!-- Begin of #header -->
    <div id="header-surround"><header id="header">
    	
    	<!-- Place your logo here -->
		<img src="img/logo.png" alt="Grape" class="logo">
		
		<!-- Divider between info-button and the toolbar-icons -->
		<div class="divider-header divider-vertical"></div>
		
		
	
		
		<!-- Begin of #user-info -->
		<div id="user-info">
			<p>
				<span class="messages">Hello <a href="javascript:void(0);">
                    <asp:Label ID="LoginName2" runat="server" Text="Label"></asp:Label></span><a href="logout.aspx" class="button red">Logout</a> 
				</p>
		</div> <!--! end of #user-info -->
		
    </header></div> <!--! end of #header -->
    <div class="fix-shadow-bottom-height"></div>
	
	<!-- Begin of Sidebar -->
    <aside id="sidebar">
    	
    	
		<!-- Begin of #login-details -->
		<section id="login-details">
    		<img class="img-left framed" src="img/misc/avatar_small.png" style="height: 55px;" alt="Hello Admin">
    		<h3>Logged in as</h3>
    		<h2><a class="user-button" href="javascript:void(0);"><asp:Label ID="LoginName" runat="server" Text="Label"></asp:Label>&nbsp;<span class="arrow-link-down"></span></a></h2>
    		<ul class="dropdown-username-menu">
    			<li><a href="logout.aspx">Logout</a></li>
    		</ul>
    		
    		<div class="clearfix"></div>
  		</section> <!--! end of #login-details -->
    	
    	<!-- Begin of Navigation -->
    	<nav id="nav">
	    	<ul class="menu collapsible shadow-bottom">
	    		<li><a href="supervisor.php"><img src="img/icons/packs/fugue/16x16/dashboard.png">Dashboard</a></li>
               
	    		<li>
	    			<a href="javascript:void(0);"><img src="img/icons/packs/fugue/16x16/dashboard.png">Start ReCoding</a>
	    			<ul class="sub">
	    				<li><a href="supervisorform.aspx?skipnext=1">Industries</a></li>
                        <li><a href="supervisorform2.aspx?skipnext=1">Occupation</a></li>
                        <li><a href="supervisorform3.aspx?skipnext=1">Tools</a></li>
	    			</ul>
	    		</li>
                <li><a href="others_recoding.aspx"><img src="img/icons/packs/fugue/16x16/re-coding-icon.png">Other Re Coding</a></li>
                <li><a href="CorrectedText.aspx" class="current"><img src="img/icons/packs/fugue/16x16/dashboard.png">Corrected Text</a></li>
               
                 <li>
	    			<a href="javascript:void(0);"><img src="img/icons/packs/fugue/16x16/setting-icon.png">Reports</a>
	    			<ul class="sub">
	    				
	    				<li><a href="report_grid.aspx?id=1">Question Wise Percentage</a></li>
	    				<li><a href="report_grid.aspx?id=2">Code Wise Percentage</a></li>
                        <li><a href="report_grid.aspx?id=5">Cross Tab</a></li>
                        <li><a href="view_details.aspx?type=acceptedbatches">Batches Report</a></li>
                        <li><a href="report_grid.aspx?id=9">Text Review Report</a></li>
                        <li><a href="report_grid.aspx?id=12">Others Report</a></li></ul>
	    		</li>
	    	</ul>
    	</nav> <!--! end of #nav -->
    	
    </aside> <!--! end of #sidebar -->
    
    <!-- Begin of #main -->
    <div id="main" role="main">
    	
    	<!-- Begin of titlebar/breadcrumbs -->
		<div id="title-bar">
			<ul id="breadcrumbs">
				<li><a href="admin.aspx" title="Home"><span id="bc-home"></span></a></li>
				<li class="no-hover">Text Corrected</li>
			</ul>
		</div> <!--! end of #title-bar -->
		
		<div class="shadow-bottom shadow-titlebar"></div>
		
		<!-- Begin of #main-content -->
		<div id="main-content">
			<div class="container_12">
			<% if (Request["added"]=="1")

                {%>
			<div class="alert success"><strong>User Added Successfully Compeleted!</strong></div>			
			<% } %>	
			<div class="grid_12">
				<h1>Upload Corrected Text File</h1>
				</div>
			

             
			<div class="grid_12">
				<div class="block-border">
					<div class="block-content">
                        <form id="userform"  runat="server">
						<div class="_100">
							<p>
                                Following Entries are Rejected By the System<br />
                                <a href="CorrectedText_Process.aspx?type=<% Response.Write(Request["type"]); %>"> Process the Remaining Entries Click Here</a><br />
                                <a href="CorrectedText.aspx">Roll Back the data and reload updated data</a><br />
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
							</p>
						</div>
						<div class="clear"></div>
					</form>
						  <div class="clear"></div>
					</div>
				</div>
			</div>
			
			
						
			
			
			<div class="clear height-fix"></div>

		</div></div> <!--! end of #main-content -->
  </div> <!--! end of #main -->

    
    <footer id="footer"><div class="container_12">
		<div class="grid_12">
    		<div class="footer-icon align-center"><a class="top" href="#top"></a></div>
		</div>
    </div></footer>
  </div> <!--! end of #container -->


  <!-- JavaScript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.2.min.js"><\/script>')</script>


  <!-- scripts concatenated and minified via ant build script-->
  <script defer src="js/plugins.js"></script> <!-- lightweight wrapper for consolelog, optional -->
  <script defer src="js/mylibs/jquery-ui-1.8.15.custom.min.js"></script> <!-- jQuery UI -->
  <script defer src="js/mylibs/jquery.notifications.js"></script> <!-- Notifications  -->
  <script defer src="js/mylibs/jquery.uniform.min.js"></script> <!-- Uniform (Look & Feel from forms) -->
  <script defer src="js/mylibs/jquery.validate.min.js"></script> <!-- Validation from forms -->
  <script defer src="js/mylibs/jquery.dataTables.min.js"></script> <!-- Tables -->
  <script defer src="js/mylibs/jquery.tipsy.js"></script> <!-- Tooltips -->
  <script defer src="js/mylibs/excanvas.js"></script> <!-- Charts -->
  <script defer src="js/mylibs/jquery.visualize.js"></script> <!-- Charts -->
  <script defer src="js/mylibs/jquery.slidernav.min.js"></script> <!-- Contact List -->
  <script defer src="js/common.js"></script> <!-- Generic functions -->
  <script defer src="js/script.js"></script> <!-- Generic scripts -->
  
  <script type="text/javascript">
      $().ready(function () {

          /*
           * Form Validation
           */
          $.validator.setDefaults({
              submitHandler: function (e) {
                  $.jGrowl("Form was successfully submitted.", { theme: 'success' });
                  $(e).parent().parent().fadeOut();
                  v.resetForm();
                  v2.resetForm();
                  v3.resetForm();
              }
          });
          var v = $("#create-user-form").validate();
          jQuery("#reset").click(function () { v.resetForm(); $.jGrowl("User was not created!", { theme: 'error' }); });

          var v2 = $("#write-message-form").validate();
          jQuery("#reset2").click(function () { v2.resetForm(); $.jGrowl("Message was not sent.", { theme: 'error' }); });

          var v3 = $("#create-folder-form").validate();
          jQuery("#reset3").click(function () { v3.resetForm(); $.jGrowl("Folder was not created!", { theme: 'error' }); });

          var validateform = $("#validate-form").validate();
          $("#reset-validate-form").click(function () {
              validateform.resetForm();
              $.jGrowl("Blogpost was not created.", { theme: 'error' });
          });
      });
  </script>
  <!-- end scripts-->

  <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->
  
</body>
</html>
</form>

