<?php
class Advgroup_Form_Member_Remove extends Engine_Form
{
  public function init()
  {
    $this
      ->setTitle('Remove Member')
      ->setDescription('Are you sure you want to remove this member from the group?')
      ;

    //$this->addElement('Hash', 'token');

    $this->addElement('Button', 'submit', array(
      'type' => 'submit',
      'ignore' => true,
      'decorators' => array('ViewHelper'),
      'label' => 'Remove Member',
    ));

    $this->addElement('Cancel', 'cancel', array(
      'prependText' => ' or ',
      'label' => 'cancel',
      'link' => true,
      'href' => '',
      'onclick' => 'parent.Smoothbox.close();',
      'decorators' => array(
        'ViewHelper'
      ),
    ));

    $this->addDisplayGroup(array(
      'submit',
      'cancel'
    ), 'buttons');
  }
}