<?php
/**
 * 
 *
 * @category   Application_Extensions
 * @package    Marketplace
 * @copyright  Copyright 2006-2010
 * * 
 * @version    $Id: Core.php 7244 2010-09-01 01:49:53Z john $
 * 
 */

/**
 * @category   Application_Extensions
 * @package    Marketplace
 * @copyright  Copyright 2006-2010
 * * 
 */
class Marketplace_Api_Core extends Core_Api_Abstract
{
  const IMAGE_WIDTH = 720;
  const IMAGE_HEIGHT = 720;

  const THUMB_WIDTH = 140;
  const THUMB_HEIGHT = 160;

  private $_temp = null;
  public $_arr = array();
  public $_inarr = array();
	

  public function moduleIsInstalled($module_name = 'marketplace'){
    $db = Engine_Db_Table::getDefaultAdapter();
    $select = $db->select()
      ->from('engine4_core_modules')
      ->where('name = ?', strtolower($module_name))
      ->where('enabled = ?', 1);

    $module = $db->fetchRow($select);
	if($module){
		return true;
	}else{
		return false;
	}
  }

  public function cartIsActive(){
	if(Engine_Api::_()->marketplace()->moduleIsInstalled('marketplacecart')){
		return true;
	}else{
		return false;
	}
  }

  public function upsIsActive(){
	if(Engine_Api::_()->marketplace()->moduleIsInstalled('marketplaceups')){
		return true;
	}else{
		return false;
	}
  }

  public function couponIsActive(){
	if(Engine_Api::_()->marketplace()->moduleIsInstalled('marketplacecoupons')){
		return true;
	}else{
		return false;
	}
  }

  public function authorizeIsActive(){
	if(Engine_Api::_()->marketplace()->moduleIsInstalled('marketplaceauthorize')){
		return true;
	}else{
		return false;
	}
  }

  public function paymentGateway(){
	if($this->authorizeIsActive()){
		return 'authorize';
	}else{
		return 'paypal';
	}
  }

  public function getDiscountPercentByOwner($owner_id = 0, $buyer_id = 0){
	if(empty($owner_id) || empty($buyer_id))
		return 0;
	$buyer = Engine_Api::_()->getItem('user', $buyer_id);
	$discount = 0;
	if(Engine_Api::_()->marketplace()->couponIsActive()){
		$couponTable = Engine_Api::_()->getDbTable('coupons', 'marketplace');
		$couponTableName = $couponTable->info('name');
		$couponcartTable = Engine_Api::_()->getDbTable('couponcarts', 'marketplace');
		$couponcartTableName = $couponcartTable->info('name');
		$coupon_select = $couponTable->getAdapter()
			->select()
			->from($couponcartTableName)
			->joinLeft($couponTableName, "`{$couponTableName}`.coupon_id = `{$couponcartTableName}`.coupon_id")
			->where("{$couponcartTableName}.user_id = ?", $buyer->getIdentity())
			->where("{$couponTableName}.user_id = ?", $owner_id)
		;
		$this->view->coupon_res = $coupon_res = $couponTable->getAdapter()->fetchRow($coupon_select);
		if($coupon_res){
			$discount = intval($coupon_res['percent']);
		}
	}
	return $discount;
 }

  public function getDiscount($marketplace_id = 0, $buyer_id = 0){
	if(empty($marketplace_id) || empty($buyer_id))
		return 0;
	$buyer = Engine_Api::_()->getItem('user', $buyer_id);
	$discount = 0;
	if(Engine_Api::_()->marketplace()->couponIsActive()){
		$marketplace = Engine_Api::_()->getItem('marketplace', $marketplace_id);
		if(empty($marketplace))
			return 0;
		$couponTable = Engine_Api::_()->getDbTable('coupons', 'marketplace');
		$couponTableName = $couponTable->info('name');
		$couponcartTable = Engine_Api::_()->getDbTable('couponcarts', 'marketplace');
		$couponcartTableName = $couponcartTable->info('name');
		$coupon_select = $couponTable->getAdapter()
			->select()
			->from($couponcartTableName)
			->joinLeft($couponTableName, "`{$couponTableName}`.coupon_id = `{$couponcartTableName}`.coupon_id")
			->where("{$couponcartTableName}.user_id = ?", $buyer->getIdentity())
			->where("{$couponTableName}.user_id = ?", $marketplace->getOwner()->getIdentity())
		;
		$this->view->coupon_res = $coupon_res = $couponTable->getAdapter()->fetchRow($coupon_select);
		if($coupon_res){
			$discount = intval($coupon_res['percent']);
		}
	}else{
		return 0;
	}
	return $marketplace->price * ($discount / 100);
 }

