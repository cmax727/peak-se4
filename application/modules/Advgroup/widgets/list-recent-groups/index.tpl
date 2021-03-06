<ul class="generic_layout_container" id="recent_group">
  <?php foreach( $this->groups as $item ): ?>
  <li>
    <div class="group_photo">
        <?php echo $this->htmlLink($item->getHref(), $this->itemPhoto($item, 'thumb.normal')) ?>
    </div>
    <?php
       $title = Engine_Api::_()->advgroup()->subPhrase($item->getTitle(),20);
        $owner_name = Engine_Api::_()->advgroup()->subPhrase($item->getOwner()->getTitle(),15);
    ?>
    <div class="group_info" style="padding: 2px 0px 2px 0px">
         <?php echo $this->htmlLink($item->getHref(),"<b>".$title."</b>"); ?>
         <div class="group_owner" style="font-size: 11px; color:#7E7E7E;">
           <?php echo $this->translate('led by %1$s',
              $this->htmlLink($item->getOwner()->getHref(), "<font color=\"#0F4FA8\">".$owner_name."</font>")) ?>
           <br/>
           <?php echo $this->timestamp(strtotime($item->{$this->recentCol})) ?>
         </div>
       </div>
    </li>
  <?php endforeach; ?>
</ul>
<?php if(count($this->groups)>= $this->limit):?>
<br/>
<div style="padding-right :10px;float:right; font-weight: bold; padding-bottom: 4px; padding-right: 22px;">
     <?php echo $this->htmlLink($this->url(array('action'=>'listing'), 'group_general'),
     '<img src="./application/modules/Advgroup/externals/images/view_all.png">',array('class'=>'')); ?>
</div>
<?php endif;?>