<div id="carousel-<?php echo $module; ?>" class="banners-slider-carousel">
	<div class="customNavigation">
		<a class="btn prev">&nbsp;</a>
		<a class="btn next">&nbsp;</a>
	</div>
  <div class="product-carousel" id="module-<?php echo $module; ?>-carousel">
    <?php foreach ($banners as $banner) { ?>
    	<div class="slider-item">
		<div class="product-block">
		<div class="product-block-inner">
			<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
		</div></div></div>
    <?php } ?>
  </div>
</div>