  public function getShipingFee($marketplace_id = 0, $buyer_id = 0){
	$flat_shipping_rate = floatval(Engine_Api::_()->getApi('settings', 'core')->getSetting('flat.shipping.rate', 0));
	if(empty($marketplace_id) || empty($buyer_id) || !Engine_Api::_()->marketplace()->upsIsActive()){
		return $flat_shipping_rate;
	}
	$buyer = Engine_Api::_()->getItem('user', $buyer_id);
	if($buyer->getIdentity()){
		$buyer_zip_code = $this->getUserFieldValueByTitle($buyer, 'zip code');
	}
	$marketplace = Engine_Api::_()->getItem('marketplace', $marketplace_id);
	if(empty($marketplace)){
		return $flat_shipping_rate;
	}
	if($marketplace->getOwner()->getIdentity()){
		$seller_zip = $this->getUserFieldValueByTitle($marketplace->getOwner(), 'zip code');
	}
	if(empty($buyer_zip_code) || empty($seller_zip))
		return $flat_shipping_rate;
	$rate = Engine_Api::_()->marketplaceups()->ups($buyer_zip_code, '03', floatval($marketplace->weight), floatval($marketplace->length), floatval($marketplace->width), floatval($marketplace->height), $seller_zip);
	if(floatval($rate)){
		return floatval($rate);
	}else{
		return $flat_shipping_rate;
	}
  }

  public function getUserFieldValueByTitle(User_Model_User $user, $field_title = '')
  {
    if(empty($field_title))
		return null;
	
	$fieldMetaTable = Engine_Api::_()->fields()->getTable('user', 'meta');
	$fieldValuesTable = Engine_Api::_()->fields()->getTable('user', 'values');
	
	$select = $fieldMetaTable->select()
	  ->where('UPPER(label) = UPPER(?)', $field_title)
	  ->limit('1')
	;
	$field_meta_info = $fieldMetaTable->fetchRow($select);
	if(isset($field_meta_info) && $field_meta_info){
		$field_meta_info = $field_meta_info->field_id;
	}else{
		return null;
	}
	
	$select = $fieldValuesTable->select()
	  ->where('item_id = ?', $user->getIdentity())
	  ->where('field_id = ?', $field_meta_info)
	  ->limit('1')
	;
	$viewer_field_info = $fieldMetaTable->fetchRow($select);
	if(isset($viewer_field_info) && $viewer_field_info){
		return $viewer_field_info->value;
	}else{
		return null;
	}
  }
	
  // Select
  /**
   * Gets a paginator for marketplaces
   *
   * @param Core_Model_Item_Abstract $user The user to get the messages for
   * @return Zend_Paginator
   */
  public function getMarketplacesPaginator($params = array(), $customParams = null)
  {
    $paginator = Zend_Paginator::factory($this->getMarketplacesSelect($params, $customParams));
    if( !empty($params['page']) )
    {
      $paginator->setCurrentPageNumber($params['page']);
    }
    if( !empty($params['limit']) )
    {
      $paginator->setItemCountPerPage($params['limit']);
    }
    return $paginator;
  }

