<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Fields
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: heading-edit.tpl 8111 2010-12-22 21:50:47Z char $
 * @author     John
 */
?>
<?php if( $this->form ): ?>

  <?php echo $this->form->render($this) ?>

<?php else: ?>

  <div class="global_form_popup_message">
    <?php echo $this->translate("Your changes have been saved.") ?>
  </div>

  <script type="text/javascript">
    parent.onHeadingEdit(
      <?php echo Zend_Json::encode($this->field) ?>,
      <?php echo Zend_Json::encode($this->htmlArr) ?>
    );
    (function() { parent.Smoothbox.close(); }).delay(1000);
  </script>

<?php endif; ?>