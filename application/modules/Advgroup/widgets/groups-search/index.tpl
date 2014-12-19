<script type="text/javascript">
 var pageAction =function(page){
    $('page').value = page;
    $('filter_form').submit();
  }
</script>

<div>
  <div style = "margin-bottom:15px;">
    <?php
    echo $this->form->render($this) ?>
  </div>
  <?php if( count($this->quickNavigation) > 0 ): ?>
    <div class="quicklinks">
      <?php
        // Render the menu
        echo $this->navigation()
            ->menu()
            ->setContainer($this->quickNavigation)
            ->render();
      ?>
    </div>
  <?php endif; ?>
</div>
<br/>