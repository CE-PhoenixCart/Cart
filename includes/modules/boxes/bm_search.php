<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2013 osCommerce

  Released under the GNU General Public License
*/

  class bm_search {
    var $code = 'bm_search';
    var $group = 'boxes';
    var $title;
    var $description;
    var $sort_order;
    var $enabled = false;

    function bm_search() {
      $this->title = MODULE_BOXES_SEARCH_TITLE;
      $this->description = MODULE_BOXES_SEARCH_DESCRIPTION;

      if ( defined('MODULE_BOXES_SEARCH_STATUS') ) {
        $this->sort_order = MODULE_BOXES_SEARCH_SORT_ORDER;
        $this->enabled = (MODULE_BOXES_SEARCH_STATUS == 'True');

        switch (MODULE_BOXES_SEARCH_CONTENT_PLACEMENT) {
          case 'Left Column':
          $this->group = 'boxes_column_left';
          break;
          case 'Header':
          $this->group = 'boxes_header';
          break;
          default:
          $this->group = 'boxes_column_right';
        }
        
      }
    }

    function execute() {
      global $request_type, $oscTemplate;

      if ($this->group == 'boxes_header') {
        $data = '<div class="col-sm-6">' . tep_navbar_search('btn-info', false) . '</div>';
      }
      else {
        $data = '<div class="panel panel-default">' .
                '  <div class="panel-heading">' . MODULE_BOXES_SEARCH_BOX_TITLE . '</div>' .
                '  <div class="panel-body text-center">' .
                '    ' . tep_draw_form('quick_find', tep_href_link(FILENAME_ADVANCED_SEARCH_RESULT, '', $request_type, false), 'get') .
                '    <div class="input-group">' .
                '    ' . tep_draw_input_field('keywords', '', 'required class="form-control" placeholder="' . TEXT_SEARCH_PLACEHOLDER . '"') .
                '      <span class="input-group-btn"><button type="submit" class="btn btn-search"><i class="glyphicon glyphicon-search"></i></button></span>' .
                '    </div>' . tep_draw_hidden_field('search_in_description', '0') . tep_hide_session_id() . '<br />' . MODULE_BOXES_SEARCH_BOX_TEXT . '<br /><a href="' . tep_href_link(FILENAME_ADVANCED_SEARCH) . '"><strong>' . MODULE_BOXES_SEARCH_BOX_ADVANCED_SEARCH . '</strong></a>' .
                '    </form>' .
                '  </div>' .
                '</div>';
      }

      $oscTemplate->addBlock($data, $this->group);
    }

    function isEnabled() {
      return $this->enabled;
    }

    function check() {
      return defined('MODULE_BOXES_SEARCH_STATUS');
    }

    function install() {
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Enable Search Module', 'MODULE_BOXES_SEARCH_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', 'tep_cfg_select_option(array(\'True\', \'False\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Content Placement', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'Header', 'Should the module be loaded in the left or right column or directly in the header?', '6', '1', 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\', \'Header\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Sort Order', 'MODULE_BOXES_SEARCH_SORT_ORDER', '10010', 'Sort order of display. Lowest is displayed first.', '6', '0', now())");
    }

    function remove() {
      tep_db_query("delete from " . TABLE_CONFIGURATION . " where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }

    function keys() {
      return array('MODULE_BOXES_SEARCH_STATUS', 'MODULE_BOXES_SEARCH_CONTENT_PLACEMENT', 'MODULE_BOXES_SEARCH_SORT_ORDER');
    }
  }
?>
