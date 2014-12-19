<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Authorization
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: edit.tpl 7244 2010-09-01 01:49:53Z john $
 * @author     John
 */
?>

<script type="text/javascript">
  var fetchLevelSettings = function(level_id) {
	window.location.href = en4.core.baseUrl + 'admin/authorization/level/edit-gallery/id/' + level_id;
	//alert(level_id);
  }
</script>

<h2>
  <?php echo $this->translate("Gallery Member Levels") ?>
</h2>

<?php if( count($this->navigation) ): ?>
  <div class='tabs'>
	<?php
	  // Render the menu
	  //->setUlClass()
	  echo $this->navigation()->menu()->setContainer($this->navigation)->render();
	?>
  </div>
<?php endif; ?>

<div class='clear'>
  <div class='settings'>
  
	<?php 
	if ( $this->noPlugin == true){
		echo " Albums plugin is not installed or it is disabled.";
	}else{
		echo $this->form->render($this)	;
	}
	
	 ?>
  </div>
</div>