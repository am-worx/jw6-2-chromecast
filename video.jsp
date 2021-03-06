<%@ page import="com.ieee.util.amazonS3.SignedUrl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SignedUrl signedUrl = new SignedUrl();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JW Player</title>
    <link rel="stylesheet" href="css/styles.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>

    <script type="text/javascript" src="jwplayer6.js"></script>
    <%--<script src="http://jwpsrv.com/library/YOUR_JW_PLAYER_ACCOUNT_TOKEN.js" ></script>--%>
    <script type="text/javascript">
        jwplayer.key="7csMG5cdwTcCdPgw1HD0VWPBk6GFGZD+znmEUg==";
    </script>
    <script type="text/javascript" src="player.js"></script>

    <!-- Fonts -->
    <link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/fonts/pt-sans/stylesheet.css" type="text/css"/>

    <script type="text/javascript">
        var signedUrl = <% out.print("'"+signedUrl.getSignedUrl()+"'");%>;
    </script>


</head>

<body>
<div id="wrapper">
<div id="header">
    <div id="header-content">
        <div class="width-2">
            <ul class="navbar-nav float-left">
                <li class="no-padding-left"><a href="#">IEEE.org</a></li>
                <li><a href="#">IEEE <i>Xplore</i> Digital Library</a></li>
                <li><a href="#">IEEE Standards</a></li>
                <li><a href="#">IEEE Spectrum</a></li>
                <li class="last"><a href="#">More Sites</a></li>
            </ul>
            <ul class="navbar-nav float-right">
                <li><a href="#">Member Sign In</a></li>
                <li class="last no-padding-right"><a href="#">Join IEEE</a></li>
            </ul>
        </div><!--.header-content-wrapper-->
    </div> <!--#header-content-->
    <div class="header_container width-2">
        <div class="logo"><a href="#"></a></div>
        <div class="header_infotext">
            <div class="status_acs">Tune in to where technology lives.</div>
        </div> <!-- .header_infotext -->
        <div class="ieee_logo_header_right">
            <a href="http://www.ieee.org/" target="_blank"><img src="images/header_ieee_logo_right.gif" width="170" height="50" alt="IEEE"></a>
        </div>
    </div> <!-- .header_container -->

</div> <!--#header-->


<div class="container-menu clearfix width-1">
<ul id="topnav-menu">
    <li><a href="#">Home</a></li>
    <li><a href="#">About IEEE.tv</a></li>
    <li><a href="#" class="dropdown" data-tab=".dropdown-series">Series </a>

    </li>
    <li><a href="#" class="dropdown" data-tab=".dropdown-channels">Channels </a>
    </li>
    <li><a href="#" class="dropdown" data-tab=".dropdown-events">Events </a>
    </li>
    <li><a href="#">Translation</a></li>
    <li><a href="#">Feedback</a></li>
</ul>

<div class="box-search">
    <a href=""><i class="fa fa-rss"></i></a>
    <input name="search" type="text" placeholder="Search">
    <a href="" class="search-icon"><i class="fa fa-search"></i></a>
</div>

<div class="dropdown_5columns">
<div class="dropdown dropdown-series clearfix">
<div class="left-side-menu">
    <ul>
        <li class="spectrum"><a href="" data-tab=".tab-spectrum">IEEE Spectrum Reports</a></li>
        <li class="access"><a href="" data-tab=".tab-access" >IEEE Access</a></li>
        <li class="specials"><a href="" data-tab=".tab-specials">IEEE.tv Specials</a></li>
        <li class="education"><a href="" data-tab=".tab-education">Education Activities</a></li>
        <li class="technical"><a href="" data-tab=".tab-technical">Technical Tours</a></li>
        <li class="authors"><a href="" data-tab=".tab-authors">Meet the Authors</a></li>
        <li class="products"><a href="" data-tab=".tab-products">IEEE Products</a></li>
        <li><a href="go_away" data-tab=".tab-null">History</a></li>
        <li><a href="">Careers</a></li>
        <li><a href="">Technology</a></li>
        <li><a href="">Marketplace</a></li>
    </ul>
</div>

