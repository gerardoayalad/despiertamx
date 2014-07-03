      <div id="home-slider" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
           <?php 
           $i=0;
           foreach ($banners as $banner) { 
            if($i == 0){
              $class="active";
            }else{
              $class="";
            }

            ?>

            <div class="item <?php echo $class?>">

            <?php if ($banner['link']) { ?>
              <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"  class="img-responsive img-rounded"  /></a>
              <?php } else { ?>
              <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive img-rounded" />
            <?php } ?>
            </div>
          <?php $i++;}  ?>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#home-slider" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#home-slider" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>