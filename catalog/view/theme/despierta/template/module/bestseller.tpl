<div class="container top15">
  <div class="row">
    <div class="col-lg-12">
      <div class="box">
        <div class="box-content">
          <div class="box-product">
            <div id="bestSeller" class="carousel slide products">
              <div class="featured-products carousel-inner">

                <?php 
                $count = 1;
                foreach ($products as $product) {
                if($count==1){
                  $active = "active";
                }else{
                  $active = "";
                }
                if($count%4 == 1){
                  echo "<div class='item ".$active."'><div class='row'>";
                }
                 echo '<div class="col-xs-3">';?>
                 <?php if ($product['thumb']) { ?>
                  <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                        <img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                    </a>
                  </div>
                  <?php } ?>
                  <div class="name">
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  </div>
                   <?php if ($product['price']) { ?>
                  <div class="price">
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?>
                    <span class="price-old"><?php echo $product['price']; ?></span> 
                    <span class="price-new"></span>
                    <span class="price-new-label"><?php echo $product['special']; ?></span>
                    <?php } ?>
                  </div>
                  <?php } ?>

                  <!-- Modal -->
                  <div class="modal fade" id="myModal-<?php echo $product['product_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                          <h4 class="modal-title" id="myModalLabel">
                            <?php echo $product['name']; ?><?php if ($product['rating']) { ?>
                              <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                            <?php } ?>
                            
                          </h4>
                        </div>
                        <div class="modal-body modal-back">
                          <div class="row">
                            <div class="col-lg-4">
                              <img class="img-responsive img-modal" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                               <?php if ($product['price']) { ?>
                              <div class="price">
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-old"><?php echo $product['price']; ?></span> 
                                <span class="price-new"></span>
                                <span class="price-new-label"><?php echo $product['special']; ?></span>
                                <?php } ?>
                              </div>
                              <?php } ?>
                              <div class="extras">
                                  <?php if ($product['model']) {echo "<p>".$product['model']."</p>";} ?>
                                  <?php if ($product['sku']) {echo "<p>".$product['sku']."</p>";} ?>
                                  <?php if ($product['manufacturer']){echo "<p>".$product['manufacturer']."</p>";} ?>
                              </div>
                            </div>
                            <div class="col-lg-8">
                              <?php echo "<div class='modal-description'>".$product['description']."</div>"; ?>
                            </div>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $button_cart; ?></button>
                        </div>
                      </div>
                    </div>
                  </div>

                 </a>
                 <div class="cart"><button onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button btn btn-default"><span class="glyphicon glyphicon-shopping-cart"></span> <?php echo $button_cart; ?></button><button class="button btn btn-default" data-toggle="modal" data-target="#myModal-<?php echo $product['product_id'] ?>"><span class="glyphicon glyphicon-eye-open"></span></button></div>
               </div>
                 <?php
                if ($count%4 == 0)
                {
                  echo "</div></div>";
                }
                $count++;
                ?>
                <?php } 
              if ($count%4 != 1){echo "</div></div>";}?>
              </div>
              <!--/carousel-inner--> 
              <a class="left carousel-control" href="#bestSeller" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
              <a class="right carousel-control" href="#bestSeller" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
