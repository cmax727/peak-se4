<?php
class Advgroup_Model_DbTable_Membership extends Core_Model_DbTable_Membership
{
  protected $_type = 'group';
  protected $_name = 'group_membership';

  // Configuration

  /**
   * Does membership require approval of the resource?
   *
   * @param Core_Model_Item_Abstract $resource
   * @return bool
   */
  public function isResourceApprovalRequired(Core_Model_Item_Abstract $resource)
  {
    return $resource->approval;
  }
}