  /**
   * Gets a select object for the user's marketplace entries
   *
   * @param Core_Model_Item_Abstract $user The user to get the messages for
   * @return Zend_Db_Table_Select
   */
  public function getMarketplacesSelect($params = array(), $customParams = null)
  {
    $table = Engine_Api::_()->getDbtable('marketplaces', 'marketplace');
    $rName = $table->info('name');

    $tmTable = Engine_Api::_()->getDbtable('TagMaps', 'core');
    $tmName = $tmTable->info('name');

	$fieldValuesTable = Engine_Api::_()->fields()->getTable('marketplace', 'values');
    $fieldValuesTableName = $fieldValuesTable->info('name');
	
	if(!empty($params['orderby'])){
		if($params['orderby'] == 'RAND()'){
			$order = $params['orderby'];
		}else{
			$order = $rName.'.'.$params['orderby'].' DESC';
		}
	}else{
		$order = $rName.'.creation_date DESC';
	}
    $select = $table->select()
      ->order( $order );
    
    if( !empty($params['user_id']) && is_numeric($params['user_id']) )
    {
      $select->where($rName.'.owner_id = ?', $params['user_id']);
    }

    if( !empty($params['user']) && $params['user'] instanceof User_Model_User )
    {
      $select->where($rName.'.owner_id = ?', $params['user_id']->getIdentity());
    }

    if( !empty($params['users']) )
    {
      $str = (string) ( is_array($params['users']) ? "'" . join("', '", $params['users']) . "'" : $params['users'] );
      $select->where($rName.'.owner_id in (?)', new Zend_Db_Expr($str));
    }

    if( !empty($params['fields']) && is_array($params['fields']) )
    {
		$select
			->from($rName)
		;
		$field_arr = array();
		$where_arr = array();
		foreach($params['fields'] as $field => $field_value){
			$field_arr = explode('_', $field);
			list($field_id, $option_id, $child_id) = $field_arr;
			if(!empty($child_id) && !empty($field_value)){
				$select
					->joinLeft($fieldValuesTableName.' as v_'.$child_id, "(`v_{$child_id}`.item_id = $rName.marketplace_id) AND (`v_{$child_id}`.field_id = '{$child_id}')", null)
					->where("`v_{$child_id}`.value = ?", $field_value)
				;
			}
		}
	}

    if( !empty($params['tag']) )
    {
      $select
        ->setIntegrityCheck(false)
        ->joinLeft($tmName, "$tmName.resource_id = $rName.marketplace_id")
        ->where($tmName.'.resource_type = ?', 'marketplace')
        ->where($tmName.'.tag_id = ?', $params['tag']);
    }

    if( !empty($params['category']) )
    {
        $select->where($rName.'.category_id in (?)', new Zend_Db_Expr($params['category']));
    }

    if( !empty($params['price_end']) )
    {
      $select->where($rName.'.price <= ?', $params['price_end']);
    }
    if( !empty($params['price_start']) )
    {
      $select->where($rName.'.price >= ?', $params['price_start']);
    }

    if( isset($params['closed']) && $params['closed']!="" )
    {
      $select->where($rName.'.closed = ?', $params['closed']);
    }

    if(!empty($params['featured']))
    {
      $select->where($rName.'.featured = ?', $params['featured']);
    }

    // Could we use the search indexer for this?
    if( !empty($params['search']) )
    {
      $select->where($rName.".title LIKE ? OR ".$rName.".body LIKE ?", '%'.$params['search'].'%');
    }

    if( !empty($params['start_date']) )
    {
      $select->where($rName.".creation_date > ?", date('Y-m-d', $params['start_date']));
    }

    if( !empty($params['end_date']) )
    {
      $select->where($rName.".creation_date < ?", date('Y-m-d', $params['end_date']));
    }
	
    $select->group($rName.".marketplace_id");
	//echo $select->__toString();die();
	
    return $select;
  }


  public function getCategories()
  {
    return Engine_Api::_()->getDbtable('categories', 'marketplace')->fetchAll();
  }

  public function getCategory($category_id)
  {
    return Engine_Api::_()->getDbtable('categories', 'marketplace')->find($category_id)->current();
  }

  public function getCategoriesTree($item = 0)
  {

	$table  = Engine_Api::_()->getDbTable('categories', 'marketplace');
    $rName = $table->info('name');
    $select = $table->select()
                    ->from($rName)
                    ->where($rName.'.parent_id = ?', $item)
                    ->order('category_name')
					;
  

    return $table->fetchAll($select);
  }

