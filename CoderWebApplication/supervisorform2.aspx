<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="supervisorform2.aspx.cs" Inherits="CoderWebApplication.WebFormcode02b" %>
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
				<li><a href="coding.aspx" title="Home"><span id="bc-home"></span></a></li>
				<li class="no-hover">Forms</li>
			</ul>
		</div> <!--! end of #title-bar -->
		
		<div class="shadow-bottom shadow-titlebar"></div>
		
		<!-- Begin of #main-content -->
		<div id="main-content">
			<div class="container_12">
			
			<div class="grid_12">
				<h1>KEY_: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> (Batch ID: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>)</h1>
					</div>
			
			
			<div class="clear"></div>
			<div class="grid_12">
				<div class="block-border">
					<div class="block-header">
						<h1>Coding (Occupation)</h1><span></span>
					</div>
					<form id="form1" class="block-content form" defaultbutton="Button1" runat="server">
						 <asp:Panel ID="A21" runat="server" > 
						<fieldset>
							<legend>Coding Occupation Adults - section A :   A21</legend>
                            <div class="_50">
								<p><label for="textfield1">A22a</label>
                                    <asp:TextBox ID="A22a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A22a. Who is (NAME) working for? What is the name of the company, if it has a name?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A22b</label>
                                    <asp:TextBox ID="A22b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A22b. What is produced / cultivated / mined / done where (NAME) works or what does (NAME) produce / cultivate / do?"></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A23</label>
                                    <asp:TextBox ID="A23" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A23. Where did (NAME) carry out his/her main work during the past week?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A24</label>
                                    <asp:TextBox ID="A24" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A24. During the past week, which of the following best describe (NAME) `s work situation at his/her main work? "></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">A21a</label>
                                    <asp:TextBox ID="TextBox7" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="A21a. What would you call (NAME)'s occupation?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A21b</label>
                                    <asp:TextBox ID="TextBox8" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="A21b. What does (NAME) usually do during his/her worktime in this job/task? "></asp:TextBox></p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox4_a" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox4_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox4_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox4_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio4_a" value="3999" name="radio4" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio4_b" value="3998" name="radio4" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox21" runat="server" ToolTip="A21a_3 A21a. What would you call ${NameFromEarlierA}'s occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what ${NameFromEarlierA} works, if informative.
                                        A21b_3 A21b. What does ${NameFromEarlierA} usually do during his/her worktime in this job/task? (Clarify if needed with the question: What does ${NameFromEarlierA} do at work? What are the activities/actions that ${NameFromEarlierA} carries out?"></asp:TextBox></p>
							</div>
                                </div>

						</fieldset>
						</asp:Panel>
                         <asp:Panel ID="A43" runat="server" > 
						<fieldset>
							<legend>Coding Occupation Adults - section A :   A43</legend>
                            <div class="_100">
								<p><label for="textfield1" class="supp_label">A45</label>
                                   <asp:TextBox ID="A45" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A45. Which of the following best describe (NAME) `s work situation at his/her main work in the past 12 months?"></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield1" class="supp_label">A44a</label>
                                   <asp:TextBox ID="A44a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A44a. Who is (NAME) working for? What is the name of the company, if it has a name?  (In probing: Describe briefly the main activity i.e. goods produced and services rendered where (NAME) is working.  Clarify if needed with the question: What is produced at (NAME)'s work? What is the outcome of (NAME)'s work?)"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2" class="supp_label">A44b</label>
                                    <asp:TextBox ID="A44b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="A44b. What is produced / cultivated / mined / done where (NAME) works or what does (NAME) produce / cultivate / do?"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1" class="act_label">A43a</label>
                                   <asp:TextBox ID="TextBox9" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="A43a. What would you call (NAME)'s occupation? Please describe it like 'I am a … and I work at/in/for …'. Please also say with what (NAME) works, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner') "></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2" class="act_label">A43b</label>
                                    <asp:TextBox ID="TextBox10" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="A43b. What does (NAME) usually do during his/her worktime in this job/task? (Clarify if needed with the question: What does (NAME) do at work? What are the activities/actions that (NAME) carries out? They should use verb + object. E.g. 'carry bricks', 'carry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields') "></asp:TextBox></p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox5_a" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox5_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox5_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox5_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio5_a" value="3999" name="radio5" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio5_b" value="3998" name="radio5" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox20" runat="server" ToolTip="A43a_4 A43a. What would you call ${NameFromEarlierA}'s occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what ${NameFromEarlierA} works, if informative.