<div class="right-side-content">
<div class="tab tab-spectrum">
    <h4>IEEE.tv Spectrum Reports</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-access">
    <h4>IEEE.tv Access</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-specials">
    <h4>IEEE.tv Specials</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-education">
    <h4>IEEE.tv Education Activities</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-technical">
    <h4>IEEE.tv Technical Tours</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-authors">
    <h4>Meet the Authors</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-products">
    <h4>IEEE.tv Products</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
</div>
</div>
<div class="dropdown dropdown-channels clearfix">
<!--<div class="left-side-menu">-->
<!--<ul>-->
<!--<li><a href="">Communities</a></li>-->
<!--<li><a href="">Regions</a></li>-->
<!--<li><a href="">Societies</a></li>-->
<!--</ul>-->
<!--</div>-->
<div class="left-side-menu">
    <ul>
        <li class="spectrum"><a href="" data-tab=".tab-spectrum">IEEE Spectrum Reports</a></li>
        <li class="access"><a href="" data-tab=".tab-access" >IEEE Access</a></li>
        <li class="specials"><a href="" data-tab=".tab-specials">IEEE.tv Specials</a></li>
        <li class="education"><a href="" data-tab=".tab-education">Education Activities</a></li>
        <li class="technical"><a href="" data-tab=".tab-technical">Technical Tours</a></li>
        <li class="authors"><a href="" data-tab=".tab-authors">Meet the Authors</a></li>
        <li class="products"><a href="" data-tab=".tab-products">IEEE Products</a></li>
        <li><a href="">History</a></li>
        <li><a href="">Careers</a></li>
        <li><a href="">Technology</a></li>
        <li><a href="">Marketplace</a></li>
    </ul>
</div>

<div class="right-side-content">
<div class="tab tab-spectrum">
    <h4>IEEE.tv Spectrum Reports</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-access">
    <h4>IEEE.tv Access</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-specials">
    <h4>IEEE.tv Specials</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-education">
    <h4>IEEE.tv Education Activities</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-technical">
    <h4>IEEE.tv Technical Tours</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-authors">
    <h4>Meet the Authors</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
<div class="tab tab-products">
    <h4>IEEE.tv Products</h4>
    <p class="gray">Latest Video Programs</p>
    <a href="">
        <div class="thumbnail">
            <img src="images/5.png">
            <div class="caption">
                <p class="name-title">Kepler Is Dead.Long Live Kepler</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/1.png">
            <div class="caption">
                <p class="name-title">Douglas Coupland Analyzes Alcatel-Lucent in Kitten Clone</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/3.png">
            <div class="caption">
                <p class="name-title">Combing Sensors and Rewards for Good Behavior with "Nudge Engines"</p>
                <p><span class="gray	date">November 18, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/4.png">
            <div class="caption">
                <p class="name-title">Repair Cafe: Fixing the World, One Broken Toaster at a Time</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
    <a href="">
        <div class="thumbnail">
            <img src="images/2.png">
            <div class="caption">
                <p class="name-title">Nancy Kress: How Science Fiction Helps Us Rehearse for the Future</p>
                <p><span class="gray	date">November 19, 2014</span></p>
            </div>
        </div>
    </a>
</div>
</div>
</div>
<div class="dropdown dropdown-events clearfix">
    <div class="left-side-menu">
        <ul>
            <li><a href="">Events Hub</a></li>
            <li><a href="">Event Showcases</a></li>
            <li><a href="">Conference Highlights</a></li>
        </ul>
    </div>
</div>
</div>
</div> <!--#topnav-menu-->



<div class="breadcrumb width-2"><a href="/">Home</a> <i class="fa fa-angle-right"></i> <a href="/">Series</a> <i class="fa fa-angle-right"></i> <a href="/">IEEE Spectrum Reports</a></div>

