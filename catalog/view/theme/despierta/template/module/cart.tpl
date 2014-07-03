<li class="dropdown" id="cart">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $heading_title; ?> <b class="caret"></b></a>
  <ul class="dropdown-menu">
      <?php if ($products || $vouchers) { ?>

      <?php foreach ($products as $product) { ?>
      <li class="product">
        <a href="<?php echo $product['href']; ?>">
          <div class="image">
            <img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" class="remove" />
            <?php if ($product['thumb']) { ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
            <?php } ?>
          </div>
          <div class="name">
            <?php echo $product['quantity']; ?> x <?php echo $product['name']; ?>
          </div>
          <div class="price red">
            <?php echo $total_price; ?><?php echo $product['total']; ?>
          </div>
          <div class="extra-option">
            <?php foreach ($product['option'] as $option) { ?>
                  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                  <?php } ?>
          </div>
        </a>
      </li>
      <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
      <li>
        <a href="">
          <div class="name">
            <imgsrc="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" class="remove"/>
            <?php echo $voucher['description']; ?> 1 x <?php echo $voucher['amount']; ?>
          </div>
          <div class="extra-option">
            <?php foreach ($product['option'] as $option) { ?>
                  - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
                  <?php } ?>
          </div>
        </a>
      </li>
      <?php } ?>
          
      <li class="totals">
          <?php foreach ($totals as $total) { ?>
          <b><?php echo $total['title']; ?>:</b>
          <?php echo $total['text']; ?>              
          <?php } ?>
          <div class="checkout-buttons">
            <a href="<?php echo $cart; ?>" class="view-cart">
              <button class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $text_cart; ?></button>
            </a>              
            <a href="<?php echo $checkout; ?>" class="checkout">
              <button class="btn btn-default"><span class="glyphicon glyphicon-usd"></span> <?php echo $text_checkout; ?></button>
            </a>
          </div>
    </a></li>
          <?php } else { ?>
          </a></li>
          <li class="divider"></li>
          <li class="cart-counter green"><?php echo $text_items; ?></li>
          <li><a href="<?php echo $cart; ?>"><?php echo $text_empty; ?></a></li>
          <?php } ?>
  </ul>
</li>