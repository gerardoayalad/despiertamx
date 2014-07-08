<?php if ($news) { ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <?php foreach ($news as $news_story) { ?>
      <div class="box-news">
        <?php if ($show_headline) { ?>
        <h4><?php echo $news_story['title']; ?></h4>
        <?php } ?>
        <?php echo $news_story['description']; ?> &hellip; <a href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a></p>
        <div><b><?php echo $text_date_added; ?></b> <?php echo $news_story['date_added']; ?></div>
      </div>
    <?php } ?>
  </div>
</div>
<?php } ?>
