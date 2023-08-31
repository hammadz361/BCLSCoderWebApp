<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="supervisorform3.aspx.cs" Inherits="CoderWebApplication.WebFormcode03c" %>
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
						<h1>Coding (Tools)</h1><span></span>
					</div>
					<form id="form1" class="block-content form" defaultbutton="Button1" runat="server">
						
						 
						<fieldset>
							<legend>Coding Tools  C38, C38a, C38b, C38c</legend>
                            
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
                                <p>
                                    <label for="textfield1">C26</label>
                                    <asp:TextBox ID="C26" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C26. For your main job/work were you a/an?"></asp:TextBox>
                                </p>
                            </div>
                           						
							<div class="_50">
								<p><label for="textfield2">C20a</label>
                                    <asp:TextBox ID="C20a" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C20a. What would you call your occupation? Please describe it like 'I am a …. and I work at/in/for ….'. Please also say with what you work, if informative (E.g. 'I am a taxi driver and I work for a Hotel', 'I am a labourer and I wokd on a rice field for a land owner')"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield2">C20b</label>
                                    <asp:TextBox ID="C20b" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C20b. What do you usually do during your worktime in this job/task? (Clarify if needed with the question: What do you do at work? What are the activities/actions that you carry out? They should use verb + object. E.g. 'Iarry bricks', 'Iarry passengers in a bus', 'guard a private home', 'harvest maize', 'plough fields')"></asp:TextBox></p>
							</div>
							<div class="_50">
								<p><label for="textfield1">C38_1_11</label>
                                    <asp:TextBox ID="TextBox13" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none" ToolTip="C38_1_11_59 C38. What type of tools, equipment or machines do you use at work? "></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield1">C35</label>
                                    <asp:TextBox ID="C35" runat="server" disabled="true" CssClass="supp_text" TextMode="MultiLine" style="resize:none" ToolTip="C35. Think about your most serious illness/injury, what were you doing when this happened?"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C38_2_11</label>
                                    <asp:TextBox ID="TextBox14" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C38_2_11_59 C38a. What is the name of the tool/machine/equipment?"></asp:TextBox></p>
							</div> <div class="_50">
								<p><label for="textfield2">C38_3_11</label>
                                   <asp:TextBox ID="TextBox16" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C38_3_11_59 C38b. What do you do with the tool/equipment and what is the material/object you are working/processing? "></asp:TextBox></p>
							</div>
                              
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox7_a" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox7_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox7_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox7_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio7_a" value="3999" name="radio7" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio7_b" value="3998" name="radio7" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code1</label>
                                    <asp:TextBox ID="TextBox18" runat="server" ToolTip="C38_1_11_59 C38. What type of tools, equipment or machines do you use at work? 
C38_2_11_59 C38a. What is the name of the tool/machine/equipment?
C38_3_11_59 'C38b. What do you do with the tool/equipment and what is the material/object you are working/processing?'"></asp:TextBox></p>
							</div>
                                </div>
                             </fieldset>
                            <asp:Panel ID="C38_11" runat="server">
                                <fieldset>
                            <div class="_50">
								<p><label for="textfield2">C38_2_11_2nd</label>
                                    <asp:TextBox ID="TextBox15" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C38_2_11_59 C38a. What is the name of the tool/machine/equipment?"></asp:TextBox></p>
							</div>
                           
							 <div class="_50">
								<p><label for="textfield2">C38_3_11_2nd</label>
                                    <asp:TextBox ID="TextBox17" runat="server" disabled="true" CssClass="act_text" TextMode="MultiLine" style="resize:none"  ToolTip="C38_3_11_59 C38b. What do you do with the tool/equipment and what is the material/object you are working/processing? "></asp:TextBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox9" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox10" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox11" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox12" runat="server"></asp:ListBox></p>
							</div>
                                    <div class="_100">
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio1_a" value="3999" name="radio7" style="opacity: 0;"></span></div> Industry/Occupation mismatch</label>
								<label><div class="radio"><span><input type="radio" id="radio1_b" value="3998" name="radio7" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code2</label>
                                    <asp:TextBox ID="TextBox22" runat="server" ToolTip="C38_1_11_59 C38. What type of tools, equipment or machines do you use at work? 
