<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/despierta/stylesheet/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/despierta/stylesheet/style.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/functions.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery-video-ytb.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
</head>
<body>
<?php echo $google_analytics; ?>
<?php 
//Video Options for Randomize Background
    $video = ['xmEhX5Ourzw','xmEhX5Ourzw','xmEhX5Ourzw'];
    $videoUrl = "http://www.youtube.com/watch?v=".$video[rand(0,2)]."";
    $dataProperty = "{videoURL:'".$videoUrl."',containment:'body',autoPlay:true, mute:true, startAt:1000, opacity:1}";
?>
<div class="navigation-top">
  <nav class="navbar navbar-default" role="navigation" id="bar-cart">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <?php if (!$logged) { ?>
          <?php echo $text_welcome; ?>
          <?php } else { ?>
          <?php echo $text_logged; ?>
          <?php } ?>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <form class="navbar-form navbar-left" role="search">
          <div class="form-group">
              <?php if ($filter_name) { ?>
              <input type="text" name="filter_name" class="form-control" value="<?php echo $filter_name; ?>" />
              <?php } else { ?>
              <input type="text" name="filter_name" class="form-control" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
              <?php } ?>
          </div>
          <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> <?php echo $text_search ?></button>
          </form>

          <?php if ($logged) { ?>
          <li>
            <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
          </li>
          <?php } ?>
          <?php echo $cart; ?>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</div>
<div class="header">
  <div class="mask"></div>
  <a id="bgndVideo" class="player mb_YTVPlayer" data-property="<?php echo $dataProperty; ?>" style="display: none; background-image: none; background-position: initial initial; background-repeat: initial initial;" title="Despierta MX">Intro despierta</a>
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <?php if ($logo) { ?>
        <div id="logo">
          <a href="<?php echo $home; ?>">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
          </a>
        </div>
        <?php } ?>
      </div>
      <div class="col-lg-7 col-lg-offset-1">
        <?php echo $header_slideshow; ?>
      </div>
    </div>
  </div>
</div>

<div class="navigation">
  <nav class="navbar navbar-default" role="navigation" id="bar-cart">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <?php if ($categories) { ?>
            <?php foreach ($categories as $category) { ?>
            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
              <?php if ($category['children']) { ?>
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul class="dropdown-menu">
                  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                  <?php for (; $i < $j; $i++) { ?>
                  <?php if (isset($category['children'][$i])) { ?>
                  <li>
                    <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                  </li>
                  <?php } ?>
                  <?php } ?>
                </ul>
                <?php } ?>
              <?php } ?>
            </li>
            <?php } ?>
          <?php } ?>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</div>
<div id="notification"></div>
