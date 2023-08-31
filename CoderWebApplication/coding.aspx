<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="coding.aspx.cs" Inherits="CoderWebApplication.WebFormcode" %>
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
				<h1 style="float:left">KEY_: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> (Current Status: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>)</h1>
                <h1 style="float:right"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
					</div>
			
			
			<div class="clear"></div>
			<div class="grid_12">
				<div class="block-border">
					<div class="block-header">
						<h1>Coding (Industries)</h1><span></span>
					</div>
					<form id="form1" class="block-content form"  defaultbutton="Button1" runat="server">
						<asp:Panel ID="A22" runat="server" >   
                            <fieldset>
                            
							<legend>Coding Industry Adults - section A :   A22</legend>
                            <div class="_50">
								<p><label for="textfield1">A21a</label>
                                    <asp:TextBox ID="A21a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A21a. What would you call (NAME)'s occupation? Please describe it like 'I am a … and I work at/in/for …'. Please also say with what (NAME) works, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A21b</label>
                                    <asp:TextBox ID="A21b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A21b. What does (NAME) usually do during his/her worktime in this job/task? (Clarify if needed with the question: What does (NAME) do at work? What are the activities/actions that (NAME) carries out?) 
They should use verb + object. E.g. 'carry bricks', 'carry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields'"></asp:TextBox>
                                    </p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">A23</label>
                                    <asp:TextBox ID="A23" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A23. Where did (NAME) carry out his/her main work during the past week?
If did not work last week but usually has a job: Where does (NAME) usually carry out his/her job?"></asp:TextBox>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A24</label>
                                    <asp:TextBox ID="A24" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A24. During the past week, which of the following best describe (NAME) `s work situation at his/her main work? "></asp:TextBox>
                                    </p>
							</div>
							<div class="_50">
								<p><label for="textfield1">A22a</label>
                                    <asp:TextBox ID="TextBox1" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="A22a. Who is (NAME) working for? What is the name of the company, if it has a name? (In probing: Describe briefly the main activity i.e. goods produced and services rendered where (NAME) is working.  Clarify if needed with the question: What is produced at (NAME)'s work? What is the outcome of (NAME)'s work?)"></asp:TextBox>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A22b</label>
                                    <asp:TextBox ID="TextBox2" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="A22b. What is produced / cultivated / mined / done where (NAME) works or what does (NAME) produce / cultivate / do? (Clarify if needed with: What is the final outcome of (NAME)'s work? (Enumerator note: Can be a thing, can be a service (a fixed car), if something was brought (fetching water: water was fetched), etc.)"></asp:TextBox>
                                    </p>
							</div>
							<div class="_100">
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                      <asp:TextBox ID="MajorFilter1" runat="server" style="height:8px"></asp:TextBox>
                                    <asp:ListBox style="height:150px !important" ID="ListBox1_a" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox  ID="ListBox1_b" runat="server" style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox  ID="ListBox1_c" runat="server" style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox1_d" runat="server" style="height:150px !important"></asp:ListBox></p>
							</div>
                                </div>
                             <div class="_25">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio1_a" value="3999" name="radio" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio1_b" value="3998" name="radio" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox24" runat="server" ToolTip="A22a_3 A22a. Who is ${NameFromEarlierA} working for? What is the name of the company, if it has a name?
A22b_3 A22b. What is produced / cultivated / mined / done where ${NameFromEarlierA} works or what does ${NameFromEarlierA} produce / cultivate / do? (Clarify if needed with: What is the final outcome of ${NameFromEarlierA}'s work? "></asp:TextBox></p>
							</div>

						</fieldset>
						</asp:Panel>
                        <asp:Panel ID="A44" runat="server" >   
						<fieldset>
							<legend>Coding Industry Adults - section A :   A44</legend>
                            <div class="_25">
								<p><label for="textfield1">A43a</label>
                                    <asp:TextBox ID="A43" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A43a. What would you call (NAME)'s occupation? Please describe it like 'I am a … and I work at/in/for …'. Please also say with what (NAME) works, if informative (E.g. 'I am a taxi driver and I work for a Hotel','I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox></p>
							</div>
							<div class="_25">
								<p><label for="textfield1">A43b</label>
                                    <asp:TextBox ID="A43b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A43b. What does (NAME) usually do during his/her worktime in this job/task? (Clarify if needed with the question: What does (NAME) do at work? What are the activities/actions that (NAME) carries out? They should use verb + object. E.g. 'carry bricks', 'carry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields') "></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield2">A45</label>
                                    <asp:TextBox ID="A45" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="A45. Which of the following best describe (NAME) `s work situation at his/her main work in the past 12 months? "></asp:TextBox>

								</p>
							</div>
							<div class="_50">
								<p><label for="textfield1">A44a</label>
                                    <asp:TextBox ID="TextBox3" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="A44a. Who is (NAME) working for? What is the name of the company, if it has a name?  (In probing: Describe briefly the main activity i.e. goods produced and services rendered where (NAME) is working.  Clarify if needed with the question: What is produced at (NAME)'s work? What is the outcome of (NAME)'s work?)"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A44b</label>
                                    <asp:TextBox ID="TextBox4" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="A44b. What is produced / cultivated / mined / done where (NAME) works or what does (NAME) produce / cultivate / do? (Clarify if needed with: What is the final outcome of (NAME)'s work?) (Enumerator note: Can be a thing, can be a service (a fixed car), if something was brought (fetching water: water was fetched), etc.)"></asp:TextBox>

								</p>
							</div>
							<div class="_100">
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:TextBox ID="MajorFilter2" runat="server" style="height:8px"></asp:TextBox>
                                    <asp:ListBox ID="ListBox2_a"  style="height:150px !important" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox2_b"  style="height:150px !important" runat="server">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox2_c"  style="height:150px !important" runat="server"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox2_d"  style="height:150px !important" runat="server"></asp:ListBox></p>
							</div>
                                </div>
                             <div class="_25">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio2_a" value="3999" name="radio2" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio2_b" value="3998" name="radio2" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox23" runat="server" ToolTip="A44a_4 A44a. Who is ${NameFromEarlierA} working for? What is the name of the company, if it has a name? (In probing: Describe briefly the main activity i.e. goods produced and services rendered where ${NameFromEarlierA} is working. Clarify if needed with the question: What is produced at ${NameFromEarlierA}'s work? What is the outcome of ${NameFromEarlierA}'s work?)
