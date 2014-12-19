<script type="text/javascript">  

</script>
<?php
    include "/../headmenu.inc";
?>
<? if( $this->status == '00')  { ?>
<div>
Your Current Balance: <?=$this->currentBalance?>
</div>
<?php
    echo $this->form->render($this);
?>
<?php }else if ( $this->status == '01') {?>
<div>

<h1>Thank you for make payment.
    The test credit card has been charged!</h1>
    Transaction ID: $this->response->transaction_id;
              
<a class="button" href="<?php echo $this->returnUrl ?>"> OK</a>
</div>
<?php }else{ ?>

<div>
<?php echo $this->error_message ?>
<a class="button" href="<?php echo $this->returnUrl ?>"> OK</a>
</div>
    
<?php  }?>
