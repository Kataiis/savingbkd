<?php
/**
 * @subpackage  mod_newsbloglayout
 *
 * @copyright   Copyright (C) 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JLoader::register('ModTopactualnewsproHelper', __DIR__ . '/helper.php');

$list            = ModTopactualnewsproHelper::getList($params);
$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'), ENT_COMPAT, 'UTF-8');

require JModuleHelper::getLayoutPath('mod_newsbloglayout', $params->get('layout', 'default'));