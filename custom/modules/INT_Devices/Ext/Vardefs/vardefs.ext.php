<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2026-09-15 09:16:35
$dictionary["INT_Device"]["fields"]["int_employees_int_devices_1"] = array (
  'name' => 'int_employees_int_devices_1',
  'type' => 'link',
  'relationship' => 'int_employees_int_devices_1',
  'source' => 'non-db',
  'module' => 'INT_Employees',
  'bean_name' => 'INT_Employee',
  'vname' => 'LBL_INT_EMPLOYEES_INT_DEVICES_1_FROM_INT_EMPLOYEES_TITLE',
  'id_name' => 'int_employees_int_devices_1int_employees_ida',
);
$dictionary["INT_Device"]["fields"]["int_employees_int_devices_1_name"] = array (
  'name' => 'int_employees_int_devices_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_INT_EMPLOYEES_INT_DEVICES_1_FROM_INT_EMPLOYEES_TITLE',
  'save' => true,
  'id_name' => 'int_employees_int_devices_1int_employees_ida',
  'link' => 'int_employees_int_devices_1',
  'table' => 'int_employees',
  'module' => 'INT_Employees',
  'rname' => 'name',
);
$dictionary["INT_Device"]["fields"]["int_employees_int_devices_1int_employees_ida"] = array (
  'name' => 'int_employees_int_devices_1int_employees_ida',
  'type' => 'link',
  'relationship' => 'int_employees_int_devices_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_INT_EMPLOYEES_INT_DEVICES_1_FROM_INT_DEVICES_TITLE',
);

?>