 public function tree_list_load_path($k_item)
{


  if(empty($k_item)||!is_numeric($k_item)) return false;

  $a_tree=array();

  while($k_item)
  {


      $category = $this->getCategory($k_item);
    $a_tree=array(
      array(
        'k_item' => $category['category_id'],
        's_name' => $category['category_name'],
        'a_tree' => $a_tree
      ));
    $k_item=$category['parent_id'];
  }

  return $a_tree;
}


public function tree_print(&$a_tree,$model)
{

  if(empty($a_tree)) return;

  
  
  for($i=0;$i<count($a_tree);$i++)
  {
  
    if (!empty($a_tree[$i]['a_tree']))
        echo '<a href="'.$model->url(array('category_id'=>$a_tree[$i]['k_item']), 'marketplace_category', true).'">'.$a_tree[$i]['s_name'].'</a>';
    if (empty($a_tree[$i]['a_tree'])) echo $a_tree[$i]['s_name'];
   
    if (!empty($a_tree[$i]['a_tree'])) echo ' => ';
    $this->tree_print($a_tree[$i]['a_tree'],$model);
   
  }


}

function tree_list_load_level($k_parent)
{
 
 $r = $this->getCategoriesTree($k_parent);

  $a_tree=array();
  

  if ($k_parent == 0)
      $a_tree[]=array(
      'k_item' => 0,
      's_name' => 'All Categories',
      'a_tree' => array()
      );
  foreach ($r as $e)
  {

    $a_tree[]=array(
      'k_item' => $e->category_id,
      's_name' => $e->category_name,
      'a_tree' => array()
      );
  }

  return $a_tree;
}

function tree_list_load_subtree($k_item)
{
  $a_tree=$this->tree_list_load_level($k_item);
  if($a_tree===false) return false;

  for($i=0;$i<count($a_tree);$i++)
  {
    $a=$this->tree_list_load_subtree($a_tree[$i]['k_item']);
    if($a===false) return false;
    $a_tree[$i]['a_tree']=$a;
  }
  return $a_tree;
}


function tree_list_tree(&$a_list, $k_item=0) {
        if (empty($a_list[$k_item]))
            return array();
        $a_tree = array();
        for ($i = 0; $i < count($a_list[$k_item]); $i++) {
            $a_tree[] = array(
                'k_item' => $a_list[$k_item][$i]['category_id'],
                's_name' => $a_list[$k_item][$i]['category_name'],
                'a_tree' => $this->tree_list_tree($a_list, $a_list[$k_item][$i]['category_id'])
            );
        }
        return $a_tree;
    }