C38_2_11_59 C38a. What is the name of the tool/machine/equipment?
C38_3_11_59 'C38b. What do you do with the tool/equipment and what is the material/object you are working/processing?'"></asp:TextBox></p>
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

                                     <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" type="submit" class="button" Text="Save Code & Load Next Entry" />--%>

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
      $().ready(function () {
          //7
          $('#ListBox7_a').bind('change', function () {
              var Major1 = $(this).val();
              if (Major1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "2",
                          id: Major1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox7_b').html('');
                          $('#ListBox7_c').html('');
                          $('#ListBox7_d').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox7_b').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                          $('#TextBox18').val('');
                          $('#ListBox7_d').prop('disabled', false);
                          $('#ListBox7_c').prop('disabled', false);
                          $('#ListBox7_b').prop('disabled', false);
                          jQuery.uniform.update(jQuery("#radio7_a").attr('checked', false));
                          jQuery.uniform.update(jQuery("#radio7_b").attr('checked', false));
                      }
                  });
              } else {
                  $('#ListBox7_b').html('<option value="">Select Major Group</option>');
              }
          });
          $('#ListBox7_b').bind('change', function () {
              var SubMajor1 = $(this).val();
              if (SubMajor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "3",
                          id: SubMajor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox7_c').html('');
                          $('#ListBox7_d').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox7_c').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox7_c').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox7_c').bind('change', function () {
              var Minor1 = $(this).val();
              if (Minor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "4",
                          id: Minor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox7_d').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox7_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox7_d').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox7_d').bind('change', function () {
              var Unit1 = $(this).val();
              //alert("ds");
              $('#TextBox18').val(Unit1);
              $('#TextBox18').css('background', 'green');
              $('#TextBox18').css('color', 'white');


          });
          $('#radio7_a').bind('change', function () {
              var code = $(this).val();
              $('#TextBox18').val(code);
              $('#ListBox7_d').prop('disabled', 'disabled');
              $('#ListBox7_c').prop('disabled', 'disabled');
              $('#ListBox7_b').prop('disabled', 'disabled');

          });
          $('#radio7_b').bind('change', function () {
              var code = $(this).val();
              $('#TextBox18').val(code);
              $('#ListBox7_d').prop('disabled', 'disabled');
              $('#ListBox7_c').prop('disabled', 'disabled');
              $('#ListBox7_b').prop('disabled', 'disabled');
          });
          $('#TextBox18').keyup(function () {
              var value = $(this).val();
              if (value.length == 4) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "9",
                          id: value,
                          type: "tools"
                      },
                      success: function (data) {
                          //alert alert(data);
                          if (data != "") {
                              var res = JSON.parse(data);
                              var dataLen = res.length;
                              if (dataLen > 0) {
                                  $('#ListBox7_b').html('');
                                  $('#ListBox7_c').html('');
                                  $('#ListBox7_d').html('');
                                  $('#TextBox18').css('border-color', 'green');
                                  $('#TextBox18').css('background', 'green');
                                  $('#TextBox18').css('color', 'white');
                                  $('#ListBox7_d').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                  for (i = 0; i < dataLen; i++) {
                                      // alert(res[i].Unit);
                                      $('#ListBox7_c').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                      $('#ListBox7_b').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                     // $('#ListBox7_a').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                  }
                                  $("#ListBox7_a").val(res[0].ID1);
                                  $('#ListBox7_d').prop('disabled', false);
                                  $('#ListBox7_c').prop('disabled', false);
                                  $('#ListBox7_b').prop('disabled', false);
                                  jQuery.uniform.update(jQuery("#radio7_a").attr('checked', false));
                                  jQuery.uniform.update(jQuery("#radio7_b").attr('checked', false));
                              }
                          }
                          else {
                              $('#TextBox18').css('border-color', 'red');
                              $('#TextBox18').css('background', 'red');
                              $('#TextBox18').css('color', 'white');
                          }
                      }
                  });
              }
              else {
                  $('#TextBox18').css('border-color', 'red');
                  $('#TextBox18').css('background', 'red');
                  $('#TextBox18').css('color', 'white');
              }
          });
          $('#ListBox1').bind('change', function () {
              var Major1 = $(this).val();
              if (Major1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "2",
                          id: Major1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox2').html('');
                          $('#ListBox3').html('');
                          $('#ListBox4').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox2').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                          $('#TextBox2').val('');
                          $('#ListBox4').prop('disabled', false);
                          $('#ListBox3').prop('disabled', false);
                          $('#ListBox2').prop('disabled', false);
                          jQuery.uniform.update(jQuery("#radio1_a").attr('checked', false));
                          jQuery.uniform.update(jQuery("#radio1_b").attr('checked', false));
                      }
                  });
              } else {
                  $('#ListBox2').html('<option value="">Select Major Group</option>');
              }
          });
          $('#ListBox2').bind('change', function () {
              var SubMajor1 = $(this).val();
              if (SubMajor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "3",
                          id: SubMajor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox3').html('');
                          $('#ListBox4').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox3').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox3').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox3').bind('change', function () {
              var Minor1 = $(this).val();
              if (Minor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "4",
                          id: Minor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox4').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox4').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox4').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox4').bind('change', function () {
              var Unit1 = $(this).val();
              //alert("ds");
              $('#TextBox2').val(Unit1);
              $('#TextBox2').css('background', 'green');
              $('#TextBox2').css('color', 'white');


          });
          $('#radio1_a').bind('change', function () {
              var code = $(this).val();
              $('#TextBox2').val(code);
              $('#ListBox4').prop('disabled', 'disabled');
              $('#ListBox3').prop('disabled', 'disabled');
              $('#ListBox2').prop('disabled', 'disabled');

          });
          $('#radio1_b').bind('change', function () {
              var code = $(this).val();
              $('#TextBox2').val(code);
              $('#ListBox4').prop('disabled', 'disabled');
              $('#ListBox3').prop('disabled', 'disabled');
              $('#ListBox2').prop('disabled', 'disabled');
          });
          $('#TextBox2').keyup(function () {
              var value = $(this).val();
              if (value.length == 4) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "9",
                          id: value,
                          type: "tools"
                      },
                      success: function (data) {
                          //alert alert(data);
                          if (data != "") {
                              var res = JSON.parse(data);
                              var dataLen = res.length;
                              if (dataLen > 0) {
                                  $('#ListBox2').html('');
                                  $('#ListBox3').html('');
                                  $('#ListBox4').html('');
                                  $('#TextBox2').css('border-color', 'green');
                                  $('#TextBox2').css('background', 'green');
                                  $('#TextBox2').css('color', 'white');
                                  $('#ListBox4').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                  for (i = 0; i < dataLen; i++) {
                                      // alert(res[i].Unit);
                                      $('#ListBox3').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                      $('#ListBox2').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                    //  $('#ListBox1').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                  }
                                  $("#ListBox1").val(res[0].ID1);
                                  $('#ListBox4').prop('disabled', false);
                                  $('#ListBox3').prop('disabled', false);
                                  $('#ListBox2').prop('disabled', false);
                                  jQuery.uniform.update(jQuery("#radio1_a").attr('checked', false));
                                  jQuery.uniform.update(jQuery("#radio1_b").attr('checked', false));
                              }
                          }
                          else {
                              $('#TextBox2').css('border-color', 'red');
                              $('#TextBox2').css('background', 'red');
                              $('#TextBox2').css('color', 'white');
                          }
                      }
                  });
              }
              else {
                  $('#TextBox2').css('border-color', 'red');
                  $('#TextBox2').css('background', 'red');
                  $('#TextBox2').css('color', 'white');
              }
          });
          $('#ListBox5').bind('change', function () {
              var Major1 = $(this).val();
              if (Major1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "2",
                          id: Major1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox6').html('');
                          $('#ListBox7').html('');
                          $('#ListBox8').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox6').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                          $('#TextBox_C35').val('');
                          $('#ListBox8').prop('disabled', false);
                          $('#ListBox7').prop('disabled', false);
                          $('#ListBox6').prop('disabled', false);
                          jQuery.uniform.update(jQuery("#radio77_a").attr('checked', false));
                          jQuery.uniform.update(jQuery("#radio77_b").attr('checked', false));
                      }
                  });
              } else {
                  $('#ListBox6').html('<option value="">Select Major Group</option>');
              }
          });
          $('#ListBox6').bind('change', function () {
              var SubMajor1 = $(this).val();
              if (SubMajor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "3",
                          id: SubMajor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox7').html('');
                          $('#ListBox8').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox7').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox7').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox7').bind('change', function () {
              var Minor1 = $(this).val();
              if (Minor1) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "4",
                          id: Minor1,
                          type: "tools"
                      },
                      success: function (data) {
                          var res = JSON.parse(data);
                          var dataLen = res.length;
                          $('#ListBox8').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox8').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
                          }
                      }
                  });
              } else {
                  $('#ListBox8').html('<option value="">Select Sub Major Group</option>');
              }
          });
          $('#ListBox8').bind('change', function () {
              var Unit1 = $(this).val();
              //alert("ds");
              $('#TextBox_C35').val(Unit1);
              $('#TextBox_C35').css('background', 'green');
              $('#TextBox_C35').css('color', 'white');


          });
          $('#radio77').bind('change', function () {
              var code = $(this).val();
              $('#TextBox_C35').val(code);
              $('#ListBox8').prop('disabled', 'disabled');
              $('#ListBox7').prop('disabled', 'disabled');
              $('#ListBox6').prop('disabled', 'disabled');

          });
          $('#radio77_b').bind('change', function () {
              var code = $(this).val();
              $('#TextBox_C35').val(code);
              $('#ListBox8').prop('disabled', 'disabled');
              $('#ListBox7').prop('disabled', 'disabled');
              $('#ListBox6').prop('disabled', 'disabled');
          });
          $('#TextBox_C35').keyup(function () {
              var value = $(this).val();
              if (value.length == 4) {
                  $.ajax({
                      type: 'POST',
                      url: "WebForm3.aspx",
                      data: {
                          action: "9",
                          id: value,
                          type: "tools"
                      },
                      success: function (data) {
                          //alert alert(data);
                          if (data != "") {
                              var res = JSON.parse(data);
                              var dataLen = res.length;
                              if (dataLen > 0) {
                                  $('#ListBox6').html('');
                                  $('#ListBox7').html('');
                                  $('#ListBox8').html('');
                                  $('#TextBox_C35').css('border-color', 'green');
                                  $('#TextBox_C35').css('background', 'green');
                                  $('#TextBox_C35').css('color', 'white');
                                  $('#ListBox8').append('<option value="' + res[0].ID + '">' + res[0].Unit + '</option>');
                                  for (i = 0; i < dataLen; i++) {
                                      // alert(res[i].Unit);
                                      $('#ListBox7').append('<option value="' + res[i].ID3 + '">' + res[i].Minor + '</option>');
                                      $('#ListBox6').append('<option value="' + res[i].ID2 + '">' + res[i].Sub + '</option>');
                                     // $('#ListBox5').append('<option value="' + res[i].ID1 + '">' + res[i].Major + '</option>');
                                  }
                                  $("#ListBox5").val(res[0].ID1);
                                  $('#ListBox8').prop('disabled', false);
                                  $('#ListBox7').prop('disabled', false);
                                  $('#ListBox6').prop('disabled', false);
                                  jQuery.uniform.update(jQuery("#radio7_a").attr('checked', false));
                                  jQuery.uniform.update(jQuery("#radio7_b").attr('checked', false));
                              }
                          }
                          else {
                              $('#TextBox_C35').css('border-color', 'red');
                              $('#TextBox_C35').css('background', 'red');
                              $('#TextBox_C35').css('color', 'white');
                          }
                      }
                  });
              }
              else {
                  $('#TextBox_C35').css('border-color', 'red');
                  $('#TextBox_C35').css('background', 'red');
                  $('#TextBox_C35').css('color', 'white');
              }
          });
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
              $.jGrowl("You resetted the form.", { theme: 'error' });
          });

          /*
           * Datepicker
           */
          $("#datepicker").datepicker();
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
