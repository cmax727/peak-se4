<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    User
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: _browseUsers.tpl 8139 2011-01-05 02:01:48Z jung $
 * @author     John
 */
?>
<h3>
  <?php echo $this->translate(array('%s member found.', '%s members found.', $this->totalUsers),$this->locale()->toNumber($this->totalUsers)) ?>
</h3>

<ul id="browsemembers_ul">

  <?php 
 
  foreach( $this->users as $user ){ 
	$aliasedFields = $user->fields()->getFieldsStructurePartial();//getFieldsObjectsByAlias();
	  $userInfo = array();	
	  //$struct = Engine_Api::_()->fields()->getFieldsStructureFull($user, $this->topLevelId, $this->topLevelValue);
		  // filtering 2 /1 value options
		  foreach( $aliasedFields as $fskey => $map ){
			  $field = $map->getChild();
			  //$field = $map;

			  // Skip fields hidden on signup
//			  if( isset($field->show) && !$field->show && $this->_isCreation ) {
//				continue;
//			  }
			  
			  if( $field->isHeading() || $field->search == 0 || $field->field_id == 1)
			  { 
				  continue;
			  }
			  
			  // Add field and load options if necessary
			  $params = $field->getElementParams($user);
			  
			  if ( ($this->profileType && $field->search == 1) // profile type specified
			  || (!$this->profileType && $field->search == 2)){
					//print_r($params['options']);
				  $tag = $params['options']['label'];
					if ( is_array($params['options']['multiOptions']) ){
						$k = $params['options']['value'];
						$userInfo[$tag] = $params['options']['multiOptions'][$k];
					}else{
						$userInfo[$tag] = $params['options']['value'];
					}
			  }
			  
			}
			array_filter($userInfo);
			$c = 0;
  ?>
	<li>
	  <?php echo $this->htmlLink($user->getHref(), $this->itemPhoto($user, 'thumb.icon')) ?>
	  <?php if( $this->viewer()->getIdentity() ): ?>
		<div class='browsemembers_results_links'>
		  <?php echo $this->userFriendship($user) ?>
		</div>
	  <?php endif; ?>

		<div class='browsemembers_results_info'>
		  <?php echo $this->htmlLink($user->getHref(), $user->getTitle()) ?>
		  <?php echo $user->status; ?>
		  <ul class="member_info">
		  <?php //??-saf
			
				foreach ( $userInfo as $tag=>$line){
					echo "<li>".$tag.": <strong>".$line."</strong></li>";
				}
				
		  ?>
		  </ul>
		  <?php if( $user->status != "" ): ?>
			<div>
			  <?php echo $this->timestamp($user->status_date) ?>
			</div>
		  <?php endif; ?>
		</div>
	</li>
  <?php } //endforeach; ?>
</ul>

<?php if( $this->users ): ?>
  <div class='browsemembers_viewmore' id="browsemembers_viewmore">
	<?php echo $this->paginationControl($this->users, null, null, array(
	  'pageAsQuery' => true,
	  'query' => $this->formValues,
	  //'params' => $this->formValues,
	)); ?>
  </div>
<?php endif; ?>

<script type="text/javascript">
  page = '<?php echo sprintf('%d', $this->page) ?>';
  totalUsers = '<?php echo sprintf('%d', $this->totalUsers) ?>';
  userCount = '<?php echo sprintf('%d', $this->userCount) ?>';
</script>