<?php
/**
 * 
 *
 * @category   Application_Extensions
 * @package    Marketplace
 * @copyright  Copyright 2010 
 * * 
 * @version    $Id: pagination.tpl 7244 2010-09-01 01:49:53Z john $
 * 
 */
?>

<?php if ($this->pageCount > 1): ?>
  <div class="paginationControl">

    <?php /* Previous page link */ ?>
    <?php if (isset($this->previous)): ?>
     <a href="javascript:void(0)" onclick="javascript:pageAction('<?php echo $this->previous;?>')"><?php echo $this->translate("&#171; Previous") ?></a>
    <?php endif; ?>

    <?php foreach ($this->pagesInRange as $page): ?>
      <?php if ($page != $this->current): ?>
        <a href="javascript:void(0)" onclick="javascript:pageAction('<?php echo $page;?>')"><?php echo $page;?></a> |
      <?php else: ?>
        <?php echo $page; ?> |
      <?php endif; ?>
    <?php endforeach; ?>

    <?php /* Next page link */ ?>
    <?php if (isset($this->next)): ?>
      <?php if (isset($this->previous)): ?>
        &nbsp;|&nbsp;
      <?php endif; ?>
        <a href="javascript:void(0)" onclick="javascript:pageAction('<?php echo $this->next;?>')"><?php echo $this->translate("Next &#187;") ?></a>
    <?php endif; ?>

  </div>
<?php endif; ?>