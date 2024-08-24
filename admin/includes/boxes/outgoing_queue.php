<?php
/*
  $Id$

  CE Phoenix, E-Commerce made Easy
  https://phoenixcart.org

  Copyright (c) 2024 Phoenix Cart

  Released under the GNU General Public License
*/

  foreach ( $cl_box_groups as &$group ) {
    if ( $group['heading'] == BOX_HEADING_OUTGOING_EMAIL ) {
      $group['apps'][] = ['code' => 'outgoing.php',
                          'title' => MODULES_ADMIN_MENU_OUTGOING_EMAIL_QUEUE,
                          'link' => $GLOBALS['Admin']->link('outgoing.php')];

      break;
    }
  }
  