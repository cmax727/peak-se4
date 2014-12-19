<?php
class Advgroup_Form_Admin_Global extends Engine_Form
{
  public function init()
  {
    $this
      ->setTitle('Global Settings')
      ->setDescription('These settings affect all members in your community.');

      $this->addElement('Text', 'pollmaxoptions', array(
        'label' => 'Maximum Poll Options',
        'description' => 'How many possible poll answers do you want to permit in a group? (Enter a number between 1 and 100)',
        'validators' => array(array('Between',true,array(1,100)),),
        'value' => Engine_Api::_()->getApi('settings', 'core')->getSetting('advgroup.pollmaxoptions',15),
       ));

       $this->addElement('Radio','pollcanchangevote',array(
        'label' =>'Change Poll Vote?',
        'description'=>'Do you want to permit the group members to change their poll vote in their group?.',
        'multiOptions' =>array(
            1 => 'Yes, group members can change their vote.',
            0 => 'No, group members cannot change their vote.',
        ),
        'value' => Engine_Api::_()->getApi('settings', 'core')->getSetting('advgroup.pollcanchangevote', 1),
            ));

    // Add submit button
    $this->addElement('Button', 'submit', array(
      'label' => 'Save Changes',
      'type' => 'submit',
      'ignore' => true
    ));
  }

   public function saveValues()
  {
    $values = $this->getValues();
    Engine_Api::_()->getApi('settings','core')->setSetting('advgroup.pollmaxoptions',$values['pollmaxoptions']);
    Engine_Api::_()->getApi('settings','core')->setSetting('advgroup.pollcanchangevote',$values['pollcanchangevote']);
    $this ->addNotice('Your changes have been saved!');
  }
}