<h2>
    <?php echo $this->group->__toString() ?>
    <?php if(Engine_Api::_()->getApi('settings', 'core')->getSetting('advgroup.albumFeature', 1) == 1){
          echo '&#187;';
          echo $this->album->__toString();
    };?>
    <?php echo $this->translate('&#187; Photos');?>
</h2>

<?php echo $this->form->render($this) ?>