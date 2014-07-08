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
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ancart/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ancart/stylesheet/responsive.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700&amp;subset=latin,vietnamese,latin-ext" rel="stylesheet" type="text/css">
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ancart/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/ancart/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<!--[if lt IE 9]>
   <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript">
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
</script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<?php 
if ($categories) {
    $org_html = "";
    $small_html = "";
    foreach($categories as $category)
    {
			if($category['children'])
        { 
        $org_html .= "<li><a href='".$category['href']."' class='expan'>".$category['name']."</a>";
		} else {
		
        $org_html .= "<li><a href='".$category['href']."' >".$category['name']."</a>";
		}
        $small_html .= "<option value='".$category['href']."'>".$category['name']."</option>";
        if($category['children'])
        {
            $org_html .= "<div>";
            for ($i = 0; $i < count($category['children']);) 
            {
                $org_html .= "<ul>";
                $j = $i + ceil(count($category['children']) / $category['column']);
                for (; $i < $j; $i++) 
                    if (isset($category['children'][$i])) 
                    {
                        $org_html .= "<li><a href='".$category['children'][$i]['href']."'>".$category['children'][$i]['name']."</a></li>";
                        $small_html .= "<option value='".$category['children'][$i]['href']."'> --- ".$category['children'][$i]['name']."</option>";
                    }
                $org_html .= "</ul>";
            }
            $org_html .= "</div>";
        }
        $org_html .= "</li>";
    }
    $org_html = "<div id='menu'><ul class='org_cat'>$org_html</ul></div>";
	$small_html = "<div class='small_cat'><div><img src='catalog/view/theme/ancart/image/menu2.png'/></div>
	<select onChange='location = this.value'>
		<option></option>
		<option value='$home'>$text_home</option>
        <option value='$wishlist' id='wishlist-total'>$text_wishlist</option>
        <option value='$account'>$text_account</option>
        <option value='$shopping_cart'>$text_shopping_cart</option>
        <option value='$checkout'>$text_checkout</option>
		<option>------------</option>
		$small_html
		</select></div>";
} 
?>
<div id="container">
<?php echo $small_html;?>
<div id="header">
	<div class="toplinks">
    <div><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
</div>
<div class="wrapper">
<?php echo $org_html;?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/ancart/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>