<script type="text/javascript">
 var pageAction =function(id){
    $('category_id').value = id;
    $('filter_form').submit();
  }
</script>

<ul class="group_info">
  <li class="group_stats_title">
    <span>
      <h3>
         <?php echo $this->group->getTitle() ?>
      </h3>
    </span>
  </li>

  <div class="profile_fields">
      <h4><span><?php echo $this->translate("Basic Information");?></span></h4>
      <?php if( !empty($this->group->category_id) ): ?>
        <ul style="padding: 0px 0px 0px 10px;">
          <li>
            <span><?php echo $this->translate("Category")?></span>
            <span>
                <form action="./groups/listing" method="post">
                  <button style="background: none; border: none; color: #5F93B4; padding:0px; margin:0px;"> <a><?php echo $this->translate($this->group->getCategory()->title)?> </a></button>
                  <input type="hidden" value="<?php echo $this->group->category_id?>" name="category_id" id="category_id"/>
                </form>
            </span>
          </li>
        </ul>
      <?php endif; ?>
       <?php if($this->fieldStructure):?>
         <?php echo $this->fieldValueLoop($this->group, $this->fieldStructure) ?>
      <?php endif;?>
  </div>
  
  <?php if( '' !== ($description = $this->group->description) ): ?>
  <div class="profile_fields">
    <h4 id="group_desc">
        <span><?php echo $this->translate("Description")?></span>
        <img style="float:right" rel="group_desc" id="desc_more_icon_id" src="./application/modules/Advgroup/externals/images/down.jpg" onmousedown="toggleDesc('full_description','desc_more_icon_id'); return false;" />
    </h4>
    <li id="full_description" class="group_stats_description">
       <?php echo $description; ?>
    </li>
  </div>
  <?php endif; ?>
</ul>
<script type="text/javascript">
  function toggleDesc(block_id,img_id){
    if(document.getElementById(block_id).style.display == 'none'){
      document.getElementById(block_id).style.display = 'block';
      document.getElementById(img_id).src = './application/modules/Advgroup/externals/images/up.jpg';
    }else{
      document.getElementById(block_id).style.display = 'none';
      document.getElementById(img_id).src = './application/modules/Advgroup/externals/images/down.jpg';
    }
  }
</script>