A43b_4 A43b. What does ${NameFromEarlierA} usually do during his/her worktime in this job/task? (Clarify if needed with the question: What does ${NameFromEarlierA} do at work? What are the activities/actions that ${NameFromEarlierA} carries out?"></asp:TextBox></p>
							</div>
                                </div>

						</fieldset>
						</asp:Panel>
						 <asp:Panel ID="C20" runat="server" > 
						<fieldset>
							<legend>Coding Occupation Children - section C :C20</legend>
                          
							
							<div class="_50">
								<p><label for="textfield2">C21a</label>
                                    <asp:TextBox ID="C21a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C21a. Who are you working for? What is the name of the company, if it has a name?"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">C21b</label>
                                    <asp:TextBox ID="C21b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C21a. Who are you working for? What is the name of the company, if it has a name?"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">C25</label>
                                    <asp:TextBox ID="C25" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C25. Where did you carry out your main work during the past week?"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">C26</label>
                                    <asp:TextBox ID="C26" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C26. For your main job/work were you a/an?"></asp:TextBox></p>
							</div>
							<%--<div class="_50">
								<p><label for="textfield2">C32</label>
                                    <asp:TextBox ID="C32" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C32. At any time during the past 12 months (during the past year) did you do any work?"></asp:TextBox></p>
							</div>--%>
                           						
							<div class="_50">
								<p><label for="textfield2">C20a</label>
                                    <asp:TextBox ID="TextBox11" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="C20a. What would you call your occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what you work, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield2">C20b</label>
                                    <asp:TextBox ID="TextBox12" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="C20b. What do you usually do during your worktime in this job/task? (Clarify if needed with the question: What do you do at work? What are the activities/actions that you carry out? They should use verb + object. E.g. 'Iarry bricks', 'Iarry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields')"></asp:TextBox></p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox6_a" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox6_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox6_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox6_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio6_a" value="3999" name="radio6" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio6_b" value="3998" name="radio6" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox19" runat="server" ToolTip="C20a_10_1017 C20a. What would you call your occupation?
C20b_10_1017 C20b. What do you usually do during your worktime in this job/task? "></asp:TextBox></p>
							</div>
                                </div>

						</fieldset>
						</asp:Panel>
						<asp:Panel ID="C35_P" runat="server" >   
                        
								<fieldset>
							<legend>Coding Occupation Children - section C:  C35 </legend>
                                     <div class="_50">
                                            <p>
                                                <label for="textfield2">C20a</label>
                                                <asp:TextBox ID="c20a_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C20a. What would you call your occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what you work, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox>
                                            </p>
                                        </div>
                                        <div class="_50">
                                            <p>
                                                <label for="textfield2">C20b</label>
                                                <asp:TextBox ID="c20b_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C20b. What do you usually do during your worktime in this job/task? (Clarify if needed with the question: What do you do at work? What are the activities/actions that you carry out? They should use verb + object. E.g. 'Iarry bricks', 'Iarry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields')"></asp:TextBox>
                                            </p>
                                        </div>
                                         <div class="_50">
                                            <p>
                                                <label for="textfield2">C21a</label>
                                                <asp:TextBox ID="c21a_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C21a. Who are you working for? What is the name of the company, if it has a name?"></asp:TextBox>
                                            </p>
                                        </div>
                                        <div class="_50">
                                            <p>
                                                <label for="textfield1">C21b</label>
                                                <asp:TextBox ID="c21b_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C21b. What is produced / cultivated / mined / done where you work or what do you produce / cultivate / do? (Clarify if needed with: What is the final outcome of (NAME)'s work?)"></asp:TextBox>
                                            </p>
                                        </div>
                                         <div class="_50">
                                            <p>
                                                <label for="textfield1">C25</label>
                                                <asp:TextBox ID="c25_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C25. Where did you carry out your main work during the past week?"></asp:TextBox>
                                            </p>
                                        </div>
                                        <div class="_50">
                                            <p>
                                                <label for="textfield1">C26</label>
                                                <asp:TextBox ID="c26_" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C26. For your main job/work were you a/an?"></asp:TextBox>
                                            </p>
                                        </div>
							<div class="_100">
								<p><label for="textfield1">C35</label>
                                    <asp:TextBox ID="C35_text" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="C35. Think about your most serious illness/injury, what were you doing when this happened?"></asp:TextBox></p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="C35_Mj" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="C35_SMj" runat="server">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="C35_Min" runat="server"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="C35_U" runat="server"></asp:ListBox></p>
							</div>
                                    <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="C35_R_a" value="3999" name="radio3" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="C35_R_b" value="3998" name="radio3" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox33" runat="server" ToolTip="C35. Think about your most serious illness/injury, what were you doing when this happened?"></asp:TextBox></p>
							</div>
                                        </div>

						</fieldset>		
                            </asp:Panel>
							
						<div class="block-actions">
							<ul class="actions-left">
								<li><a class="close-toolbox button red" href="javascript:void(0);">Reset</a></li>
							</ul>
							<ul class="actions-right">
								<li>
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Height="25px" UseSubmitBehavior="false" OnClientClick="this.disabled='true'; this.value='Please wait...'; __doPostBack('Button1','')"  type="submit" class="button" Text="Save Code & Next" />

                                    <%-- <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" type="submit" class="button" Text="Save Code & Next" />--%>

								</li>
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
	$().ready(function() {
        
        //4
        $('#ListBox4_a').bind('change', function () {
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox4_b').html('');
                        $('#ListBox4_c').html('');
                        $('#ListBox4_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox4_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox21').val('');
                        $('#ListBox4_d').prop('disabled', false);
                        $('#ListBox4_c').prop('disabled', false);
                        $('#ListBox4_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio4_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio4_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox4_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox4_b').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox4_c').html('');
                        $('#ListBox4_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox4_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox4_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox4_c').bind('change', function () {
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox4_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox4_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox4_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox4_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox21').val(Unit1);
            $('#TextBox21').css('background', 'green');
            $('#TextBox21').css('color', 'white');


        });
        $('#radio4_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox4_a').disabled = true;
            $('#TextBox21').val(code);
            $('#ListBox4_d').prop('disabled', 'disabled');
            $('#ListBox4_c').prop('disabled', 'disabled');
            $('#ListBox4_b').prop('disabled', 'disabled');

        });
        $('#radio4_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox21').val(code);
            $('#ListBox4_d').prop('disabled', 'disabled');
            $('#ListBox4_c').prop('disabled', 'disabled');
            $('#ListBox4_b').prop('disabled', 'disabled');
        });
        $('#TextBox21').keyup(function () {
            var value = $(this).val();
            if (value.length == 4) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "professions"
                    },
                    success: function (data) {
                        //alert alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#ListBox4_b').html('');
                                $('#ListBox4_c').html('');
                                $('#ListBox4_d').html('');
                                $('#TextBox21').css('border-color', 'green');
                                $('#TextBox21').css('background', 'green');
                                $('#TextBox21').css('color', 'white');
                                $('#ListBox4_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#ListBox4_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#ListBox4_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                   // $('#ListBox4_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#ListBox4_a").val(res[0].ID1);
                                $('#ListBox4_d').prop('disabled', false);
                                $('#ListBox4_c').prop('disabled', false);
                                $('#ListBox4_b').prop('disabled', false);
                                jQuery.uniform.update(jQuery("#radio4_a").attr('checked', false));
                                jQuery.uniform.update(jQuery("#radio4_b").attr('checked', false));
                            }
                        }
                        else {
                            $('#TextBox21').css('border-color', 'red');
                            $('#TextBox21').css('background', 'red');
                            $('#TextBox21').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox21').css('border-color', 'red');
                $('#TextBox21').css('background', 'red');
                $('#TextBox21').css('color', 'white');
            }
        });
        //5
        $('#ListBox5_a').bind('change', function () {
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox5_b').html('');
                        $('#ListBox5_c').html('');
                        $('#ListBox5_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox5_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox20').val('');
                        $('#ListBox5_d').prop('disabled', false);
                        $('#ListBox5_c').prop('disabled', false);
                        $('#ListBox5_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio5_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio5_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox5_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox5_b').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox5_c').html('');
                        $('#ListBox5_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox5_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox5_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox5_c').bind('change', function () {
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox5_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox5_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox5_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox5_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox20').val(Unit1);
            $('#TextBox20').css('background', 'green');
            $('#TextBox20').css('color', 'white');


        });
        $('#radio5_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox5_a').disabled = true;
            $('#TextBox20').val(code);
            $('#ListBox5_d').prop('disabled', 'disabled');
            $('#ListBox5_c').prop('disabled', 'disabled');
            $('#ListBox5_b').prop('disabled', 'disabled');

        });
        $('#radio5_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox20').val(code);
            $('#ListBox5_d').prop('disabled', 'disabled');
            $('#ListBox5_c').prop('disabled', 'disabled');
            $('#ListBox5_b').prop('disabled', 'disabled');
        });
        $('#TextBox20').keyup(function () {
            var value = $(this).val();
            if (value.length == 4) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "professions"
                    },
                    success: function (data) {
                        //alert alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#ListBox5_b').html('');
                                $('#ListBox5_c').html('');
                                $('#ListBox5_d').html('');
                                $('#TextBox20').css('border-color', 'green');
                                $('#TextBox20').css('background', 'green');
                                $('#TextBox20').css('color', 'white');
                                $('#ListBox5_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#ListBox5_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#ListBox5_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                   // $('#ListBox5_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#ListBox5_a").val(res[0].ID1);
                                $('#ListBox5_d').prop('disabled', false);
                                $('#ListBox5_c').prop('disabled', false);
                                $('#ListBox5_b').prop('disabled', false);
                                jQuery.uniform.update(jQuery("#radio5_a").attr('checked', false));
                                jQuery.uniform.update(jQuery("#radio5_b").attr('checked', false));
                            }
                        }
                        else {
                            $('#TextBox20').css('border-color', 'red');
                            $('#TextBox20').css('background', 'red');
                            $('#TextBox20').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox20').css('border-color', 'red');
                $('#TextBox20').css('background', 'red');
                $('#TextBox20').css('color', 'white');
            }
        });
        //6
        $('#ListBox6_a').bind('change', function () {
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox6_b').html('');
                        $('#ListBox6_c').html('');
                        $('#ListBox6_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox6_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox19').val('');
                        $('#ListBox6_d').prop('disabled', false);
                        $('#ListBox6_c').prop('disabled', false);
                        $('#ListBox6_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio6_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio6_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox6_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox6_b').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox6_c').html('');
                        $('#ListBox6_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox6_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox6_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox6_c').bind('change', function () {
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox6_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox6_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox6_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox6_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox19').val(Unit1);
            $('#TextBox19').css('background', 'green');
            $('#TextBox19').css('color', 'white');


        });
        $('#radio6_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox6_a').disabled = true;
            $('#TextBox19').val(code);
            $('#ListBox6_d').prop('disabled', 'disabled');
            $('#ListBox6_c').prop('disabled', 'disabled');
            $('#ListBox6_b').prop('disabled', 'disabled');

        });
        $('#radio6_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox19').val(code);
            $('#ListBox6_d').prop('disabled', 'disabled');
            $('#ListBox6_c').prop('disabled', 'disabled');
            $('#ListBox6_b').prop('disabled', 'disabled');
        });
        $('#TextBox19').keyup(function () {
            var value = $(this).val();
            if (value.length == 4) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "professions"
                    },
                    success: function (data) {
                        //alert alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#ListBox6_b').html('');
                                $('#ListBox6_c').html('');
                                $('#ListBox6_d').html('');
                                $('#TextBox19').css('border-color', 'green');
                                $('#TextBox19').css('background', 'green');
                                $('#TextBox19').css('color', 'white');
                                $('#ListBox6_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#ListBox6_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#ListBox6_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                   // $('#ListBox6_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#ListBox6_a").val(res[0].ID1);
                                $('#ListBox6_d').prop('disabled', false);
                                $('#ListBox6_c').prop('disabled', false);
                                $('#ListBox6_b').prop('disabled', false);
                                jQuery.uniform.update(jQuery("#radio6_a").attr('checked', false));
                                jQuery.uniform.update(jQuery("#radio6_b").attr('checked', false));
                            }
                        }
                        else {
                            $('#TextBox19').css('border-color', 'red');
                            $('#TextBox19').css('background', 'red');
                            $('#TextBox19').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox19').css('border-color', 'red');
                $('#TextBox19').css('background', 'red');
                $('#TextBox19').css('color', 'white');
            }
        });

        $('#C35_Mj').bind('change', function () {
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#C35_SMj').html('');
                        $('#C35_Min').html('');
                        $('#C35_U').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#C35_SMj').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox33').val('');
                        $('#C35_U').prop('disabled', false);
                        $('#C35_Min').prop('disabled', false);
                        $('#C35_SMj').prop('disabled', false);
                        $('#C35_R_a').prop('checked', false);
                        $('#C35_R_b').prop('checked', false);
                    }
                });
            } else {
                $('#ListBox3_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#C35_SMj').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#C35_Min').html('');
                        $('#C35_U').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#C35_Min').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#C35_Min').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#C35_Min').bind('change', function () {
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "professions"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#C35_U').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#C35_U').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#C35_U').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#C35_U').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox33').val(Unit1);
            $('#TextBox33').css('background', 'green');
            $('#TextBox33').css('color', 'white');


        });
        $('#C35_R').bind('change', function () {
            var code = $(this).val();
            $('#C35_Mj').disabled = true;
            $('#TextBox33').val(code);
            $('#C35_U').prop('disabled', 'disabled');
            $('#C35_Min').prop('disabled', 'disabled');
            $('#C35_SMj').prop('disabled', 'disabled');

        });
        $('#C35_R_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox33').val(code);
            $('#C35_U').prop('disabled', 'disabled');
            $('#C35_Min').prop('disabled', 'disabled');
            $('#C35_SMj').prop('disabled', 'disabled');
        });
        $('#TextBox33').keyup(function () {
            var value = $(this).val();
            if (value.length == 4) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "professions"
                    },
                    success: function (data) {
                        //alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#C35_SMj').html('');
                                $('#C35_Min').html('');
                                $('#C35_U').html('');
                                $('#TextBox33').css('border-color', 'green');
                                $('#TextBox33').css('background', 'green');
                                $('#TextBox33').css('color', 'white');
                                $('#C35_U').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#C35_Min').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#C35_SMj').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                    //$('#C35_Mj').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#C35_Mj").val(res[0].ID1);
                                $('#C35_U').prop('disabled', false);
                                $('#C35_Min').prop('disabled', false);
                                $('#C35_SMj').prop('disabled', false);
                                $('#C35_R_a').prop('checked', false);
                                $('#C35_R_b').prop('checked', false);
                            }
                        }
                        else {
                            $('#TextBox33').css('border-color', 'red');
                            $('#TextBox33').css('background', 'red');
                            $('#TextBox33').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox33').css('border-color', 'red');
                $('#TextBox33').css('background', 'red');
                $('#TextBox33').css('color', 'white');
            }
        });
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
