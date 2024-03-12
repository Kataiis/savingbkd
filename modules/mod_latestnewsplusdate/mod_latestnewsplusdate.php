<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_latestnewsplusdate
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * 
 * @subpackage	mod_latestnewsplusdate
 * @author     	TemplatePlazza
 * @link 		http://www.templateplazza.com
 */

defined('_JEXEC') or die;

//J3 Part
JLoader::register('LatestNewsPlusDateHelper', __DIR__ . '/Helper/LatestNewsPlusDateHelper.php');
$list = LatestNewsPlusDateHelper::getList($params);

$count_intro = $params->get('numofintrotext', 1);
$thumb_width = $params->get('thumb_width', 56);
$thumb_height = $params->get('thumb_height', 56);
$thumb_loadorder = $params->get('loadorder', 0);
$introtext_truncate = $params->get('limit_intro', 200);
$show_morecat_links = $params->get('show_more_in', 1);
$show_date = $params->get('show_date', 1);
$show_date_type = $params->get('show_date_type', 1);
$custom_date_format = $params->get('custom_date_format', "");
$show_default_thumb = $params->get('show_default_thumb', 0);

// Get timezone 
//$config = JFactory::getConfig();
//$offset = $config->get('offset');


$modulebase = "mod_latestnewsplusdate";
$thumb_folder ="/images/thumbnails/".$modulebase."/";

$doc = JFactory::getDocument();
$doc->addStyleSheet(JURI::base(true).'/modules/'.$modulebase.'/tmpl/assets/style.min.css');
require JModuleHelper::getLayoutPath($modulebase, $params->get('layout', 'default'));