<div class="main-video-section width-2">
    <div class="main-video"><div class="individual_video" id="individual_video"></div><!--<img src="images/main-thn.jpg" alt="" />--></div>
    <div class="main-video-menu">
        <ul>
            <li class="dropdown"><a class="active" data-tab=".video-tab-about" href="">About</a>
                <div class="video-menu-block video-tab-about" style="display:block;">
                    <h3>Rocky Road Ahead for Space Tourism</h3>
                    <span class="date">November 12, 2014</span>
                    <p class="big">Regulations may change in the wake of Virgin Galactic accident</p>
                </div>
            </li>

            <li class="dropdown"><a data-tab=".video-tab-share" href="">Share</a>
                <ul class="video-menu-block share video-tab-share">
                    <li class="dropdown"><a class="active" href="#" data-tab=".tab-link"><i class="fa fa-link"></i>Link</a>
                        <div class="share-block tab-link" style="display:block;">
                            <textarea name="textarea" rows="5" cols="42">https://ieeetv.ieee.org/IEEE_access/2014-jack-s-kilby-signal-processing-medal</textarea><br/>
                            <input class="btn float-right" type="submit" value="Copy" />
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" data-tab=".tab-embed"><i class="fa fa-code"></i>Embed</a>
                        <div class="share-block tab-embed">
                            Size: <input value="500" type="text" style="width:50px; margin:0 10px;" /> x 282<br />
                            <textarea name="textarea" rows="5" cols="42"><iframe width='500' height='282' src='//ieeetv.ieee.org/player/embed_play/128991/500' scrolling='no' ></iframe></textarea><br/>
                            <input class="btn float-right" type="submit" value="Copy" />
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" data-tab=".tab-post"><i class="fa fa-pencil-square-o"></i>Post</a>
                        <div class="share-block tab-post">
                            <p><strong>Post this video to one of this sites:</strong></p>
                            <ul class="add-this-tmp">
                                <li><a href=""><img src="images/icon-fb.png" width="30" height="30" alt="" /></a></li>
                                <li><a href=""><img src="images/icon-twitter.png" width="30" height="30" alt="" /></a></li>
                                <li><a href=""><img src="images/icon-google-plus.png" width="30" height="30" alt="" /></a></li>
                                <li><a href=""><img src="images/icon-linkedin.png" width="30" height="30" alt="" /></a></li>
                            </ul>
                            <a href="" class="more"><img src="images/icon-more.png" width="30" height="30" alt="" /></a> More [54]
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" data-tab=".tab-email"><i class="fa fa-envelope-o"></i>E-mail</a>
                        <div class="share-block tab-email">
                            <label for="subject">Subject:</label><br />
                            <input class="width-100" value="IEEE Spectrum Reports – Rocky Road Ahead for Space Tourism" type="text" /><br />
                            <label for="from" class="margin-top-5">From:</label><br />
                            <input class="width-100" value="Your e-mail" type="text" /><br />
                            <label for="to" class="margin-top-5">To:</label><br />
                            <input class="width-100" value="Separate each email with comma" type="text" /><br />
                            <label for="message" class="margin-top-5">Your message:</label><br />
                            <textarea name="textarea" rows="3" cols="42"></textarea><br />
                            <input class="btn float-right" type="submit" value="Send" />
                        </div>
                    </li>
                </ul>
            </li>

            <li class="dropdown"><a data-tab=".video-tab-download" href="">Download</a>
                <div class="video-menu-block video-tab-download">
                    <p><strong>IEEE.tv is made possible by the Members of IEEE.</strong></p>
                    <p class="orange" style="padding-left:20px;">This feauture is accessible to IEEE Members only, with an IEEE Account. If you are an IEEE member please sign in to enable this feature.</p>
                    <p>In addition to exclusive access to IEEE.tv programming, IEEE members have file download, transcript download, and can save favorite videos with myTV.</p>
                    <p>Discover all the benefits of IEEE membership!</p>
                    <p>Belong to the world's largest technical professional society.</p>
                    <div class="center"><input class="btn" type="submit" value="Join IEEE today" /></div>
                </div>
            </li>

            <li class="dropdown"><a data-tab=".video-tab-transcript" href="">Transcript</a>
                <div class="video-menu-block video-tab-transcript">
                    <p><strong>IEEE.tv is made possible by the Members of IEEE.</strong></p>
                    <p class="orange" style="padding-left:20px;">This feauture is accessible to IEEE Members only, with an IEEE Account. If you are an IEEE member please sign in to enable this feature.</p>
                    <p>In addition to exclusive access to IEEE.tv programming, IEEE members have file download, transcript download, and can save favorite videos with myTV.</p>
                    <p>Discover all the benefits of IEEE membership!</p>
                    <p>Belong to the world's largest technical professional society.</p>
                    <div class="center"><input class="btn" type="submit" value="Join IEEE today" /></div>
                </div>
            </li>

            <li class="dropdown last"><a data-tab=".video-tab-related" href="">Related</a>
                <ul class="video-menu-block video-tab-related">
                    <li>Six Years in the Making: Lego EV3 Robotic Kits arrive at CES 2013</li>
                    <li>Wireless Trends at CES 2013</li>
                    <li>Flying a Helicopter with Brain Waves - CES 2013</li>
                    <li>Is This NFC's Breakout Year? CES 2013</li>
                </ul>
            </li>
        </ul>
    </div><!--.main-video-menu-->
