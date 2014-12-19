<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Event
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: browse.tpl 9319 2011-09-23 20:48:26Z john $
 * @author     John Boehr <john@socialengine.com>
 */
?>
	<table class='admin_table' style="width:100%">
	  <thead>
		<tr>
		  <th style="width:50%"><?php echo $this->translate("Title") ?></th>
		  <th style="width:25%"><?php echo $this->translate("Event Date") ?></th>
		  <th style="width:25%"><?php echo $this->translate("Location") ?></th>
		</tr>
	  </thead>
	  <tbody>
	  
<?php if( count($this->paginator) > 0 ){ ?>
  
	<?php foreach( $this->paginator as $event ): ?>
	  <tr>
		<td>
		 <ul class='events_browse'>
			<div class="events_photo">
			  <?php echo $this->htmlLink($event->getHref(), $this->itemPhoto($event, 'thumb.normal')) ?>
			</div>
			<div class="events_options">
			</div>
			<div class="events_info">
			  <div class="events_title">
				<h3><?php echo $this->htmlLink($event->getHref(), $event->getTitle()) ?></h3>
			  </div>
		  <div class="events_members">
			<?php echo $this->locale()->toDateTime($event->starttime) ?>
		  </div>
			  <div class="events_members">
				<?php echo $this->translate(array('%s guest', '%s guests', $event->membership()->getMemberCount()),$this->locale()->toNumber($event->membership()->getMemberCount())) ?>
				<?php echo $this->translate('led by') ?>
				<?php echo $this->htmlLink($event->getOwner()->getHref(), $event->getOwner()->getTitle()) ?>
			  </div>
			  <div class="events_desc">
				<?php echo $event->getDescription() ?>
			  </div>
			</div>
			</ul>
		  </td>  	
			
		  <td>
			<?php echo $this->locale()->toDateTime($event->starttime) ?>
		  </td>
			 
		  <td>
			<?php echo $event->location ?>   
		  </td>
		  
	  </tr>
	<?php endforeach; ?>
  

  <?php if( $this->paginator->count() > 1 ): ?>
	<?php echo $this->paginationControl($this->paginator, null, null, array(
	  'query' => $this->formValues,
	)); ?>
  <?php endif; ?>

<?php } //endif ?>
	</tbody>
   </table>
<?php if ( ! count($this->paginator) > 0){ ?>

  <div class="tip">
	<span>
	<?php if( $this->filter != "past" ): ?>
	  <?php echo $this->translate('Nobody has created an event yet.') ?>
	  <?php if( $this->canCreate ): ?>
		<?php echo $this->translate('Be the first to %1$screate%2$s one!', '<a href="'.$this->url(array('action'=>'create'), 'event_general').'">', '</a>'); ?>
	  <?php endif; ?>
	<?php else: ?>
	  <?php echo $this->translate('There are no past events yet.') ?>
	<?php endif; ?>
	</span>
  </div>

<?php } //endif ?>
