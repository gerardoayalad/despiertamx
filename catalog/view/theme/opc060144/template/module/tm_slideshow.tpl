<div class="flexslider">
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
	<li>
    	<?php if ($banner['link']) { ?>
		<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
		<?php } else { ?>
		<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
		<?php } ?>
	</li>
    <?php } ?>
  </ul>
</div>
