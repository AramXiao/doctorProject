<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<% String ctx = request.getContextPath();%>
<link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="slider/flexslider.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
<!-- Modernizr -->
<script src="slider/modernizr.js"></script>
<!-- JavaScripts -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.singlePageNav.js"></script>
<script src="js/templatemo_custom.js"></script>
<script defer src="slider/jquery.flexslider.js"></script>
<!-- HTML 5 shim for IE backwards compatibility -->
<!-- [if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
  </script>
  <![endif]-->
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