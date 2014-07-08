<div class="box box-fblogin">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
      <style>
      .friend-detail{
          float: left;
          width: 120px;
      }
      .friend-detail td{
          height: 30px;
      }
      .box .box-content{
          overflow: auto;
      }
      </style>
                        <?php
                    foreach ($fbfriend_list as $key) { ?>
                    <table class="friend-detail">
                                    <tr>
                                        <td><a target="_blank" href="<?= $key['profile_url']; ?>"><img height="100" width="100" target="_blank" src="<?= $key['pic_big']; ?>"></a></td>
                                    </tr>
                                    <tr>
                                        <td><a target="_blank" href="<?= $key['profile_url']; ?>"><b><?= $key['first_name'] . ' ' . $key['last_name']; ?><b></a></td>
                                    </tr>
                                </table>
                        <?php  } ?>
  </div>
</div>