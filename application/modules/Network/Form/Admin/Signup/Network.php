<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Network
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Network.php 8544 2011-03-02 00:15:57Z jung $
 * @author     Sami
 * @author     John
 */

/**
 * @category   Application_Core
 * @package    Network
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
//??
class Network_Form_Admin_Signup_Network extends Engine_Form
{
          public function init()
  {
    // Get step and step number
    $stepTable = Engine_Api::_()->getDbtable('signup', 'user');
    $stepSelect = $stepTable->select()->where('class = ?', str_replace('_Form_Admin_', '_Plugin_', get_class($this)));
    $step = $stepTable->fetchRow($stepSelect);
    $stepNumber = 1 + $stepTable->select()
      ->from($stepTable, new Zend_Db_Expr('COUNT(signup_id)'))
      ->where('`order` < ?', $step->order)
      ->query()
      ->fetchColumn()
      ;
    $stepString = $this->getView()->translate('Step %1$s', $stepNumber);
    $this->setDisableTranslator(true);


    // Custom //??
    $this->setTitle($this->getView()->translate('%1$s: Select Network', $stepString));


    // Element: enable
    $this->addElement('Radio', 'enable', array(
      'label' => 'Select Network',  
      'required' => true,
      'description' => 'Do you want your users to be able to select a ' .
        'network upon signup?',
      'multiOptions' => array(
        '1' => 'Yes, give users the chance to select a network upon signup.',
        '0' => 'No, do not allow users to select network upon signup.',
      ),
    ));

    // Element: submit
    $this->addElement('Button', 'submit', array(
      'label' => 'Save Changes',
      'type' => 'submit',
      'ignore' => true,
    ));

    // Populate
    $this->populate(array(
      'enable' => $step->enable,
    ));
  }
}