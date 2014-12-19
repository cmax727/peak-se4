<script type="text/javascript">

function multiDelete()
{
  var multidelete_form = $('multidelete_form');
  var inputs = multidelete_form.elements;
  var count = 0;
  for (i = 1; i < inputs.length - 1; i++) {
    if(inputs[i].checked == true)
        count ++;
  }
  if(count == 0){
    alert("Please select group(s) to delete.");
    return false;
  }
  else {
      return confirm("<?php echo $this->translate("Are you sure you want to delete the selected groups?") ?>");
  }
}

function selectAll()
{
  var i;
  var multidelete_form = $('multidelete_form');
  var inputs = multidelete_form.elements;
  for (i = 1; i < inputs.length; i++) {
    if (!inputs[i].disabled) {
      inputs[i].checked = inputs[0].checked;
    }
  }
}

function group_good(group_id,checbox){
            if(checbox.checked==true) status =1;
            else status =0;
            new Request.JSON({
              'format': 'json',
              'url' : '<?php echo $this->url(array('controller' => 'group', 'action' => 'featured'), 'group_extended') ?>',
              'data' : {
                'format' : 'json',
                'group_id' : group_id,
                'good' : status
              },
              'onRequest' : function(){
              },
              'onSuccess' : function(responseJSON, responseText)
              {
              }
            }).send();

    }
</script>

<h2>
  <?php echo $this->translate("Groups Plugin") ?>
</h2>

<?php if( count($this->navigation) ): ?>
  <div class='tabs'>
    <?php
      // Render the menu
      //->setUlClass()
      echo $this->navigation()->menu()->setContainer($this->navigation)->render()
    ?>
  </div>
<?php endif; ?>

<p>
  <?php echo $this->translate("GROUP_VIEWS_SCRIPTS_ADMINMANAGE_INDEX_DESCRIPTION") ?>
</p>

<br />

<?php if( count($this->paginator) ): ?>
  <form id='multidelete_form' method="post" action="<?php echo $this->url();?>" onSubmit="return multiDelete()">
  <table class='admin_table'>
    <thead>
      <tr>
        <th class='admin_table_short'><input onclick='selectAll();' type='checkbox' class='checkbox' /></th>
        <th class='admin_table_short'><?php echo $this->translate("ID") ?></th>
        <th><?php echo $this->translate("Title") ?></th>
        <th><?php echo $this->translate("Featured") ?></th>
        <th><?php echo $this->translate("Owner") ?></th>
        <th><?php echo $this->translate("Views") ?></th>
        <th><?php echo $this->translate("Date") ?></th>
        <th><?php echo $this->translate("Options") ?></th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($this->paginator as $item): ?>
        <tr>
          <td><input type='checkbox' class='checkbox' name='delete_<?php echo $item->group_id;?>' value='<?php echo $item->group_id ?>' /></td>
          <td><?php echo $item->group_id ?></td>
          <td><?php echo $item->title ?></td>
          <?php $flag =  $item->getFeatured();?>
            <td>
            <?php if($flag == true): ?>
            <input type="checkbox" id='goodgroup_<?php echo $item->group_id; ?>'  onclick="group_good(<?php echo $item->group_id; ?>,this)" checked />
          <?php else: ?>
           <input type="checkbox" id='goodgroup_<?php echo $item->group_id; ?>'  onclick="group_good(<?php echo $item->group_id; ?>,this)" />
          <?php endif; ?> </td>
          <td><?php echo $this->user($item->user_id)->getTitle(); ?></td>
          <td><?php echo $item->view_count;?></td>
          <td><?php echo $this->locale()->toDateTime($item->creation_date) ?></td>
          <td>
            <a href="<?php echo $this->url(array('id' => $item->group_id), 'group_profile') ?>">
              <?php echo $this->translate("view") ?>
            </a>
            |
            <?php echo $this->htmlLink(
                array('route' => 'default', 'module' => 'advgroup', 'controller' => 'admin-manage', 'action' => 'delete', 'id' => $item->group_id),
                $this->translate("delete"),
                array('class' => 'smoothbox')) ?>
          </td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>

  <br />

  <div class='buttons'>
    <button type='submit'><?php echo $this->translate("Delete Selected") ?></button>
  </div>
  </form>

  <br />

  <div>
    <?php echo $this->paginationControl($this->paginator); ?>
  </div>

<?php else: ?>
  <div class="tip">
    <span>
      <?php echo $this->translate("There are no groups posted by your members yet.") ?>
    </span>
  </div>
<?php endif; ?>