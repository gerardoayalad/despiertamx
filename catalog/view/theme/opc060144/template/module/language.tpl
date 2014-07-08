<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="language">
  	   <div class="show">
		<span class="language_label"><?php echo $text_language; ?> - </span>
		<?php foreach ($languages as $language) { ?>
            <?php if ($language['code'] == $language_code) { ?>
				<a>
				<span class="lang_image">
					<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" />
				</span>
			 	</a> 
            <?php } ?>
            <?php } ?>
			<span class="top_downarrow">&nbsp;</span>
 	 </div>
   <div class="language_div">
    <?php foreach ($languages as $language) { ?>
    	<a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().submit();"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />  <?php echo $language['name']; ?></a>
    <?php } ?>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</div>
  </div>
</form>
<?php } ?>
