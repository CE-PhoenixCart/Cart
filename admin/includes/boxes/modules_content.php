<?php
/*
  $Id$

  CE Phoenix, E-Commerce made Easy
  https://phoenixcart.org

  Copyright (c) 2021 Phoenix Cart

  Released under the GNU General Public License
*/

  foreach ( $cl_box_groups as &$group ) {
    if ( $group['heading'] == BOX_HEADING_MODULES ) {
      $group['apps'][] = [
        'code' => 'modules_content.php',
        'title' => MODULES_ADMIN_MENU_MODULES_CONTENT,
        'link' => $GLOBALS['Admin']->link('modules_content.php'),
      ];

      break;
    }
  }
