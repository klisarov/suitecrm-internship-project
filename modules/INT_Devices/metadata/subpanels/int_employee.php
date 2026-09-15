<?php

if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

$subpanel_layout = array(
    'top_buttons' => array(
        array('widget_class' => 'SubPanelTopButtonQuickCreate'),
        array('widget_class' => 'SubPanelTopSelectButton', 'mode' => 'MultiSelect'),
    ),
    'where' => '',
    'fill_in_additional_fields' => true,
    'list_fields' => array(
        'asset_code' => array(
            'vname' => 'LBL_LIST_ASSET_CODE',
            'widget_class' => 'SubPanelDetailViewLink',
            'width' => '20%',
            'sortable' => true,
        ),
        'device_type' => array(
            'vname' => 'LBL_LIST_DEVICE_TYPE',
            'width' => '20%',
            'sortable' => true,
        ),
        'status' => array(
            'vname' => 'LBL_LIST_STATUS',
            'width' => '15%',
            'sortable' => true,
        ),
        'manufacturer' => array(
            'vname' => 'LBL_LIST_MANUFACTURER',
            'width' => '20%',
            'sortable' => true,
        ),
        'model' => array(
            'vname' => 'LBL_LIST_MODEL',
            'width' => '25%',
            'sortable' => true,
        ),
        'edit_button' => array(
            'vname' => 'LBL_EDIT_BUTTON',
            'widget_class' => 'SubPanelEditButton',
            'module' => 'INT_Devices',
            'width' => '3%',
        ),
        'remove_button' => array(
            'vname' => 'LBL_REMOVE',
            'widget_class' => 'SubPanelRemoveButton',
            'module' => 'INT_Devices',
            'width' => '3%',
        ),
    ),
);
