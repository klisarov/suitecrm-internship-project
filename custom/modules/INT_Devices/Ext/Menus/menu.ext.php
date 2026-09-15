<?php 
 //WARNING: The contents of this file are auto-generated


global $mod_strings;

if (ACLController::checkAccess('INT_Devices', 'edit', true)) {
    $module_menu[] = [
        'index.php?module=INT_Devices&action=EditView&return_module=INT_Devices&return_action=index',
        $mod_strings['LNK_NEW_DEVICE'],
        'Create',
        'INT_Devices',
    ];
}

if (ACLController::checkAccess('INT_Devices', 'list', true)) {
    $module_menu[] = [
        'index.php?module=INT_Devices&action=index&return_module=INT_Devices&return_action=DetailView',
        $mod_strings['LNK_DEVICE_LIST'],
        'List',
        'INT_Devices',
    ];
}

?>