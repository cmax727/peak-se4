<?php
/**
 * SocialEngine
 *
 * @category   Application_Theme
 * @package    Digita
 * @copyright  Copyright 2006-2010 Webligo Developments
 * @license    http://www.socialengine.net/license/
 * @version    $Id: manifest.php 9461 2011-11-01 20:12:52Z john $
 * @author     Bryan
 */

return array(
  'package' => array(
    'type' => 'theme',
    'name' => 'digita',
    'version' => '4.1.8p1',
    'revision' => '$Revision: 9461 $',
    'path' => 'application/themes/digita',
    'repository' => 'socialengine.net',
    'title' => 'Digita',
    'thumb' => 'digita.jpg',
    'author' => 'Webligo Developments',
    'changeLog' => array(
      '4.1.8p1' => array(
        'manifest.php' => 'Incremented version',
        'theme.css' => 'Fixed issue with new pages in the layout editor',
      ),
      '4.1.8' => array(
        'manifest.php' => 'Incremented version',
        'mobile.css' => 'Added styles for HTML5 input elements',
        'theme.css' => 'Added styles for HTML5 input elements',
      ),
    ),
    'actions' => array(
      'install',
      'upgrade',
      'refresh',
      'remove',
    ),
    'callback' => array(
      'class' => 'Engine_Package_Installer_Theme',
    ),
    'directories' => array(
      'application/themes/digita',
    ),
  ),
  'files' => array(
    'theme.css',
    'constants.css',
  ),
) ?>