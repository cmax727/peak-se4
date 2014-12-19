<?php if( count($this->groups) >  0 ): ?>
<ul class="slideshow_container" id ="slideshow_container">
	<li>
		<div id ="slide-runner-widget" class='slideshow'>
                <?php foreach($this->groups as $item):
                        $owner = $item->getOwner();?>
			<div class="slide">
                            <div class="featured_groups">
				<div class="featured_groups_img_wrapper">
                                    <div class="featured_groups_img">
					<a href="<?php echo $item->getHref()?>">
                                            <?php if($item->getPhotoUrl("thumb.feature")!= null):?>
                                            <img src="<?php echo $item->getPhotoUrl("thumb.feature");?>" />
                                            <?php else:?>
                                            <img src="./application/modules/Advgroup/externals/images/nophoto_group_thumb_feature.png" />
                                            <?php endif;?>
                                        </a>
                                    </div>
                                </div>
                                <div class="group_info">
                                    <div class="group_title" style="font-size: 15px; color:#3BA3D0">
                                        <b><?php echo $item ?></b>
                                    </div>
                                    <div class="group_owner" style="font-size: 11px; color:#7E7E7E;">
                                        <?php echo $this->translate("led by ");?>
                                        <?php echo $this->htmlLink($owner->getHref(),"<font color=\"#0F4FA8\">".$owner->getTitle()."</font>");?>
                                        -
                                        <?php echo $this->translate('%d member(s)',$item->member_count);?>
                                    </div>
                                    <p class="group_description" style="margin-top: 6px;  word-wrap: break-word; text-align: justify;">
                                        <?php if(strlen(strip_tags($item->description))>450) echo Engine_Api::_()->advgroup()->subPhrase(strip_tags($item->description),450);
                                               else echo strip_tags($item->description);?>
                                    </p>
                                    <p class="group_viewmore" style="margin-top: 6px;">
                                        <a href="<?php echo $item->getHref()?>" style ="margin-top:10px;">
                                            <img alt="" src="./application/modules/Advgroup/externals/images/view_more.png"/>
                                        </a>
                                    </p>
                                </div>
                            </div>
			</div>
		<?php endforeach; ?>
		</div>
	</li>
</ul>
<script type="text/javascript">
	jQuery(document).ready(function(){
		var slideWidth = jQuery('.slideshow').width();
	    /* call divSlideShow without parameters */
	    jQuery('.slideshow').divSlideShow({
	    width: slideWidth,
		height:290,
		loop:1000,
		arrow:'begin',
		controlClass:'slideshow_action',
		controlActiveClass:'slideshow_action_active'
		});
	});
</script>
<?php else: ?>
<div class="tip">
      <span>
        <?php echo $this->translate('There is no featured group yet.');?>
      </span>
    </div>
<?php endif;?>