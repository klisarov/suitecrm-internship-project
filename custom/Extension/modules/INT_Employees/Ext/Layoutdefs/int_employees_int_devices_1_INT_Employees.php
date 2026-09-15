<?php
$layout_defs["INT_Employees"]["subpanel_setup"]['int_employees_int_devices_1'] = array (
  'order' => 100,
  'module' => 'INT_Devices',
  'subpanel_name' => 'int_employee',
  'sort_order' => 'asc',
  'sort_by' => 'asset_code',
  'title_key' => 'LBL_INT_EMPLOYEES_INT_DEVICES_1_FROM_INT_DEVICES_TITLE',
  'get_subpanel_data' => 'int_employees_int_devices_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);