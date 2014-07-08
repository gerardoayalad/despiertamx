<script type="text/javascript">
$('head').append('<meta fb:admins="<?php echo $adminuid; ?>">');
$('head').append('<meta fb:app_id="<?php echo $appid; ?>">');
</script>
<?php if ($width == 'auto') { ?>
<div width="100%" id="fbcomment-container"></div>
<script type="text/javascript">
$(document).ready(function(){

    width_percent = $('#fbcomment-container').width();
    fbxml = '<fb:comments data-href="<?php echo $siteurl; ?>" data-num-posts="<?php echo $numpost; ?>" width="' + width_percent  + 'px"  data-colorscheme="<?php echo $colorscheme; ?>"></fb:comments>';

    $('#fbcomment-container').append(fbxml);
});
</script>
<?php } else { ?>
<div class="fb-comments" data-href="<?php echo $siteurl; ?>" data-num-posts="<?php echo $numpost; ?>" data-width="<?php echo $width; ?>"  data-colorscheme="<?php echo $colorscheme; ?>"></div>
<?php } ?>