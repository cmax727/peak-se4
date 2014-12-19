<?php return array (
  'package' => 
  array (
    'type' => 'module',
    'name' => 'billing',
    'version' => '4.0.0',
    'path' => 'application/modules/Billing',
    'title' => 'Billing',
    'description' => 'This is a Invoice-Payment system for Christopher.',
    'author' => 'sasya',
    'callback' => 
    array (
      'class' => 'Engine_Package_Installer_Module',
    ),
    'actions' => 
    array (
      0 => 'install',
      1 => 'upgrade',
      2 => 'refresh',
      3 => 'enable',
      4 => 'disable',
    ),
    'directories' => 
    array (
      0 => 'application/modules/Billing',
    ),
    'files' => 
    array (
      0 => 'application/languages/en/billing.csv',
    ),
  ),
  //?? routes ----------------
  'routes' => array(
  
    'billing_general' => array(
      'route' => 'billing/:action/*',
      'defaults' => array(
        'module' => 'billing',
        'controller' => 'billing',
        'action' => 'index',
      ),
      'reqs' => array(
        'action' => '\D+',
      )
    ),
    
    'billing_admin' => array(
      'route' => 'admin/billing/:action/*',
      'defaults' => array(
        'module' => 'billing',
        'controller' => 'admin-settings',
        'action' => 'index',
      ),
      'reqs' => array(
        
      )
    ),
    
  )
); ?>