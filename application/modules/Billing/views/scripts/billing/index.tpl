<?php
    include "/../headmenu.inc";
?> 
<div>
    <hr/>
    <ul>
        <li>
            Account ID : <?= $this->user->user_id?>
        </li>
        <li>
            Current Balance : <?= $this->user->balance?>
        </li>
        <li>
        </li>
        
    </ul>
</div>
<?php
   //echo $this->form->render($this);//echo $this->form;
?>
