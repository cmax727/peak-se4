<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Album
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Controller.php 9382 2011-10-14 00:41:45Z john $
 * @author     Shaun Harding <shaun@socialengine.com>
 */

/**
 * @category   Application_Extensions
 * @package    Album
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Album_Widget_BrowseSearchController extends Engine_Content_Widget_Abstract
{
  public function indexAction()
  {
    $searchForm = $this->view->searchForm = new Album_Form_Search();
    $request = Zend_Controller_Front::getInstance()->getRequest();

    $searchForm
      ->setMethod('get')
      ->populate($request->getParams())
      ;
    
  }
}