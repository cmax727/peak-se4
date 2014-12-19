<?php
class Advgroup_Form_Search extends Engine_Form
{
  public function init()
  {
     //Set Form Layout And Attributes.
    $this
      ->setAttribs(array( 'id' => 'filter_form',
                          'class' => 'global_form_box',))
      ->setAction(Zend_Controller_Front::getInstance()->getRouter()->assemble(array()));

      //Page Id Field.
    $this->addElement('Hidden','page');
    
      //Search Text Field.
    $this->addElement('Text', 'text', array(
      'label' => 'Search Groups:'
    ));
    
      //Category Field.
    $categories = Engine_Api::_()->getDbtable('categories', 'advgroup')->getCategories();
    $arr_cats = array();
    $arr_cats[0] = 'All Categories';
    foreach($categories as $category)
    {
      $arr_cats[$category->category_id] = $category->title;
    }
    if(count($categories) >= 1 ) {
      $this->addElement('Select', 'category_id', array(
        'label' => 'Category:',
        'multiOptions' => $arr_cats,
        'onchange' => '$(this).getParent("form").submit();',
      ));
    }
      //View Field.
    $this->addElement('Select', 'view', array(
      'label' => 'View:',
      'multiOptions' => array(
        '0' => 'Everyone\'s Groups',
        '1' => 'Only My Friends\' Groups',
      ),
      'onchange' => '$(this).getParent("form").submit();',
    ));

      //Order Field
    $this->addElement('Select', 'order', array(
      'label' => 'List By:',
      'multiOptions' => array(
        'creation_date DESC' => 'Recently Created',
        'member_count DESC' => 'Most Popular',
        'most_active' => 'Most Active',
      ),
      'value' => 'creation_date DESC',
      'onchange' => '$(this).getParent("form").submit();',
    ));
    
  }
}