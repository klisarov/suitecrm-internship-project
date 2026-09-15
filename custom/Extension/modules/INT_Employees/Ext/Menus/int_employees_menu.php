<?php
global $mod_strings;

if (ACLController::checkAccess('INT_Employees', 'edit', true)) {
    $module_menu[] = [
        'index.php?module=INT_Employees&action=EditView&return_module=INT_Employees&return_action=index',
        $mod_strings['LNK_NEW_EMPLOYEE'],
        'Create',
        'INT_Employees',
    ];
}

if (ACLController::checkAccess('INT_Employees', 'list', true)) {
    $module_menu[] = [
        'index.php?module=INT_Employees&action=index&return_module=INT_Employees&return_action=DetailView',
        $mod_strings['LNK_EMPLOYEE_LIST'],
        'List',
        'INT_Employees',
    ];
}


