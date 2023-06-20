<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Xenith.login" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8"/>
<title>Welcome to Hotel Eden Valley !</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content=""/>
<meta name="author" content=""/>
<!--Bootstrap-start-->
<!-- Le styles -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
<!--<style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>-->
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="bootstrap/js/html5shiv.js"></script>
    <![endif]-->
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap/ico/apple-touch-icon-144-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap/ico/apple-touch-icon-114-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap/ico/apple-touch-icon-72-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" href="bootstrap/ico/apple-touch-icon-57-precomposed.png"/>
<link rel="shortcut icon" href="bootstrap/ico/favicon.png">
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.9.1.min.js"></script>
<!--Bootstrap-end-->
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background-color:#F1EFE2">
<div id="bodycontainer" class="container" style="border:1px solid #84978F;background-color: #F5F5F5; margin:0px;
border-radius: 4px 0; margin:0 auto;">
  <div id="header"> 
  <img src="images/logo1.png" alt="logo">
  <div style="clear:both;"></div>
  </div>
  <div style="clear:both;"></div>
 <div id="dividebar" class="dividebar"></div>
  <div style="clear:both;"></div>

    
<div class="row-fluid">
  <div style="margin:0 auto; width:500px; border:1px solid #666;margin-top:100px;margin-bottom:100px;"> 
  <p class="block-heading" style="padding:5px; border-bottom:1px solid #666; background-color:#CCC; color:#666">
  <strong>Sign In</strong>
  </p>
    <div style="margin-top:20px;">
      <form id="form1" runat="server" class="form-horizontal" method="post">
        <div class="control-group">
          <label class="control-label" for="username">Username</label>
          <div class="controls">
              <asp:TextBox ID="inputusername" runat="server" placeholder="Username"></asp:TextBox>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="inputpassword">Password</label>
          <div class="controls">
            <asp:TextBox ID="inputpassword" runat="server" placeholder="Password" 
                  TextMode="Password"></asp:TextBox>
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <asp:Button ID="Signin" runat="server"
                Text="Sign in" class="btn" onclick="Signin_Click" />
          </div>
        </div>
      </form>
    </div>
    <div style="clear:both;"></div>
    <p class="block-heading" style="border-top:1px solid #CCC; border-bottom:1px solid #CCC; background-color:#F1F0FF;color:#336699; text-align:center; font-size:14px; margin-top:30px;">
  <strong><span style="color:#443266">Xenith</span> - Hotel Services Management Suite</strong>
  </p>
  </div>
</div>    
    

  <div class="row">
    <div style="margin-left:30px;">
      <div id="dividebar" class="dividebar"></div>
      <div class="clear"></div>
      <div id="footer" class="footer">Copyright &copy; 2013 Hotel Eden Valley</div>
    </div>
  </div>
  <script type="text/javascript" src="bootstrap/js/bootstrap-transition.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-alert.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-modal.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-dropdown.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-scrollspy.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-tab.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-tooltip.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-popover.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-button.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-collapse.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-carousel.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap-typeahead.js"></script> 
  <script type="text/javascript" src="bootstrap/js/bootstrap.file-input.js"></script> 
  <script type="text/javascript">      $(document).ready(function () { $('input[type=file]').bootstrapFileInput(); });</script> 
</div>
</body>
</html>
