<h2>
  <?php echo $this->group->__toString() ?>
  <?php echo $this->translate('&#187; Discussions');?>
</h2>

<div class="group_discussions_options">
  <?php echo $this->htmlLink(array('route' => 'group_profile', 'id' => $this->group->getIdentity()), $this->translate('Back to Group'), array(
    'class' => 'buttonlink icon_back'
  )) ?>
  <?php 
    if ($this->can_post) 
    {
      echo $this->htmlLink(array('route' => 'group_extended', 'controller' => 'topic', 'action' => 'create', 'subject' => $this->group->getGuid()), $this->translate('Post New Topic'), array(
    'class' => 'buttonlink icon_group_post_new'
  )) ;
  }
?>
</div>
<div class="topic_search_form">
    <?php echo $this->form->render($this);?>
</div>
<br/>
<?php if( count($this->paginator) > 0 ): ?>
<ul class="group_discussions">
  <?php foreach( $this->paginator as $topic ):
      $lastpost = $topic->getLastPost();
      $lastposter = $topic->getLastPoster();
      ?>
    <li>
      <div class="group_discussions_replies">
        <span>
          <?php echo $this->locale()->toNumber($topic->post_count - 1) ?>
        </span>
        <?php echo $this->translate(array('reply', 'replies', $topic->post_count - 1)) ?>
      </div>
      <div class="group_discussions_lastreply">
        <?php echo $this->htmlLink($lastposter->getHref(), $this->itemPhoto($lastposter, 'thumb.icon')) ?>
        <div class="group_discussions_lastreply_info">
          <?php echo $this->htmlLink($lastpost->getHref(), $this->translate('Last Post')) ?> <?php echo $this->translate('by');?> <?php echo $lastposter->__toString() ?>
          <br />
          <?php echo $this->timestamp(strtotime($topic->modified_date), array('tag' => 'div', 'class' => 'group_discussions_lastreply_info_date')) ?>
        </div>
      </div>
      <div class="group_discussions_info">
        <h3<?php if( $topic->sticky ): ?> class='group_discussions_sticky'<?php endif; ?>>
          <?php echo $this->htmlLink($topic->getHref(), $topic->getTitle()) ?>
        </h3>
        <div class="group_discussions_blurb">
          <?php echo $this->viewMore(strip_tags($topic->getDescription())) ?>
        </div>
      </div>
    </li>
  <?php endforeach; ?>
</ul>
  <div>
    <?php echo $this->paginationControl($this->paginator, null, null, array(
      'pageAsQuery' => true,
      'query' => $this->formValues,
      )); ?>
  </div>
<?php else:?>
 <div class="tip">
    <span>
      <?php echo $this->translate('No topics have been posted in this group yet.');?>
      <?php if($this->canCreate):?>
      <?php echo $this->translate('Create a %1$snew one%2$s',
              '<a href="'.$this->url(array('controller'=>'topic','action' => 'create','subject' =>$this->group->getGuid()), 'group_extended').'">', '</a>');?>
      <?php endif;?>
    </span>
  </div>
<?php endif; ?>