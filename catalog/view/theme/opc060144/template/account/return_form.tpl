<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $text_description; ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_order; ?></h2>
    <div class="content">
		<table class="form">
			<tr>
				<td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
				<td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />
					<br />
					<?php if ($error_firstname) { ?>
					<span class="error"><?php echo $error_firstname; ?></span>
					<?php } ?>
				</td>
			</tr>
        	<tr>
				<td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
				<td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />
					<br />
					<?php if ($error_lastname) { ?>
					<span class="error"><?php echo $error_lastname; ?></span>
					<?php } ?>
				</td>
			</tr>
        	<tr>
				<td><span class="required">*</span> <?php echo $entry_email; ?></td>
				<td><input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
					<br />
					<?php if ($error_email) { ?>
					<span class="error"><?php echo $error_email; ?></span>
					<?php } ?>
				</td>
			</tr>
        	<tr>
				<td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
				<td><input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />
					<br />
					<?php if ($error_telephone) { ?>
					<span class="error"><?php echo $error_telephone; ?></span>
					<?php } ?>
				</td>
        	</tr>
      		<tr>
				<td><span class="required">*</span> <?php echo $entry_order_id; ?></td>
				<td><input type="text" name="order_id" value="<?php echo $order_id; ?>" class="large-field" />
					<br />
					<?php if ($error_order_id) { ?>
					<span class="error"><?php echo $error_order_id; ?></span>
					<?php } ?>
				</td>
        	</tr>
			<tr>
				<td><?php echo $entry_date_ordered; ?></td>
				<td><input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="large-field date" /></td>
			</tr>
        </table>
    </div>
     
    <h2><?php echo $text_product; ?></h2>
    <div id="return-product">
      <div class="content">
		  <table class="form">
			<tr>
				<td><span class="required">*</span> <?php echo $entry_product; ?></td>
				<td><input type="text" name="product" value="<?php echo $product; ?>" />
					<br />
					<?php if ($error_product) { ?>
					<span class="error"><?php echo $error_product; ?></span>
					<?php } ?>
				</td>
			 </tr>
			 <tr>
				<td><span class="required">*</span><?php echo $entry_model; ?></td>
				<td><input type="text" name="model" value="<?php echo $model; ?>" />
					<br />
					<?php if ($error_model) { ?>
					<span class="error"><?php echo $error_model; ?></span>
					<?php } ?>
				</td>
			</tr>
			<tr>
				<td><?php echo $entry_quantity; ?></td>
				<td><input type="text" name="quantity" value="<?php echo $quantity; ?>" /></td>
			 </tr>
		
			<tr>
				<td><span class="required">*</span><?php echo $entry_reason; ?></td>
				<td>
					
					  <?php foreach ($return_reasons as $return_reason) { ?>
					  <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>					 
						<input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
						<label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
					  	</br>
					  <?php } else { ?>
					  <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" />
						<label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
					  	 </br>
					  <?php  } ?>
					  <?php  } ?>
				
					<?php if ($error_reason) { ?>
					<span class="error"><?php echo $error_reason; ?></span>
					<?php } ?>
         		</td>
			</tr>
			<tr>
				<td><?php echo $entry_opened; ?></td>
				<td>
					<?php if ($opened) { ?>
					<input type="radio" name="opened" value="1" id="opened" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="opened" value="1" id="opened" />
					<?php } ?> 
					<label for="opened"><?php echo $text_yes; ?></label>
					</br>
					<?php if (!$opened) { ?>
					<input type="radio" name="opened" value="0" id="unopened" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="opened" value="0" id="unopened" />
					<?php } ?>
					<label for="unopened"><?php echo $text_no; ?></label>
				</td>
			</tr>
			<tr>
				<td><?php echo $entry_fault_detail; ?></td>
				<td><textarea name="comment" cols="150" rows="6"><?php echo $comment; ?></textarea></td>
          	</tr>
          	<tr>
				<td><?php echo $entry_captcha; ?></td>
				<td>
					<input type="text" name="captcha" value="<?php echo $captcha; ?>" class="captch_input" />					 
					<img src="index.php?route=account/return/captcha" alt="" />
					<?php if ($error_captcha) { ?>
					<span class="error"><?php echo $error_captcha; ?></span>
					<?php } ?>
				</td>
			</tr>
			</table>
          
        </div> 
    </div>
    <?php if ($text_agree) { ?>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right"><?php echo $text_agree; ?>
        <?php if ($agree) { ?>
        <input type="checkbox" name="agree" value="1" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="agree" value="1" />
        <?php } ?>
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
    <?php } else { ?>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
      </div>
    </div>
    <?php } ?>
  </form>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>