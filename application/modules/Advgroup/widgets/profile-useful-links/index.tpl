<?php $group = $this->group;
      $viewer = $this->viewer; ?>
<?php if(count($this->paginator)>0):?>
  <ul>
        <?php foreach($this->paginator as $item):?>
        <li style="padding: 10px 0px 10px 10px;border-bottom: 1px solid #EAEAEA ;">
          <h3 style="padding-left: 10px;"><?php echo $item->title;?></h3>
          <p style="padding-left: 10px;"><?php echo $item->description?></p>
          <p style="padding-left: 10px;"><a href="<?php echo $item->link_content;?>" target="_blank">
             <b><?php echo $item->link_content;?></b>
          </a></p>
        </li>
        <?php endforeach;?>
  </ul>
<?php else:?>
  <div class="tip">
    <span>
      <?php echo $this->translate('No links have been added in this group yet.');?>
      <?php  if($this->canCreate):?>
      <?php echo $this->translate('Create a new one %1$shere%2$s.',
            '<a href="'.$this->url(array('action' => 'create','subject' =>$group->getGuid()), 'group_link').'">', '</a>');?>
      <?php endif;?>
    </span>
  </div>
<?php endif;?>