</div><!--.main-video-section-->

<div class="width-2">
    <div class="series-block">
        <div class="series-title"><span>NEW PROGRAMS</span> 20 videos</div>
        <a class="ArrowPrev"></a>
        <ul>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-1.jpg" alt="" /><span class="time">17:50</span>Famed Physicist Freeman Dyson Predicts the Future</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-2.jpg" alt="" /><span class="time">1:07:50</span>Chris Harrison's Time Machine</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-3.jpg" alt="" /><span class="time">1:27:50</span>Inspiring Engineers Since 1964</a></div>
                <span class="date">3 Nov</span>
            </li>
            <li class="last">
                <div class="thn"><a href="#"><img src="images/thn-4.jpg" alt="" /><span class="time">2:13:35</span>Organic Transit's Enclosed Tricycle Is Half Bike, Half Car</a></div>
                <span class="date">3 Nov</span>
            </li>
        </ul>
        <a class="ArrowNext"></a>
    </div> <!--.series-block-->


    <div class="series-block">
        <div class="series-title"><span>MOST POPULAR</span> 15 videos</div>
        <a class="ArrowPrev"></a>
        <ul>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-5.jpg" alt="" /><span class="time">17:50</span>Famed Physicist Freeman Dyson Predicts the Future</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-6.jpg" alt="" /><span class="time">1:07:50</span>Chris Harrison's Time Machine</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-7.jpg" alt="" /><span class="time">1:27:50</span>Inspiring Engineers Since 1964</a></div>
                <span class="date">3 Nov</span>
            </li>
            <li class="last">
                <div class="thn"><a href="#"><img src="images/thn-8.jpg" alt="" /><span class="time">2:13:35</span>Organic Transit's Enclosed Tricycle Is Half Bike, Half Car</a></div>
                <span class="date">3 Nov</span>
            </li>
        </ul>
        <a class="ArrowNext"></a>
    </div> <!--.series-block-->


    <div class="series-block">
        <div class="series-title"><span>SERIES</span> 15 videos</div>
        <a class="ArrowPrev"></a>
        <ul>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-9.jpg" alt="" /><span class="time">17:50</span>Famed Physicist Freeman Dyson Predicts the Future</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-10.jpg" alt="" /><span class="time">1:07:50</span>Chris Harrison's Time Machine</a></div>
                <span class="date">5 Nov</span>
            </li>
            <li>
                <div class="thn"><a href="#"><img src="images/thn-11.jpg" alt="" /><span class="time">1:27:50</span>Inspiring Engineers Since 1964</a></div>
                <span class="date">3 Nov</span>
            </li>
            <li class="last">
                <div class="thn"><a href="#"><img src="images/thn-12.jpg" alt="" /><span class="time">2:13:35</span>Organic Transit's Enclosed Tricycle Is Half Bike, Half Car</a></div>
                <span class="date">3 Nov</span>
            </li>
        </ul>
        <a class="ArrowNext"></a>
    </div> <!--.series-block-->
</div> <!--.width-2-->


<div id="footer">
    <div class="width-2">
        <div class="left-side">
            <ul>
                <li class="first"><a href="#">Advertise with us</a></li>
                <li class="last"><a href="#">Site Map</a></li>
            </ul>
            <p>&copy; Copyright 2006-2014 IEEE - All Rights Reserved</p>
        </div> <!--.left-side-->

        <div class="right-side">
            <ul>
                <li class="first"><a href="#">Terms &amp; Conditions</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li class="last"><a href="#">Nondiscrimination Policy</a></li>
            </ul>
            <p>Use of this web site signifies your agreement to the Terms of Use. For question or comments,<br />please contact the IEEE Webmaster.</p>
        </div><!--.right-side-->
    </div><!--.width-2-->
</div><!--#footer-->

</div> <!--#wrapper-->
</body>
</html>
