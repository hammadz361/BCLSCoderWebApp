<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="others_recoding.aspx.cs" Inherits="CoderWebApplication.OthersCoding" %>
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
  <style>
      .supp_text{
          color:#909090 !important;
      }
       .act_text{
          color:black !important;
          font-weight: 700 !important;
      }
       .supp_label{
          color:#909090 !important;
      }
       .act_label{
          color:black !important;
          font-weight: 700 !important;
      }
  </style>
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
                    <asp:Label ID="LoginName" runat="server" Text="Label"></asp:Label></span><a href="logout.aspx" class="button red">Logout</a> 
				</p>
		</div> <!--! end of #user-info -->
		
    </header></div> <!--! end of #header -->
    
    <div class="fix-shadow-bottom-height"></div>
	
    
    <!-- Begin of #main -->
    <div id="main" role="main" style="margin-left:0px">
    	
    	<!-- Begin of titlebar/breadcrumbs -->
		<div id="title-bar">
			<ul id="breadcrumbs">
				<li><a href="coder.aspx" title="Home"><span id="bc-home"></span></a></li>
				<li class="no-hover">Forms</li>
			</ul>
		</div> <!--! end of #title-bar -->
		
		<div class="shadow-bottom shadow-titlebar"></div>
		
		<!-- Begin of #main-content -->
		<div id="main-content">
			<div class="container_12">
			
			<div class="grid_12">
				<h1 style="float:left">KEY_: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
                <%--<h1 style="float:right"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>--%>
					</div>
			
			
			<div class="clear"></div>
			<div class="grid_12">
				<div class="block-border">
					<div class="block-header">
						<h1>Coding (Others)</h1><span></span>
					</div>
					<form id="form1" class="block-content form" runat="server">
                        <asp:HiddenField ID="activeFields" runat="server" />
                        <asp:HiddenField ID="indexid" runat="server" />
                        <asp:Panel ID="A6a" runat="server" >    
						<fieldset id="A6a_field">
							<legend>Coding Others: A6a</legend>
                            <div class="_50">
								<p><label for="textfield1">A6a_Question</label>
                                    <asp:TextBox ID="A6a_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A6a Answer (Other)</label>
                                    <asp:TextBox ID="A6a_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A6a</label>
                                     <asp:ListBox ID="A6a_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A6a_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
						<asp:Panel ID="A17" runat="server" >    
						<fieldset>
							<legend>Coding Others: A17</legend>
                            <div class="_50">
								<p><label for="textfield1">A17_Question</label>
                                    <asp:TextBox ID="A17_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A17 Answer (Other)</label>
                                    <asp:TextBox ID="A17_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A17</label>
                                     <asp:ListBox ID="A17_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A17_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
						<asp:Panel ID="A23" runat="server" >    
						<fieldset>
							<legend>Coding Others: A23</legend>
                            <div class="_50">
								<p><label for="textfield1">A23_Question</label>
                                    <asp:TextBox ID="A23_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A23 Answer (Other)</label>
                                    <asp:TextBox ID="A23_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A23</label>
                                     <asp:ListBox ID="A23_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A23_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                     
                        <asp:Panel ID="A29" runat="server" >    
						<fieldset>
							<legend>Coding Others: A29</legend>
                            <div class="_50">
								<p><label for="textfield1">A29_Question</label>
                                    <asp:TextBox ID="A29_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A29 Answer (Other)</label>
                                    <asp:TextBox ID="A29_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A29</label>
                                     <asp:ListBox ID="A29_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A29_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                        <asp:Panel ID="A14" runat="server" >    
						<fieldset>
							<legend>Coding Others: A14</legend>
                            <div class="_50">
								<p><label for="textfield1">A14_Question</label>
                                    <asp:TextBox ID="A14_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A14 Answer (Other)</label>
                                    <asp:TextBox ID="A14_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A14</label>
                                     <asp:ListBox ID="A14_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A14_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="A36" runat="server" >    
						<fieldset>
							<legend>Coding Others: A36</legend>
                            <div class="_50">
								<p><label for="textfield1">A36 Question</label>
                                    <asp:TextBox ID="A36_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A36 Answer (Other)</label>
                                    <asp:TextBox ID="A36_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A36</label>
                                     <asp:ListBox ID="A36_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A36_T" runat="server"></asp:TextBox></p>
							</div>
						</fieldset>
                            </asp:Panel>
                        
                           <asp:Panel ID="A49" runat="server" >    
						<fieldset>
							<legend>Coding Others: A49</legend>
                            <div class="_50">
								<p><label for="textfield1">A49 Question</label>
                                    <asp:TextBox ID="A49_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A49 Answer (Other)</label>
                                    <asp:TextBox ID="A49_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A49</label>
                                     <asp:ListBox ID="A49_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A49_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="A16" runat="server" >    
						<fieldset>
							<legend>Coding Others: A16</legend>
                            <div class="_50">
								<p><label for="textfield1">A16 Question</label>
                                    <asp:TextBox ID="A16_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A16 Answer (Other)</label>
                                    <asp:TextBox ID="A16_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A16</label>
                                     <asp:ListBox ID="A16_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A16_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="A39" runat="server" >    
						<fieldset>
							<legend>Coding Others: A39</legend>
                            <div class="_50">
								<p><label for="textfield1">A39 Questions</label>
                                    <asp:TextBox ID="A39_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A39 Answer (Other)</label>
                                    <asp:TextBox ID="A39_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A39</label>
                                     <asp:ListBox ID="A39_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A39_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="A34" runat="server" >    
						<fieldset>
							<legend>Coding Others: A34</legend>
                            <div class="_50">
								<p><label for="textfield1">A34 Question</label>
                                    <asp:TextBox ID="A34_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A34 Answer (Other)</label>
                                    <asp:TextBox ID="A34_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for A34</label>
                                     <asp:ListBox ID="A34_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="A34_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          
                           <asp:Panel ID="C13" runat="server" >    
						<fieldset>
							<legend>Coding Others: C13</legend>
                            <div class="_50">
								<p><label for="textfield1">C13_Question</label>
                                    <asp:TextBox ID="C13_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C13 Answer (Other)</label>
                                    <asp:TextBox ID="C13_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C13</label>
                                     <asp:ListBox ID="C13_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C13_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          
                           <asp:Panel ID="C27" runat="server" >    
						<fieldset>
							<legend>Coding Others: C27</legend>
                            <div class="_50">
								<p><label for="textfield1">C27 Question</label>
                                    <asp:TextBox ID="C27_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C27 Answer (Other)</label>
                                    <asp:TextBox ID="C27_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C27</label>
                                     <asp:ListBox ID="C27_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C27_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                         
                           
                           <asp:Panel ID="C25" runat="server" >    
						<fieldset>
							<legend>Coding Others: C25</legend>
                            <div class="_50">
								<p><label for="textfield1">C25 Question</label>
                                    <asp:TextBox ID="C25_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C25 Answer (Other)</label>
                                    <asp:TextBox ID="C25_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C25</label>
                                     <asp:ListBox ID="C25_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C25_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="C29" runat="server" >    
						<fieldset>
							<legend>Coding Others: C29</legend>
                            <div class="_50">
								<p><label for="textfield1">C29 Question</label>
                                    <asp:TextBox ID="C29_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C29 Answer (Other)</label>
                                    <asp:TextBox ID="C29_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C29</label>
                                     <asp:ListBox ID="C29_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C29_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="C7" runat="server" >    
						<fieldset>
							<legend>Coding Others: C7</legend>
                            <div class="_50">
								<p><label for="textfield1">C7 Question</label>
                                    <asp:TextBox ID="C7_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C7 Answer (Other)</label>
                                    <asp:TextBox ID="C7_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C7</label>
                                     <asp:ListBox ID="C7_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C7_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                           <asp:Panel ID="C9" runat="server" >    
						<fieldset>
							<legend>Coding Others: C9</legend>
                            <div class="_50">
								<p><label for="textfield1">C9 Question</label>
                                    <asp:TextBox ID="C9_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C9 Answer (Other)</label>
                                    <asp:TextBox ID="C9_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C9</label>
                                     <asp:ListBox ID="C9_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C9_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>

                       <asp:Panel ID="G10a" runat="server" >    
						<fieldset>
							<legend>Coding Others: G10a</legend>
                            <div class="_50">
								<p><label for="textfield1">G10a Question</label>
                                    <asp:TextBox ID="G10a_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">G10a Answer (Other)</label>
                                    <asp:TextBox ID="G10a_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for G10a</label>
                                     <asp:ListBox ID="G10a_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="G10a_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="G10b" runat="server" >    
						<fieldset>
							<legend>Coding Others: G10b</legend>
                            <div class="_50">
								<p><label for="textfield1">G10b Question</label>
                                    <asp:TextBox ID="G10b_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">G10b Answer (Other)</label>
                                    <asp:TextBox ID="G10b_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for G10b</label>
                                     <asp:ListBox ID="G10b_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="G10b_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                        
                         <asp:Panel ID="B25" runat="server" >    
						<fieldset>
							<legend>Coding Others: B25</legend>
                            <div class="_50">
								<p><label for="textfield1">B25 Question</label>
                                    <asp:TextBox ID="B25_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B25 Answer (Other)</label>
                                    <asp:TextBox ID="B25_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B25</label>
                                     <asp:ListBox ID="B25_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B25_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel> 
                       <asp:Panel ID="B6" runat="server" >    
						<fieldset>
							<legend>Coding Others: B6</legend>
                            <div class="_50">
								<p><label for="textfield1">B6 Question</label>
                                    <asp:TextBox ID="B6_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B6 Answer (Other)</label>
                                    <asp:TextBox ID="B6_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B6</label>
                                     <asp:ListBox ID="B6_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B6_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel> 

                                    <asp:Panel ID="B7" runat="server" >    
						<fieldset>
							<legend>Coding Others: B7</legend>
                            <div class="_50">
								<p><label for="textfield1">B7 Question</label>
                                    <asp:TextBox ID="B7_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B7 Answer (Other)</label>
                                    <asp:TextBox ID="B7_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B7</label>
                                     <asp:ListBox ID="B7_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B7_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel> 

                          <asp:Panel ID="B18" runat="server" >    
						<fieldset>
							<legend>Coding Others: B18</legend>
                            <div class="_50">
								<p><label for="textfield1">B18 Question</label>
                                    <asp:TextBox ID="B18_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B18 Answer (Other)</label>
                                    <asp:TextBox ID="B18_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B18</label>
                                     <asp:ListBox ID="B18_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B18_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B22" runat="server" >    
						<fieldset>
							<legend>Coding Others: B22</legend>
                            <div class="_50">
								<p><label for="textfield1">B22 Question</label>
                                    <asp:TextBox ID="B22_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B22 Answer (Other)</label>
                                    <asp:TextBox ID="B22_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B22</label>
                                     <asp:ListBox ID="B22_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B22_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B11" runat="server" >    
						<fieldset>
							<legend>Coding Others: B11</legend>
                            <div class="_50">
								<p><label for="textfield1">B11 Question</label>
                                    <asp:TextBox ID="B11_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B11 Answer (Other)</label>
                                    <asp:TextBox ID="B11_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B11</label>
                                     <asp:ListBox ID="B11_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B11_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B14" runat="server" >    
						<fieldset>
							<legend>Coding Others: B14</legend>
                            <div class="_50">
								<p><label for="textfield1">B14 Question</label>
                                    <asp:TextBox ID="B14_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B14 Answer (Other)</label>
                                    <asp:TextBox ID="B14_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B14</label>
                                     <asp:ListBox ID="B14_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B14_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B19" runat="server" >    
						<fieldset>
							<legend>Coding Others: B19</legend>
                            <div class="_50">
								<p><label for="textfield1">B19 Question</label>
                                    <asp:TextBox ID="B19_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B19 Answer (Other)</label>
                                    <asp:TextBox ID="B19_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B19</label>
                                     <asp:ListBox ID="B19_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B19_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B23" runat="server" >    
						<fieldset>
							<legend>Coding Others: B23</legend>
                            <div class="_50">
								<p><label for="textfield1">B23 Question</label>
                                    <asp:TextBox ID="B23_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B23 Answer (Other)</label>
                                    <asp:TextBox ID="B23_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B23</label>
                                     <asp:ListBox ID="B23_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B23_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B20" runat="server" >    
						<fieldset>
							<legend>Coding Others: B20</legend>
                            <div class="_50">
								<p><label for="textfield1">B20 Question</label>
                                    <asp:TextBox ID="B20_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B20 Answer (Other)</label>
                                    <asp:TextBox ID="B20_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B20</label>
                                     <asp:ListBox ID="B20_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B20_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B1a" runat="server" >    
						<fieldset>
							<legend>Coding Others: B1a</legend>
                            <div class="_50">
								<p><label for="textfield1">B1a Question</label>
                                    <asp:TextBox ID="B1a_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B1a Answer (Other)</label>
                                    <asp:TextBox ID="B1a_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B1a</label>
                                     <asp:ListBox ID="B1a_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B1a_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="B1b" runat="server" >    
						<fieldset>
							<legend>Coding Others: B1b</legend>
                            <div class="_50">
								<p><label for="textfield1">B1b Question</label>
                                    <asp:TextBox ID="B1b_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">B1b Answer (Other)</label>
                                    <asp:TextBox ID="B1b_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for B1b</label>
                                     <asp:ListBox ID="B1b_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="B1b_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                          <asp:Panel ID="C40" runat="server" >    
						<fieldset>
							<legend>Coding Others: C40</legend>
                            <div class="_50">
								<p><label for="textfield1">C40 Question</label>
                                    <asp:TextBox ID="C40_Q" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C40 Answer (Other)</label>
                                    <asp:TextBox ID="C40_A" runat="server" disabled="true" CssClass="supp_text"></asp:TextBox>
							</div>
							<div class="_50">
								<p><label for="textfield2">Options Available for C40</label>
                                     <asp:ListBox ID="C40_O" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">English Translation</label>
                                    <asp:TextBox ID="C40_T" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
						<div class="block-actions">
							<ul class="actions-left">
								<li><a class="close-toolbox button red" href="javascript:void(0);">Reset</a></li>
							</ul>
							<ul class="actions-right">
								<li>
                                           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" type="submit" class="button" Text="Save Code & Next" /></li>
							</ul>
						</div>
					</form>
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
          //$('#A6a_O').bind('change', function () {
          //    var Major1 = $(this).val();
          //    //alert(Major1);
          //    if (Major1 == 'i') {
          //        $('#A6a_T').prop("disabled", false);
          //    }
          //    else
          //        $('#A6a_T').prop("disabled", true);
          //});
          //    $('#A17_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A17_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A17_T').prop("disabled", true);
          //    });
          //    $('#A23_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A23_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A23_T').prop("disabled", true);
          //    });
          //    $('#A24_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A24_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A24_T').prop("disabled", true);
          //    });
          //    $('#A29_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 'm') {
          //            $('#A29_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A29_T').prop("disabled", true);
          //    });
          //    $('#A14_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '23') {
          //            $('#A14_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A14_T').prop("disabled", true);
          //    });
          //    $('#A36_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '13') {
          //            $('#A36_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A36_T').prop("disabled", true);
          //    });
          //    $('#A45_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A45_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A45_T').prop("disabled", true);
          //    });
          //    $('#A49_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A49_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A49_T').prop("disabled", true);
          //    });
          //    $('#A16_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '23') {
          //            $('#A16_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A16_T').prop("disabled", true);
          //    });
          //    $('#A39_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#A39_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A39_T').prop("disabled", true);
          //    });
          //    $('#A34_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 'g') {
          //            $('#A34_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A34_T').prop("disabled", true);
          //    });
          //    $('#A47_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '7') {
          //            $('#A47_T').prop("disabled", false);
          //        }
          //        else
          //            $('#A47_T').prop("disabled", true);
          //    });
          //    $('#C13_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C13_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C13_T').prop("disabled", true);
          //    });
          //    $('#C33_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '13') {
          //            $('#C33_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C33_T').prop("disabled", true);
          //    });
          //    $('#C27_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C27_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C27_T').prop("disabled", true);
          //    });
          //    $('#C41_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '8') {
          //            $('#C41_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C41_T').prop("disabled", true);
          //    });
          //    $('#C30_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 't') {
          //            $('#C30_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C30_T').prop("disabled", true);
          //    });
          //    $('#C25_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C25_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C25_T').prop("disabled", true);
          //    });
          //    $('#C29_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 'i') {
          //            $('#C29_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C29_T').prop("disabled", true);
          //    });
          //    $('#C7_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C7_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C7_T').prop("disabled", true);
          //    });
          //    $('#C9_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C9_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C9_T').prop("disabled", true);
          //    });
          //    $('#G10b_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '7') {
          //            $('#G10b_T').prop("disabled", false);
          //        }
          //        else
          //            $('#G10b_T').prop("disabled", true);
          //    });
          //    $('#G10a_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '5') {
          //            $('#G10a_T').prop("disabled", false);
          //        }
          //        else
          //            $('#G10a_T').prop("disabled", true);
          //    });
          //    $('#I7_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '12') {
          //            $('#I7_T').prop("disabled", false);
          //        }
          //        else
          //            $('#I7_T').prop("disabled", true);
          //    });
          //    $('#B18_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B18_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B18_T').prop("disabled", true);
          //    });
          //    $('#B22_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B22_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B22_T').prop("disabled", true);
          //    });
          //    $('#B11_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B11_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B11_T').prop("disabled", true);
          //    });
          //    $('#B14_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B14_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B14_T').prop("disabled", true);
          //    });
          //    $('#B19_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B19_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B19_T').prop("disabled", true);
          //    });
          //    $('#B20_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B20_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B20_T').prop("disabled", true);
          //    });
          //    $('#B25_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 'l') {
          //            $('#B25_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B25_T').prop("disabled", true);
          //    });
          //    $('#B6_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B6_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B6_T').prop("disabled", true);
          //    });
          //    $('#B7_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B7_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B7_T').prop("disabled", true);
          //    });
          //    $('#B23_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == 'e') {
          //            $('#B23_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B23_T').prop("disabled", true);
          //    });
          //    $('#B1a_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B1a_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B1a_T').prop("disabled", true);
          //    });
          //    $('#B1b_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#B1b_T').prop("disabled", false);
          //        }
          //        else
          //            $('#B1b_T').prop("disabled", true);
          //    });
          //    $('#C40_O').bind('change', function () {
          //        var Major1 = $(this).val();
          //        //alert(Major1);
          //        if (Major1 == '94') {
          //            $('#C40_T').prop("disabled", false);
          //        }
          //        else
          //            $('#C40_T').prop("disabled", true);
          //    });
              
		/*
		 * Form Validation
		 */
		$.validator.setDefaults({
			submitHandler: function(e) {
				$.jGrowl("Form was successfully submitted.", { theme: 'success' });
				$(e).parent().parent().fadeOut();
				v.resetForm();
				v2.resetForm();
				v3.resetForm();
			}
		});
		var v = $("#create-user-form").validate();
		jQuery("#reset").click(function() { v.resetForm(); $.jGrowl("User was not created!", { theme: 'error' }); });
		
		var v2 = $("#write-message-form").validate();
		jQuery("#reset2").click(function() { v2.resetForm(); $.jGrowl("Message was not sent.", { theme: 'error' }); });
		
		var v3 = $("#create-folder-form").validate();
		jQuery("#reset3").click(function() { v3.resetForm(); $.jGrowl("Folder was not created!", { theme: 'error' }); });
		
		var validateform = $("#validate-form").validate();
		$("#reset-validate-form").click(function() {
			validateform.resetForm();
			$.jGrowl("You resetted the form.", { theme: 'error' });
		});
		
		/*
		 * Datepicker
		 */
		$( "#datepicker" ).datepicker();		
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
