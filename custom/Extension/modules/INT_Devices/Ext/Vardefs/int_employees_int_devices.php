<?php

$dictionary["INT_Device"]["fields"]["int_employ734dint_devices"] = [
    'name' => 'int_employ734dint_devices',
    'type' => 'link',
    'relationship' => 'int_employees_int_devices',
    'source' => 'non-db',
    'module' => 'INT_Employees',
    'bean_name' => 'INT_Employee',
    'side' => 'right',
    'vname' => 'LBL_INT_EMPLOYEES',
];

$dictionary["INT_Device"]["fields"]["int_employf4a0ployees_ida"] = [
    'name' => 'int_employf4a0ployees_ida',
    'type' => 'link',
    'relationship' => 'int_employees_int_devices',
    'source' => 'non-db',
    'reportable' => false,
    'side' => 'right',
    'vname' => 'LBL_INT_EMPLOYEES',
];

$dictionary["INT_Device"]["fields"]["int_employ0744evices_name"] = [
    'name' => 'int_employ0744evices_name',
    'type' => 'relate',
    'source' => 'non-db',
    'vname' => 'LBL_INT_EMPLOYEES',
    'save' => true,
    'id_name' => 'int_employf4a0ployees_ida',
    'link' => 'int_employ734dint_devices',
    'table' => 'int_employees',
    'module' => 'INT_Employees',
    'rname' => 'name',
];