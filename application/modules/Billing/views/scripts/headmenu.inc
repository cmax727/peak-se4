<?php
    $this->navigation = Engine_Api::_()->getApi('menus', 'core')
        ->getNavigation('billing_main');    
?>
<div class="headline">
  <h2>
    <?php echo $this->translate('Billing');?>
  </h2>
  <div class="tabs">
    <?php
      // Render the menu
      echo $this->navigation()
        ->menu()
        ->setContainer($this->navigation)
        ->render();
    ?>
  </div>
</div>