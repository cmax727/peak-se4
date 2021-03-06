<?php
/**
 * 
 *
 * @category   Application_Extensions
 * @package    Marketplace
 * @copyright  Copyright 2010 
 * * 
 * @version    $Id: delete.tpl 7244 2010-09-01 01:49:53Z john $
 * 
 */
?>

  <form method="post" class="global_form_popup">
    <div>
      <h3><?php echo $this->translate("Delete Marketplace Category?") ?></h3>
      <p>
        <?php echo $this->translate("MARKETPLACES_VIEWS_SCRIPTS_ADMINSETTINGS_DELETE_DESCRIPTION") ?>
      </p>
      <br />
      <p>
        <input type="hidden" name="confirm" value="<?php echo $this->marketplace_id?>"/>
        <button type='submit'><?php echo $this->translate("Delete") ?></button>
        <?php echo $this->translate(" or ") ?> 
        <a href='<?php echo $this->url(array(), 'marketplace_manage', true) ?>'>
        <?php echo $this->translate("cancel") ?></a>
      </p>
    </div>
  </form>

<?php if( @$this->closeSmoothbox ): ?>
<script type="text/javascript">
  TB_close();
</script>
<?php endif; ?>
