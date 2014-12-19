<?php
/**
 * SocialEngine
 *
 * @category   Application_Core
 * @package    Storage
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: Extended.php 8215 2011-01-14 07:40:36Z john $
 * @author     John Boehr <j@webligo.com>
 */

/**
 * @category   Application_Core
 * @package    Storage
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 */
class Storage_Service_Scheme_Extended implements Storage_Service_Scheme_Interface
{
  public function generate(array $params)
  {
    if( empty($params['parent_type']) )
    {
      throw new Storage_Model_Exception('Unspecified resource parent type');
    }

    if( empty($params['parent_id']) || !is_numeric($params['parent_id']) )
    {
      throw new Storage_Model_Exception('Unspecified resource parent id');
    }

    if( empty($params['file_id']) || !is_numeric($params['file_id']) )
    {
      throw new Storage_Model_Exception('Unspecified resource identifier');
    }

    if( empty($params['extension']) )
    {
      throw new Storage_Model_Exception('Unspecified resource extension');
    }

    extract($params);

    $subdir1 = ( (int) $parent_id + 999999 - ( ( (int) $parent_id - 1 ) % 1000000) );
    $subdir2 = ( (int) $parent_id + 999    - ( ( (int) $parent_id - 1 ) % 1000   ) );

    return 'public' . '/'
      . strtolower($parent_type) . '/'
      . $subdir1 . '/'
      . $subdir2 . '/'
      . $parent_id . '/'
      . $file_id . '.'
      . strtolower($extension);
  }
}