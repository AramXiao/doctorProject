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
<footer>
<div class="container">
<div class="row">
<div class="col col-md-12 col-sm-6 col-xs-6 col-xxs"><span
	class="footer-title">皮肤健康顾问</span></div>
</div>
<div class="row">
<div style="text-align: right" class="col col-md-12 col-sm-6 col-xs-6 col-xxs">
<div id="templatemo_copyright">Copyright © 2016 <a href="#">REX工作室</a>
</div>
</div>
</div>
<div class="row">
<div class="col col-md-12 col-sm-6 col-xs-6 col-xxs"><a href="#"
	id="go-top">
<div class="back_to_top">返回顶部</div>
</a></div>
</div>
</div>
</div>
</footer>




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