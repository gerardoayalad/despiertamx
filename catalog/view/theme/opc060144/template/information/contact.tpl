<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_location; ?></h2>
    <div class="contact-info"> 
	  	<div class="left">
			<div class="address">
				<label><?php echo $text_address; ?></label>
				<?php echo $store; ?> 
				<?php echo $address; ?> 
			 </div>
			 <div class="telephone">		   
				<?php if ($telephone) { ?>
				<label><?php echo $text_telephone; ?></label> 
				<?php echo $telephone; ?>
				<?php } ?>
			 </div>
			 <div class="fax">	
				<?php if ($fax) { ?>
				<label><?php echo $text_fax; ?></label> 
				<?php echo $fax; ?>
				<?php } ?>		   
			</div>
		</div>
		<div class="right">
			 <script type="text/javascript" src="http://www.webestools.com/google_map_gen.js?lati=37.0625&long=-95.6770&zoom=4&width=350&height=200&mapType=normal&map_btn_normal=yes&map_btn_satelite=yes&map_btn_mixte=yes&map_small=yes&marqueur=yes&info_bulle="></script>
		 </div> 
    </div>
    <h2><?php echo $text_contact; ?></h2>
    <div class="content">
	<table class="form">
		<tr>
			<td><?php echo $entry_name; ?></td>
			<td><input type="text" name="name" value="<?php echo $name; ?>" />
				<br />
				<?php if ($error_name) { ?>
				<span class="error"><?php echo $error_name; ?></span>
				<?php } ?>
			</td>	
		</tr>
    	<tr>
			<td><?php echo $entry_email; ?></td>
			<td><input type="text" name="email" value="<?php echo $email; ?>" />
				<br />
				<?php if ($error_email) { ?>
				<span class="error"><?php echo $error_email; ?></span>
				<?php } ?>
			</td>
		</tr>
    	<tr>
			<td><?php echo $entry_enquiry; ?></td>
			<td><textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
				<br />
				<?php if ($error_enquiry) { ?>
				<span class="error"><?php echo $error_enquiry; ?></span>
				<?php } ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $entry_captcha; ?></td>
			<td><input type="text" class="captch_input" name="captcha" value="<?php echo $captcha; ?>" />
				 
				<img src="index.php?route=information/contact/captcha" alt="" />
				<?php if ($error_captcha) { ?>
				<span class="error"><?php echo $error_captcha; ?></span>
				<?php } ?>
			</td>
		</tr>
	</table>
    </div>

    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
  <?php echo $content_bottom; ?>
  </div>
<?php echo $footer; ?>