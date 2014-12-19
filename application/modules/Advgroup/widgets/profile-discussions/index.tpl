<?php $empty = true; if( $this->paginator->getTotalItemCount() > 0 ): ?>
  <div class="group_discussions_list">
    <ul class="group_discussions">
      <?php foreach( $this->paginator as $topic ):
        if( empty($topic->lastposter_id) ) {
          continue;
        }
        $lastpost = $topic->getLastPost();
        if( !$lastpost ) {
          continue;
        }
        $lastposter = $topic->getLastPoster();
        $empty = false;
        ?>
        <li>
          <div class="group_discussions_replies">
            <span>
              <?php echo $this->locale()->toNumber($topic->post_count - 1) ?>
            </span>
            <?php echo $this->translate(array('reply', 'replies', $topic->post_count - 1)) ?>
          </div>
          <?php if( $lastpost && $lastposter ): ?>
          <div class="group_discussions_lastreply">
            <?php echo $this->htmlLink($lastposter->getHref(), $this->itemPhoto($lastposter, 'thumb.icon')) ?>
            <div class="group_discussions_lastreply_info">
              <?php echo $this->htmlLink($lastpost->getHref(), $this->translate('Last Post')) ?> <?php echo $this->translate('by');?> <?php echo $lastposter->__toString() ?>
              <br />
              <?php echo $this->timestamp(strtotime($topic->modified_date), array('tag' => 'div', 'class' => 'group_discussions_lastreply_info_date')) ?>
            </div>
          </div>
          <?php endif; ?>
          <div class="group_discussions_info">
            <h3<?php if( $topic->sticky ): ?> class='group_discussions_sticky'<?php endif; ?>>
              <?php echo $this->htmlLink($topic->getHref(), $topic->getTitle()) ?>
            </h3>
            <div class="group_discussions_blurb" style="text-align: justify;">
              <?php echo $this->viewMore(strip_tags($topic->getDescription())) ?>
            </div>
          </div>
        </li>
      <?php endforeach; ?>
    </ul>
  </div>
  <?php if($this->viewMore):?>
    <br/>
    <div style="padding-right :10px;float:right; font-weight: bold; padding-bottom: 4px; padding-right: 22px;">
     <?php echo $this->htmlLink($this->url(array('controller'=>'topic','action'=>'index','subject' => $this->group->getGuid()), 'group_extended'),
     '<img src="./application/modules/Advgroup/externals/images/view_more.png">',array('class'=>'')); ?>
    </div>
  <?php endif;?>
<?php endif;?>
<?php if( $empty ): ?>

  <?php if( $this->viewer()->getIdentity() ) echo '<br />'; ?>
  <div class="tip">
    <span>
      <?php echo $this->translate('No topics have been posted in this group yet.');?>
      <?php echo $this->translate('Create a new one %1$shere%2$s',
              '<a href="'.$this->url(array('controller'=>'topic','action' => 'create','subject' =>$this->group->getGuid()), 'group_extended').'">', '</a>');?>
    </span>
  </div>
<?php endif; ?>