    function tree_list_load_all() {
       

        $r = $this->getCategories();
       
        if (!$r)
            return false;

        $a_list = array();
        
        foreach ($r as $key=>$value) {
            if (empty($a_list[$value['parent_id']]))
                $a_list[$value['parent_id']] = array();
            $a_list[$value['parent_id']][] = $value;
        }


        return $this->tree_list_tree($a_list);
    }



function tree_print_category(&$a_tree,$model,$category_id)
{
  if(empty($a_tree)) return;

  echo "<ul>";
  for($i=0;$i<count($a_tree);$i++)
  {
	$cat_title = Zend_Registry::get('Zend_Translate')->_(ucfirst(strtolower(trim($a_tree[$i]['s_name']))));
	if ($a_tree[$i]['k_item'] != $category_id)
		echo '<li><a href="'.$model->url(array('category'=>$a_tree[$i]['k_item']), 'marketplace_browse', true).'">'.$cat_title.'</a>';
    if ($a_tree[$i]['k_item'] == $category_id)
        echo "<li>".$cat_title;
    $this->tree_print_category($a_tree[$i]['a_tree'],$model,$category_id);
    echo "</li>";
  }
  echo "</ul>";
}

function tree_select(&$a_tree,$level,$category_id) {
    
      $level .= '-';
  for($i=0;$i<count($a_tree);$i++)
  {
	$cat_title = Zend_Registry::get('Zend_Translate')->_(ucfirst(strtolower(trim($a_tree[$i]['s_name']))));
    $this->_temp[$a_tree[$i]['k_item']] = ' '.$level.' '.$cat_title;
    $temp[$a_tree[$i]['k_item']] = $cat_title;
    $this->tree_select($a_tree[$i]['a_tree'],$level,$category_id);

  }
  $level = '';

}

function tree_to_array($arr1) {
	$this->_arr[] = array(
		   'k_item' => $arr1[0]['k_item'],
		   's_name' => $arr1[0]['s_name'],
		   'a_tree' => array()//array()//$arr1[0]['a_tree']
	);
	if (is_array($arr1[0]['a_tree']) && count($arr1[0]['a_tree'])>0)
	$this->tree_to_array($arr1[0]['a_tree']);

	return $this->_arr;
}

function tree_temp($path) {

	$a_tree = array();

	$a_tree[][] = $path[0];

	foreach ($path as $k) {

		$a_tree[] = $this->tree_list_load_level($k['k_item']);

	}

	while (count($a_tree)>1) {
		$count = count($a_tree)-2;
		$t1 = &$a_tree[$count];
		$t2 = array_pop($a_tree);

		$k_item = $path[$count]['k_item'];
		foreach ($t2 as &$v) {
			if ($v['k_item'] == $path[count($path)-1]['k_item']) {
				$v['status'] = 1;
				echo 'ok';
			}
		}

		foreach($t1 as &$value) {

			if ($value['k_item'] == $k_item) {

				$value['s_name'] = $value['s_name'];//.' *';
				$value['status'] = 1;
				$value['a_tree'] = $t2;
			}
		}

		array_pop($path);
	}

  return $a_tree[0];
}

 function tree_list_load_array($arr) {
        $ret_array = array();
        $path_array = array();
        $i = 0;
        $level = $this->tree_list_load_level(0);

        array_diff($arr, array(''));

        if (is_array($arr) && count($arr)>=1 && $arr[0]!=0) {
        foreach ($arr as $key) {

            $path_array[] = $this->tree_list_load_path($key);

            $i++;
        }

        $arr = $this->tree_to_array($path_array[0]);

        $tree = $this->tree_temp($arr);

        foreach ($level as &$value) {
            if ($value['k_item'] == $tree[0]['k_item'])
                $value = $tree[0];
        }
        }

      return $level;

    }

