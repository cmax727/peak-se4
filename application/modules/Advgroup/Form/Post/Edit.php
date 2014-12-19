<?php
class Advgroup_Form_Post_Edit extends Engine_Form
{
  public function init()
  {
    $this
      ->setTitle('Edit Post');

    $this->addElement('textarea', 'body', array(
      'filters' => array(
        new Engine_Filter_Censor(),
        new Engine_Filter_HtmlSpecialChars(),
      )
    ));
    
    $this->addElement('Button', 'submit', array(
      'label' => 'Edit Post',
      'ignore' => true,
      'type' => 'submit',
      'decorators' => array(
        'ViewHelper',
      ),
    ));

    $this->addElement('Cancel', 'cancel', array(
      'label' => 'cancel',
      'prependText' => ' or ',
      'type' => 'link',
      'link' => true,
      'onclick' => 'parent.Smoothbox.close();',
      'decorators' => array(
        'ViewHelper',
      ),
    ));

    $this->addDisplayGroup(array('submit', 'cancel'), 'buttons');
  }
}