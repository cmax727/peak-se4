<?php
    class Billing_Plugin_Menus
    {
        //core_mini
        public function onMenuInitialize_CoreMiniBilling($row)
        {    
            $viewer = Engine_Api::_()->user()->getViewer();
            if (! $viewer->getIdentity()) 
                return false;    

            //--calculate outstanding invoice
            $invoice_count = "";

            //{"route":"billing_general","module":"billing","controller":"billing","action":"index"}
            return array(
                'label' => Zend_Registry::get('Zend_Translate')->_($row->label) . ( $invoice_count ? ' (' . $invoice_count .')' : '' ),
                'route' => 'billing_general',
                'params' => array(
                    'action' => 'index',
                    'controller' => "billing",
                )
            );
        }

        public function isAdmin()
        {
            $viewer = Engine_Api::_()->user()->getViewer();

            // Must be able to view albums
            //??
            if ( $viewer->isAdmin()) 
                return true;

            return false;
        }
    }
?>