    function tree_list($k_item) {
        if (empty($k_item) || !is_numeric($k_item))
            return false;
        $this->_inarr[] = $k_item;

        $table  = Engine_Api::_()->getDbTable('categories', 'marketplace');
    $rName = $table->info('name');
    $select = $table->select()
                    ->from($rName)
                    ->where($rName.'.parent_id = ?', $k_item);


   $arr = $table->fetchAll($select);


   foreach ($arr as $value) {

        $k_item = $value->category_id;
        $this->tree_list($k_item);
   }

        return $this->_inarr;
    }

////////////////////

function tree_list_load_related($k_item)
{
  if(empty($k_item)||!is_numeric($k_item)) return false;

  $r=mysql_query("
    select
      t1.k_parent as k1, #мама
      t2.k_parent as k2  #бабушка
    from
      t_catalog_tree as t1 left join
      t_catalog_tree as t2 on
        t2.k_item=t1.k_parent
    where
      t1.k_item=".$k_item."
    ");

  if(!$r||!mysql_num_rows($r)) return false;
  $f=mysql_fetch_assoc($r);

  $a1=tree_list_load_level($k_item);

  if(empty($f['k1']))
    return $a1;

  $a2=tree_list_load_level($f['k1']);
  if(!$a2) return $a1;

  for($i=0;$i<count($a2);$i++)
  {
    if($a2[$i]['k_item']==$k_item)
    {
      $a2[$i]['k_item']['a_tree']=$a1;
      break;
    }
  }

  if(empty($f['k2'])) return $a2;

  $a1=tree_list_load_path($f['k2']);
  if(!$a1) return $a2;

  $p=&$a1;
  while(count($p['a_tree']))
    $p=&$a1['a_tree'];
  $p['a_tree']=$a2;

  return $a1;
}

public function gettemp() {
    return $this->_temp;
}



public function getUserItemsFromCategories($user_id = 0, $cat_id = 0, $limit = 10)
  {
    $table  = Engine_Api::_()->getDbtable('categories', 'marketplace');
    $table2  = Engine_Api::_()->getDbtable('marketplaces', 'marketplace');
    $iName = $table->info('name');
    $uName = $table2->info('name');

    $select = $table2->select()
      ->setIntegrityCheck(false)
      ->from($uName)
      ->joinLeft($iName, "$uName.category_id = $iName.category_id", null)
      ->group("$uName.marketplace_id")
      ->where($iName.'.category_id = ?', $cat_id)
      ->where($uName.'.owner_id = ?', $user_id)
      ->limit($limit)
	;

    return $table->fetchAll($select);
  }

public function getUserCategories($user_id)
  {
    $table  = Engine_Api::_()->getDbtable('categories', 'marketplace');
    $uName = Engine_Api::_()->getDbtable('marketplaces', 'marketplace')->info('name');
    $iName = $table->info('name');

    $select = $table->select()
      ->setIntegrityCheck(false)
      ->from($iName, array('category_name'))
      ->joinLeft($uName, "$uName.category_id = $iName.category_id")
      ->group("$iName.category_id")
      ->where($uName.'.owner_id = ?', $user_id);

    return $table->fetchAll($select);
  }

  function getArchiveList($user_id = null)
  {

    $table = Engine_Api::_()->getDbtable('marketplaces', 'marketplace');
    $rName = $table->info('name');

    $select = $table->select()
      ->from($rName)
	  ->limit(10)
	;

    if( !empty($params['user_id']) && is_numeric($params['user_id']) )
    {
      $select->where($rName.'.owner_id = ?', $params['user_id']);
    }

    return $table->fetchAll($select);
  }

  public function createPhoto($params, $file)
  {
    if( $file instanceof Storage_Model_File )
    {
      $params['file_id'] = $file->getIdentity();
    }

    else
    {
      // Get image info and resize
      $name = basename($file['tmp_name']);
      $path = dirname($file['tmp_name']);
      $extension = ltrim(strrchr($file['name'], '.'), '.');

      $mainName = $path.'/m_'.$name . '.' . $extension;
      $thumbName = $path.'/t_'.$name . '.' . $extension;

      $image = Engine_Image::factory();
      $image->open($file['tmp_name'])
          ->resize(self::IMAGE_WIDTH, self::IMAGE_HEIGHT)
          ->write($mainName)
          ->destroy();

      $image = Engine_Image::factory();
      $image->open($file['tmp_name'])
          ->resize(self::THUMB_WIDTH, self::THUMB_HEIGHT)
          ->write($thumbName)
          ->destroy();

      // Store photos
      $photo_params = array(
        'parent_id' => $params['marketplace_id'],
        'parent_type' => 'marketplace',
      );

      $photoFile = Engine_Api::_()->storage()->create($mainName, $photo_params);
      $thumbFile = Engine_Api::_()->storage()->create($thumbName, $photo_params);
      $photoFile->bridge($thumbFile, 'thumb.normal');

      $params['file_id'] = $photoFile->file_id; // This might be wrong
      $params['photo_id'] = $photoFile->file_id;

      // Remove temp files
      @unlink($mainName);
      @unlink($thumbName);
      
    }

    $row = Engine_Api::_()->getDbtable('photos', 'marketplace')->createRow();
    $row->setFromArray($params);
    $row->save();
    return $row;
  }


  public function getCurrencySign()
  {
	$currency = Engine_Api::_()->getApi('settings', 'core')->getSetting('marketplace.currency', 'USD');
	switch($currency){
		case 'USD':
			$currency_sign = '$';
			break;
		case 'EUR':
			$currency_sign = '€';
			break;
		case 'GBP':
			$currency_sign = '£';
			break;
		case 'CHF':
			$currency_sign = '₣';
			break;
		default:
			$currency_sign = '$';
			break;
	}
	return $currency_sign;
  }
  
}