A44b_4 A44b. What is produced / cultivated / mined / done where ${NameFromEarlierA} works or what does ${NameFromEarlierA} produce / cultivate / do? (Clarify if needed with: What is the final outcome of ${NameFromEarlierA}'s work?) (Enumerator note: Can be a thing, can be a service (a fixed car), if something was brought (fetching water: water was fetched), etc.)"></asp:TextBox></p>
							</div>

						</fieldset>
						</asp:Panel>
                        <asp:Panel ID="C21" runat="server" >   
						
						<fieldset>
							<legend>Coding Industry Children - section C:  C21 </legend>
							<div class="_50">
								<p><label for="textfield1">C20a</label>
                                    <asp:TextBox ID="C20a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="C20a. What would you call your occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what you work, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C20b</label>
                                    <asp:TextBox ID="C20b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="C20b. What do you usually do during your worktime in this job/task? (Clarify if needed with the question: What do you do at work? What are the activities/actions that you carry out? They should use verb + object. E.g. 'Iarry bricks', 'Iarry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields')"></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C25</label>
                                    <asp:TextBox ID="C25" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="C25. Where did you carry out your main work during the past week?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C26</label>
                                    <asp:TextBox ID="C26" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none"  ToolTip="C26. For your main job/work were you a/an?"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">C21a</label>
                                    <asp:TextBox ID="TextBox5" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C21a. Who are you working for? What is the name of the company, if it has a name?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2" class="act_label">C21b</label>
                                    <asp:TextBox ID="TextBox6" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C21b. What is produced / cultivated / mined / done where you work or what do you produce / cultivate / do? ("></asp:TextBox></p>
							</div>
                            <div class="_100">
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:TextBox ID="MajorFilter3" runat="server" style="height:8px"></asp:TextBox>
                                    <asp:ListBox ID="ListBox3_a"  style="height:150px !important" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox3_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox3_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox3_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                                </div>
                             <div class="_25">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio3_a" value="3999" name="radio3" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio3_b" value="3998" name="radio3" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox22" runat="server" ToolTip="C21a_9_59 C21a. Who are you working for? What is the name of the company, if it has a name?
C21b_9_59 C21b. What is produced / cultivated / mined / done where you work or what do you produce / cultivate / do?"></asp:TextBox></p>
							</div>

						</fieldset>
                            </asp:Panel>
                       
						<div class="block-actions">
							<ul class="actions-left">
								<li><a class="close-toolbox button red" href="javascript:void(0);">Reset</a></li>
							</ul>
							<ul class="actions-right">
								<li>
                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Height="25px" UseSubmitBehavior="false" OnClientClick="this.disabled='true'; this.value='Please wait...'; __doPostBack('Button1','')"  type="submit" class="button" Text="Save Code & Next" /></li>
							</ul>
						</div>
					</form>
				</div>
			</div>
			
			
			<div class="clear height-fix"></div>

		</div></div> <!--! end of #main-content UseSubmitBehavior="false" -->
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
          opts = document.getElementById("ListBox1_a").getElementsByTagName("option")
          for (var k = 0; k < opts.length; k++) {
              opts[k].title = opts[k].text
          }
          opts2 = document.getElementById("ListBox2_a").getElementsByTagName("option")
          for (var k = 0; k < opts2.length; k++) {
              opts2[k].title = opts2[k].text
          }
          opts3 = document.getElementById("ListBox3_a").getElementsByTagName("option")
          for (var k = 0; k < opts3.length; k++) {
              opts3[k].title = opts3[k].text
          }
          opts4 = document.getElementById("ListBox4_a").getElementsByTagName("option")
          for (var k = 0; k < opts4.length; k++) {
              opts4[k].title = opts4[k].text
          }
</script>
  <script type="text/javascript">

      function DoListBoxFilter(listBoxSelector, filter, keys, values) {
          var list = $(listBoxSelector);
          var selectBase = '<option value="{0}">{1}</option>';
          list.empty();
           for (i = 0; i < values.length; ++i) {
            var value = values[i];
               if (value == "" || value.toLowerCase().indexOf(filter.toLowerCase()) >= 0) {
                   var temp = '<option value="' + keys[i] + '">' + value + '</option>';
                    list.append(temp);
              }
          }
      }

      var keys = [];
      var values = [];
      var options = $('#<% = ListBox1_a.ClientID %> option');

        $.each(options, function (index, item) {
            keys.push(item.value);
            values.push(item.innerHTML);
        });

        $('#<% = MajorFilter1.ClientID %>').keyup(function () {
            var filter = $(this).val();
            DoListBoxFilter('#<% = ListBox1_a.ClientID %>', filter, keys, values);

        });
        var keys2 = [];
        var values2 = [];
        var options2 = $('#<% = ListBox2_a.ClientID %> option');

      $.each(options2, function (index, item) {
          keys2.push(item.value);
          values2.push(item.innerHTML);
      });

      $('#<% = MajorFilter2.ClientID %>').keyup(function () {
            var filter = $(this).val();
            DoListBoxFilter('#<% = ListBox2_a.ClientID %>', filter, keys, values);

      });
      var keys3 = [];
      var values3 = [];
      var options3 = $('#<% = ListBox3_a.ClientID %> option');

      $.each(options3, function (index, item) {
          keys3.push(item.value);
          values3.push(item.innerHTML);
      });

      $('#<% = MajorFilter3.ClientID %>').keyup(function () {
            var filter = $(this).val();
            DoListBoxFilter('#<% = ListBox3_a.ClientID %>', filter, keys, values);

      });
     
      $().ready(function () {
          $('#ListBox1_a').bind('change', function () {
              debugger;
              $('#TextBox24').css('border-color', 'red');
              $('#TextBox24').css('background', 'red');
              $('#TextBox24').css('color', 'white');
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox1_b').html('');
                        $('#ListBox1_c').html('');
                        $('#ListBox1_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox1_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        } 
                        $('#TextBox24').val('');
                        $('#ListBox1_d').prop('disabled', false);
                        $('#ListBox1_c').prop('disabled', false);
                        $('#ListBox1_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio1_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio1_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox1_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox1_b').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox1_c').html('');
                        $('#ListBox1_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox1_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox1_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox1_c').bind('change', function () {
            debugger
            var Unit1 = $(this).val();
            //alert("ds");
            //$('#TextBox24').val(Unit1);
            //$('#TextBox24').css('background', 'red');
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "industries"
                    },
                    success: function data(data) {
                        debugger
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox1_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox1_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                      
                        //alert("ds");
                       
                        if (Unit1.substring(0, 3) !== '139' && Unit1.substring(0, 3) !== '151' && Unit1.substring(0, 3) !== '239' && Unit1.substring(0, 3) !== '466' && Unit1.substring(0, 3) !== '591') {
                            $('#TextBox24').val(Unit1);
                            $('#TextBox24').css('border-color', 'green');
                            $('#TextBox24').css('background', 'green');
                            $('#TextBox24').css('color', 'white');
                        }
                       
                    }
                });
            } else {
                $('#ListBox1_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox1_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox24').val(Unit1);
            $('#TextBox24').css('border-color', 'green');
            $('#TextBox24').css('background', 'green');
            $('#TextBox24').css('color', 'white');

        });
        $('#radio1_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox1_a').disabled = true;
            $('#TextBox24').val(code);
            $('#ListBox1_d').prop('disabled', 'disabled');
            $('#ListBox1_c').prop('disabled', 'disabled');
            $('#ListBox1_b').prop('disabled', 'disabled');

        });
        $('#radio1_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox24').val(code);
            $('#ListBox1_d').prop('disabled', 'disabled');
            $('#ListBox1_c').prop('disabled', 'disabled');
            $('#ListBox1_b').prop('disabled', 'disabled');
        });
        $('#TextBox24').keyup(function () {
            
            var value = $(this).val();
            
           
            if (value.length == 3 || value.length == 4) {
                var p_action = "9"
                if (value.length == 3 && value !== '139' && value !== '151' && value !== '239' && value !== '466' && value !== '591') {
                    p_action = '10';
                }

                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: p_action,
                        id: value,
                        type: "industries"
                    },
                    success: function (data) {
                       //alert alert(data);
                        if (data != "")
                            {
                            var res = JSON.parse(data);
                        var dataLen = res.length;
                        if (dataLen > 0) {
                            debugger;
                            $('#ListBox1_b').html('');
                            $('#ListBox1_c').html('');
                            $('#ListBox1_d').html('');
                            $('#TextBox24').css('border-color', 'green');
                            $('#TextBox24').css('background', 'green');
                            $('#TextBox24').css('color', 'white');
                            $('#ListBox1_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                            for (i = 0; i < dataLen; i++) {
                                 //alert(res[i].Unit);
                                $('#ListBox1_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                $('#ListBox1_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                               // $('#ListBox1_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                            }
                            $("#ListBox1_a").val(res[0].ID1);
                            $('#ListBox1_d').prop('disabled', false);
                            $('#ListBox1_c').prop('disabled', false);
                            $('#ListBox1_b').prop('disabled', false);
                            jQuery.uniform.update(jQuery("#radio1_a").attr('checked', false));
                            jQuery.uniform.update(jQuery("#radio1_b").attr('checked', false));

                            $('#TextBox24').val(value);
                            $('#TextBox24').css('background', 'green');
                            $('#TextBox24').css('color', 'white');
                        }
                        }
                        else
                        {
                            $('#TextBox24').css('border-color', 'red');
                            $('#TextBox24').css('background', 'red');
                            $('#TextBox24').css('color', 'white');
                        }
                }
                });
            }
            else {
                $('#TextBox24').css('border-color', 'red');
                $('#TextBox24').css('background', 'red');
                $('#TextBox24').css('color', 'white');
            }
        });

        //2nd
        $('#ListBox2_a').bind('change', function () {
            debugger
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "industries"
                    },
                    success: function (data) {
                        debugger
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox2_b').html('');
                        $('#ListBox2_c').html('');
                        $('#ListBox2_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox2_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox23').val('');
                        $('#ListBox2_d').prop('disabled', false);
                        $('#ListBox2_c').prop('disabled', false);
                        $('#ListBox2_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio2_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio2_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox2_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox2_b').bind('change', function () {
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox2_c').html('');
                        $('#ListBox2_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox2_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox2_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox2_c').bind('change', function () {
            debugger
            var Unit1 = $(this).val();
            //alert("ds");
            //$('#TextBox23').val(Unit1);
            //$('#TextBox23').css('background', 'green');
            //$('#TextBox23').css('color', 'white');
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "industries"
                    },
                    success: function (data) {
                        
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox2_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox2_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');

                        }
                        if (Unit1.substring(0, 3) !== '139' && Unit1.substring(0, 3) !== '151' && Unit1.substring(0, 3) !== '239' && Unit1.substring(0, 3) !== '466' && Unit1.substring(0, 3) !== '591') {
                            $('#TextBox23').val(Unit1);
                            $('#TextBox23').css('border-color', 'green');
                            $('#TextBox23').css('background', 'green');
                            $('#TextBox23').css('color', 'white');
                        }
                        //alert("ds");
                        //$('#TextBox23').val(Unit1);
                        //$('#TextBox23').css('background', 'green');
                        //$('#TextBox23').css('color', 'white');
                    }
                });
            } else {
                $('#ListBox2_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox2_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox23').val(Unit1);
            $('#TextBox23').css('background', 'green');
            $('#TextBox23').css('color', 'white');


        });
        $('#radio2_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox2_a').disabled = true;
            $('#TextBox23').val(code);
            $('#ListBox2_d').prop('disabled', 'disabled');
            $('#ListBox2_c').prop('disabled', 'disabled');
            $('#ListBox2_b').prop('disabled', 'disabled');

        });
        $('#radio2_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox23').val(code);
            $('#ListBox2_d').prop('disabled', 'disabled');
            $('#ListBox2_c').prop('disabled', 'disabled');
            $('#ListBox2_b').prop('disabled', 'disabled');
        });
        $('#TextBox23').keyup(function () {
            var value = $(this).val();
            if (value.length == 4) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "industries"
                    },
                    success: function (data) {
                       // alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#ListBox2_b').html('');
                                $('#ListBox2_c').html('');
                                $('#ListBox2_d').html('');
                                $('#TextBox23').css('border-color', 'green');
                                $('#TextBox23').css('background', 'green');
                                $('#TextBox23').css('color', 'white');
                                $('#ListBox2_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#ListBox2_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#ListBox2_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                //    $('#ListBox2_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#ListBox2_a").val(res[0].ID1);
                                $('#ListBox2_d').prop('disabled', false);
                                $('#ListBox2_c').prop('disabled', false);
                                $('#ListBox2_b').prop('disabled', false);
                                jQuery.uniform.update(jQuery("#radio2_a").attr('checked', false));
                                jQuery.uniform.update(jQuery("#radio2_b").attr('checked', false));

                                $('#TextBox22').val(value);
                                $('#TextBox22').css('border-color', 'green');
                                $('#TextBox22').css('background', 'green');
                                $('#TextBox22').css('color', 'white');
                            }
                        }
                        else {
                            $('#TextBox23').css('border-color', 'red');
                            $('#TextBox23').css('background', 'red');
                            $('#TextBox23').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox23').css('border-color', 'red');
                $('#TextBox23').css('background', 'red');
                $('#TextBox23').css('color', 'white');
            }
        });
        //3rd
        $('#ListBox3_a').bind('change', function () {
            debugger;
            $('#TextBox22').css('border-color', 'red');
            $('#TextBox22').css('background', 'red');
            $('#TextBox22').css('color', 'white');
           
            var Major1 = $(this).val();
            if (Major1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "2",
                        id: Major1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox3_b').html('');
                        $('#ListBox3_c').html('');
                        $('#ListBox3_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox3_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        $('#TextBox22').val('');
                        $('#ListBox3_d').prop('disabled', false);
                        $('#ListBox3_c').prop('disabled', false);
                        $('#ListBox3_b').prop('disabled', false);
                        jQuery.uniform.update(jQuery("#radio3_a").attr('checked', false));
                        jQuery.uniform.update(jQuery("#radio3_b").attr('checked', false));
                    }
                });
            } else {
                $('#ListBox3_b').html('<option value="">Select Major Group</option>');
            }
        });
        $('#ListBox3_b').bind('change', function () {
            debugger;
            $('#TextBox22').css('border-color', 'red');
            $('#TextBox22').css('background', 'red');
            $('#TextBox22').css('color', 'white');
            var SubMajor1 = $(this).val();
            if (SubMajor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "3",
                        id: SubMajor1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox3_c').html('');
                        $('#ListBox3_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox3_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                    }
                });
            } else {
                $('#ListBox3_c').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox3_c').bind('change', function () {
            debugger;
            $('#TextBox22').css('border-color', 'red');
            $('#TextBox22').css('background', 'red');
            $('#TextBox22').css('color', 'white');
            var Unit1 = $(this).val();
            //alert("ds");
            //$('#TextBox22').val(Unit1);
            //$('#TextBox22').css('background', 'green');
            //$('#TextBox22').css('color', 'white');
            var Minor1 = $(this).val();
            if (Minor1) {
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "4",
                        id: Minor1,
                        type: "industries"
                    },
                    success: function (data) {
                        var res = JSON.parse(data);
                        var dataLen = res.length;
                        $('#ListBox3_d').html('');
                        for (i = 0; i < dataLen; i++) {
                            //  alert(res[i].name);
                            $('#ListBox3_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                        }
                        if (Unit1.substring(0, 3) !== '139' && Unit1.substring(0, 3) !== '151' && Unit1.substring(0, 3) !== '239' && Unit1.substring(0, 3) !== '466' && Unit1.substring(0, 3) !== '591') {
                            $('#TextBox22').val(Unit1);
                            $('#TextBox22').css('border-color', 'green');
                            $('#TextBox22').css('background', 'green');
                            $('#TextBox22').css('color', 'white');
                        }
                        //alert("ds");
                        //$('#TextBox22').val(Unit1);
                        //$('#TextBox22').css('background', 'green');
                        //$('#TextBox22').css('color', 'white');
                    }
                });
            } else {
                $('#ListBox3_d').html('<option value="">Select Sub Major Group</option>');
            }
        });
        $('#ListBox3_d').bind('change', function () {
            var Unit1 = $(this).val();
            //alert("ds");
            $('#TextBox22').val(Unit1);
            $('#TextBox22').css('background', 'green');
            $('#TextBox22').css('color', 'white');

        });
        $('#radio3_a').bind('change', function () {
            var code = $(this).val();
            $('#ListBox3_a').disabled = true;
            $('#TextBox22').val(code);
            $('#ListBox3_d').prop('disabled', 'disabled');
            $('#ListBox3_c').prop('disabled', 'disabled');
            $('#ListBox3_b').prop('disabled', 'disabled');

        });
        $('#radio3_b').bind('change', function () {
            var code = $(this).val();
            $('#TextBox22').val(code);
            $('#ListBox3_d').prop('disabled', 'disabled');
            $('#ListBox3_c').prop('disabled', 'disabled');
            $('#ListBox3_b').prop('disabled', 'disabled');
        });
          //C20 text box from numeric code
        $('#TextBox22').keyup(function () {
            var value = $(this).val();
            if (value.length == 3 || value.length == 4) {
                var p_action = "9"
                if (value.length == 3 && value !== '139' && value !== '151' && value !== '239' && value !== '466' && value !== '591') {
                    p_action = '10';
                }
                $.ajax({
                    type: 'POST',
                    url: "WebForm3.aspx",
                    data: {
                        action: "9",
                        id: value,
                        type: "industries"
                    },
                    success: function (data) {
                        //alert(data);
                        if (data != "") {
                            var res = JSON.parse(data);
                            var dataLen = res.length;
                            if (dataLen > 0) {
                                $('#ListBox3_b').html('');
                                $('#ListBox3_c').html('');
                                $('#ListBox3_d').html('');
                                $('#TextBox22').css('border-color', 'green');
                                $('#TextBox22').css('background', 'green');
                                $('#TextBox22').css('color', 'white');
                                $('#ListBox3_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                for (i = 0; i < dataLen; i++) {
                                    // alert(res[i].Unit);
                                    $('#ListBox3_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                    $('#ListBox3_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                  //  $('#ListBox3_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                }
                                $("#ListBox3_a").val(res[0].ID1);
                                $('#ListBox3_d').prop('disabled', false);
                                $('#ListBox3_c').prop('disabled', false);
                                $('#ListBox3_b').prop('disabled', false);
                                jQuery.uniform.update(jQuery("#radio3_a").attr('checked', false));
                                jQuery.uniform.update(jQuery("#radio3_b").attr('checked', false));
                            }
                        }
                        else {
                            $('#TextBox22').css('border-color', 'red');
                            $('#TextBox22').css('background', 'red');
                            $('#TextBox22').css('color', 'white');
                        }
                    }
                });
            }
            else {
                $('#TextBox22').css('border-color', 'red');
                $('#TextBox22').css('background', 'red');
                $('#TextBox22').css('color', 'white');

                $('#ListBox3_b').html('');
                $('#ListBox3_c').html('');
                $('#ListBox3_d').html('');
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
