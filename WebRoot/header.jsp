<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> 
  <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en"> 
  <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<title>您的皮肤健康顾问</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="author" content="templatemo">
<meta charset="UTF-8">

<!-- CSS Bootstrap & Custom -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="slider/flexslider.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">

<!-- Modernizr -->
<script src="slider/modernizr.js"></script>
<!-- HTML 5 shim for IE backwards compatibility -->
<!-- [if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
  </script>
  <![endif]-->
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">
<div class="row"><!-- Brand and toggle get grouped for better mobile display -->
<div class="col-md-2 col-sm-2 col-xs-12">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse"
	data-target=".navbar-collapse"><span class="sr-only">Toggle
navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
<span class="icon-bar"></span></button>
<div class="navbar-brand"><a href="index.jsp"><span>吴医生</span></a>
<span class="title-bottom">您的皮肤健康顾问</span></div>
</div>
</div>


<div class="col-md-10 col-sm-10 col-xs-12">
<div class="navbar-collapse collapse menu">
<ul class="nav navbar-nav navbar-right">
	<li><a href="index.jsp"><i class="fa fa-home"></i>主页</a></li>
	<li><a href="articles.jsp"><i class="fa fa-cogs"></i>研究文章</a></li>
	<li><a href="message.jsp"><i class="fa fa-user"></i>病者留言</a></li>
	<li><a href="contact.jsp"><i class="fa fa-briefcase"></i>联系方式</a></li>
	<!--<li><a href="#blog"><i class="fa fa-pencil"></i>医生</a></li>-->
	<!--<li><a href="#contact"><i class="fa fa-envelope"></i>Contact</a></li>-->
</ul>
</div>
<!-- /.navbar-collapse --></div>
</div>
<!-- /.row --></div>
</nav>




<!-- JavaScripts -->
<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.singlePageNav.js"></script>
<script src="js/templatemo_custom.js"></script>
<script defer src="slider/jquery.flexslider.js"></script>

<script type="text/javascript">

    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
          //$('.menu').singlePageNav();
        }
      });
    });

    $('#go-top').click(function(event) {
      event.preventDefault();
      jQuery('html, body').animate({scrollTop: 0}, 1000);
      return false;
    });

  </script>
</body>
</html>