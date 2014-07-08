<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency">
  	<div class="show">
 		 <span class="currency_label"><?php echo $text_currency; ?> -</span> 
  		<?php foreach ($currencies as $currency) { ?>
            <?php if ($currency['code'] == $currency_code) { ?>
             
			<?php if ($currency['symbol_left']) { ?>
    			<a title="<?php echo $currency['title']; ?>"><span class="lang_image"><?php echo $currency['symbol_left']; ?></span></a>
		    <?php } else { ?>
    			<a title="<?php echo $currency['title']; ?>"><span class="lang_image"><?php echo $currency['symbol_right']; ?></span></a>
    		<?php } ?>
			 
			
            <?php } ?>
         <?php } ?>  
		 <span class="top_downarrow">&nbsp;</span> 
  </div>
  <div class="currency_div">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_left'].' - '. $currency['title']; ?></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>"><?php echo $currency['symbol_right'].' - '. $currency['title']; ?></a>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().submit();"><?php echo $currency['symbol_left'].' - '. $currency['title']; ?></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().submit();"><?php echo $currency['symbol_right'].' - '. $currency['title']; ?></a>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
  </div>
</form>
<?php } ?>
