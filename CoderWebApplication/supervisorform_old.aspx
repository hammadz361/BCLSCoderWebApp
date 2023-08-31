<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="supervisorform_old.aspx.cs" Inherits="CoderWebApplication.WebFormsupervisorf" %>
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

  <title>KPCLS :: Unicef</title>
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
				<span class="messages">Hello <asp:Label ID="LoginName" runat="server" Text="Label"></asp:Label></span><a href="logout.aspx" class="button red">Logout</a> 
				
				</p>
		</div> <!--! end of #user-info -->
		
    </header></div> <!--! end of #header -->
    
    <div class="fix-shadow-bottom-height"></div>
	
    
    <!-- Begin of #main -->
    <div id="main" role="main" style="margin-left:0px">
    	
    	<!-- Begin of titlebar/breadcrumbs -->
		<div id="title-bar">
			<ul id="breadcrumbs">
				<li><a href="supervisor.aspx" title="Home">Dashboard</a></li>
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
						<h1>Coding </h1><span></span>
					</div>
					<form id="form1" class="block-content form" runat="server">
						<fieldset>
							<legend>A22</legend>
							<div class="_50">
								<p><label for="textfield1">A22a</label>
                                    <asp:TextBox ID="TextBox1" runat="server" disabled="true"></asp:TextBox>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A22b</label>
                                    <asp:TextBox ID="TextBox2"  style="height:150px !important" runat="server" disabled="true"></asp:TextBox>
                                    </p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox1_a"  style="height:150px !important" runat="server"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox1_b"  style="height:150px !important" runat="server">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox1_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox1_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio1" value="3999" name="radio" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio1_b" value="3998" name="radio" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						<fieldset>
							<legend>A44</legend>
							<div class="_50">
								<p><label for="textfield1">A44a</label>
                                    <asp:TextBox ID="TextBox3" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A44b</label>
                                    <asp:TextBox ID="TextBox4" runat="server" disabled="true"></asp:TextBox>

								</p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox2_a" runat="server"  style="height:150px !important"></asp:ListBox>
                                    </p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Sub-Major Group</label>
                                    <asp:ListBox ID="ListBox2_b" runat="server"  style="height:150px !important">
                                    </asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Minor Group</label>
                                    <asp:ListBox ID="ListBox2_c" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                            <div class="_25">
								<p><label for="textfield2">Unit Group</label>
                                    <asp:ListBox ID="ListBox2_d" runat="server"  style="height:150px !important"></asp:ListBox></p>
							</div>
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio2" value="3999" name="radio2" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio2_b" value="3998" name="radio2" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						
						<fieldset>
							<legend>C21</legend>
							<div class="_50">
								<p><label for="textfield1">C21a</label>
                                    <asp:TextBox ID="TextBox5" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C21b</label>
                                    <asp:TextBox ID="TextBox6" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_25">
								<p><label for="textfield2">Major Group</label>
                                    <asp:ListBox ID="ListBox3_a" runat="server"  style="height:150px !important"></asp:ListBox>
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
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio3" value="3999" name="radio3" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio3_b" value="3998" name="radio3" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						<fieldset>
							<legend>A21</legend>
							<div class="_50">
								<p><label for="textfield1">A21a</label>
                                    <asp:TextBox ID="TextBox7" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A21b</label>
                                    <asp:TextBox ID="TextBox8" runat="server" disabled="true"></asp:TextBox></p>
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
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio4_a" value="3999" name="radio4" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio4_b" value="3998" name="radio4" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						<fieldset>
							<legend>A43</legend>
							<div class="_50">
								<p><label for="textfield1">A43a</label>
                                   <asp:TextBox ID="TextBox9" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">A43b</label>
                                    <asp:TextBox ID="TextBox10" runat="server" disabled="true"></asp:TextBox></p>
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
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio5" value="3999" name="radio5" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio5_b" value="3998" name="radio5" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						
						<fieldset>
							<legend>C20</legend>
							<div class="_50">
								<p><label for="textfield1">C20a</label>
                                    <asp:TextBox ID="TextBox11" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C20b</label>
                                    <asp:TextBox ID="TextBox12" runat="server" disabled="true"></asp:TextBox></p>
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
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio6" value="3999" name="radio6" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio6_b" value="3998" name="radio6" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></p>
							</div>

						</fieldset>
						
						
						
						<fieldset>
							<legend>C38</legend>
							<div class="_100">
								<p><label for="textfield1">C38_1_11</label>
                                    <asp:TextBox ID="TextBox13" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							
							<div class="_50">
								<p><label for="textfield2">C38_2_11</label>
                                    <asp:TextBox ID="TextBox14" runat="server" disabled="true"></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield2">C38_2_11_2nd</label>
                                    <asp:TextBox ID="TextBox15" runat="server" disabled="true"></asp:TextBox></p>
							</div>
                            <div class="_50">
								<p><label for="textfield2">C38_3_11</label>
                                   <asp:TextBox ID="TextBox16" runat="server" disabled="true"></asp:TextBox></p>
							</div>
							 <div class="_50">
								<p><label for="textfield2">C38_3_11_2nd</label>
                                    <asp:TextBox ID="TextBox17" runat="server" disabled="true"></asp:TextBox></p>
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
                             <div class="_50">
                            <p>
								<label><div class="radio"><span><input type="radio" id="radio7" value="3999" name="radio7" style="opacity: 0;"></span></div> Text Review Required</label>
								<label><div class="radio"><span><input type="radio" id="radio7_b" value="3998" name="radio7" style="opacity: 0;"></span></div> Unclear Text</label>
							</p>
                                 </div>
                            <div class="_50">
								<p><label for="textfield1">Code</label>
                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></p>
							</div>
                            <asp:HiddenField ID="HiddenFieldA22" runat="server" />
                            <asp:HiddenField ID="HiddenFieldA44" runat="server" />
                            <asp:HiddenField ID="HiddenFieldC21" runat="server" />
                            <asp:HiddenField ID="HiddenFieldA21" runat="server" />
                            <asp:HiddenField ID="HiddenFieldA43" runat="server" />
                            <asp:HiddenField ID="HiddenFieldC20" runat="server" />
                            <asp:HiddenField ID="HiddenFieldC38" runat="server" />
						</fieldset>						
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
          $('#ListBox1_a').bind('change', function () {
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
                          $('#radio1_a').prop('checked', false);
                          $('#radio1_b').prop('checked', false);
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
                          $('#ListBox1_d').html('');
                          for (i = 0; i < dataLen; i++) {
                              //  alert(res[i].name);
                              $('#ListBox1_d').append('<option value="' + res[i].value + '">' + res[i].name + '</option>');
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
          //2nd
          $('#ListBox2_a').bind('change', function () {
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
                          $('#radio2_a').prop('checked', false);
                          $('#radio2_b').prop('checked', false);
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

          });
          $('#radio2').bind('change', function () {
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
          //3rd
          $('#ListBox3_a').bind('change', function () {
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
                          $('#radio3_a').prop('checked', false);
                          $('#radio3_b').prop('checked', false);
                      }
                  });
              } else {
                  $('#ListBox3_b').html('<option value="">Select Major Group</option>');
              }
          });
          $('#ListBox3_b').bind('change', function () {
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

          });
          $('#radio3').bind('change', function () {
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
                          $('#radio4_a').prop('checked', false);
                          $('#radio4_b').prop('checked', false);
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

          });
          $('#radio4').bind('change', function () {
              var code = $(this).val();
              $('#ListBox4_a').disabled = true;
              $('#TextBox21').val(code);
              $('#ListBox4_d').prop('disabled', 'disabled');
              $('#ListBox4_c').prop('disabled', 'disabled');
              $('#ListBox4_b').prop('disabled', 'disabled');

          });
          $('#radio1_b').bind('change', function () {
              var code = $(this).val();
              $('#TextBox21').val(code);
              $('#ListBox4_d').prop('disabled', 'disabled');
              $('#ListBox4_c').prop('disabled', 'disabled');
              $('#ListBox4_b').prop('disabled', 'disabled');
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
                          $('#radio5_a').prop('checked', false);
                          $('#radio5_b').prop('checked', false);
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

          });
          $('#radio5').bind('change', function () {
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
                          $('#radio6_a').prop('checked', false);
                          $('#radio6_b').prop('checked', false);
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

          });
          $('#radio6').bind('change', function () {
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
                          $('#radio7_a').prop('checked', false);
                          $('#radio7_b').prop('checked', false);
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

          });
          $('#radio7').bind('change', function () {
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
