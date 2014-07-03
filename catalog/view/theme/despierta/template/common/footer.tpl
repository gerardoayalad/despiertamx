<?php
  if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
         $baselink = $this->data['base'] = $this->config->get('config_ssl');
      } else {
        $baselink = $this->data['base'] = $this->config->get('config_url');
      }
?>
<div id="footer">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
          <h3><?php echo $text_social; ?></h3>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-6">
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&appId=245512982301524&version=v2.0";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <div class="fb-like-box" data-href="https://www.facebook.com/cafedespierta?fref=ts" data-width="100%" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="true" data-show-border="false"></div>
      </div>
      <div class="col-sm-6">
<a class="twitter-timeline" href="https://twitter.com/cafedespierta" data-widget-id="484695802795663360">Tweets por @cafedespierta</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


      </div>
    </div>
  </div>
<div class="newsletter">
  <div class="container">
    <div class="row">
      <div class="col-xs-2">
        <a href="<?php echo $baselink ?>">
          <img src="catalog/view/theme/despierta/image/logo-footer.png" alt="" class="img-responsive" />
        </a>
      </div>
      <div class="col-xs-4 col-xs-offset-6">
        
      </div>
    </div>
  </div>
</div>
<div id="powered">
    <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <?php if ($informations) { ?>
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <?php echo $text_information; ?>
          </a>
          <?php foreach ($informations as $information) { ?>
            <a href="<?php echo $information['href']; ?>" class="list-group-item"><?php echo $information['title']; ?></a>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <div class="col-sm-3">
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <?php echo $text_service; ?>
          </a>
          <a href="<?php echo $contact; ?>" class="list-group-item"><?php echo $text_contact; ?></a>
          <a href="<?php echo $return; ?>" class="list-group-item"><?php echo $text_return; ?></a>
          <a href="<?php echo $sitemap; ?>" class="list-group-item"><?php echo $text_sitemap; ?></a>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <?php echo $text_extra; ?>
          </a>
          <a href="<?php echo $manufacturer; ?>" class="list-group-item"><?php echo $text_manufacturer; ?></a>
          <a href="<?php echo $voucher; ?>" class="list-group-item"><?php echo $text_voucher; ?></a>
          <a href="<?php echo $affiliate; ?>" class="list-group-item"><?php echo $text_affiliate; ?></a>
          <a href="<?php echo $special; ?>" class="list-group-item"><?php echo $text_special; ?></a>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <?php echo $text_account; ?>
          </a>
          <a href="<?php echo $account; ?>" class="list-group-item"><?php echo $text_account; ?></a>
          <a href="<?php echo $order; ?>" class="list-group-item"><?php echo $text_order; ?></a>
          <a href="<?php echo $wishlist; ?>" class="list-group-item"><?php echo $text_wishlist; ?></a>
          <a href="<?php echo $newsletter; ?>" class="list-group-item"><?php echo $text_newsletter; ?></a>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="powered"><?php echo $powered; ?></div>
      </div>
      <div class="col-sm-2 col-sm-offset-1">
      </div>
      <div class="col-sm-4">
      </div>
    </div>
  </div>
</div>
</div>
</body></html>