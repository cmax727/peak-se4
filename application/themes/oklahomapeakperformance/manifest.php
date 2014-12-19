<?php return array (
  'package' => 
  array (
    'type' => 'theme',
    'name' => 'oklahomapeakperformance',
    'version' => NULL,
    'revision' => '$Revision: 9378 $',
    'path' => 'application/themes/oklahomapeakperformance',
    'repository' => 'socialengine.net',
    'title' => 'Oklahoma Peak Performance',
    'thumb' => 'default_theme.jpg',
    'author' => 'Peak',
    'changeLog' => 
    array (
      '4.1.8' => 
      array (
        'manifest.php' => 'Incremented version',
        'mobile.css' => 'Added styles for HTML5 input elements',
        'theme.css' => 'Added styles for HTML5 input elements; added styles for drop-downs in main menu',
      ),
      '4.1.4' => 
      array (
        'mainfest.php' => 'Incremented version',
        'mobile.css' => 'Added new type of stylesheet',
      ),
      '4.1.2' => 
      array (
        'manifest.php' => 'Incremented version; removed deprecated meta key',
        'theme.css' => 'Added styles for liking comments',
      ),
      '4.1.0' => 
      array (
        'manifest.php' => 'Incremented version',
        'theme.css' => 'Style tweaks',
      ),
      '4.0.4' => 
      array (
        'constants.css' => 'Added constant theme_pulldown_contents_list_background_color_active',
        'manifest.php' => 'Incremented version',
        'theme.css' => 'Improved RTL support',
      ),
      '4.0.3' => 
      array (
        'manifest.php' => 'Incremented version',
        'theme.css' => 'Added styles for highlighted text in search',
      ),
      '4.0.2' => 
      array (
        'manifest.php' => 'Incremented version',
        'theme.css' => 'Added styles for delete comment link',
      ),
    ),
    'actions' => 
    array (
      0 => 'install',
      1 => 'upgrade',
      2 => 'refresh',
      3 => 'remove',
    ),
    'callback' => 
    array (
      'class' => 'Engine_Package_Installer_Theme',
    ),
    'directories' => 
    array (
      0 => 'application/themes/default',
    ),
    'description' => '',
  ),
  'files' => 
  array (
    0 => 'theme.css',
    1 => 'constants.css',
  ),
); ?>