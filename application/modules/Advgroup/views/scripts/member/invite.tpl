<script type="text/javascript">
  en4.core.runonce.add(function(){document.getElementById('selectall').addEvent('click', function(){
      check = this.get('checked', false);
      list = new Array();
      list.combine(document.getElementsByName('users[]'));
      list.each(function(el){
        el.set('checked', check);
      });
    })});
</script>

<?php echo $this->form->setAttrib('class', 'global_form_popup')->render($this) ?>