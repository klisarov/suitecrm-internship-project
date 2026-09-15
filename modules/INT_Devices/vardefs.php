<?php

$dictionary['INT_Device'] = [
    'table' => 'int_devices',
    'audited' => true,

    'fields' => [

        'id' => [
            'name' => 'id',
            'vname' => 'LBL_ID',
            'type' => 'id',
            'required' => true,
            'source' => 'db',
        ],

        'asset_code' => [
            'name' => 'asset_code',
            'vname' => 'LBL_ASSET_CODE',
            'type' => 'varchar',
            'len' => 50,
            'required' => true,
            'unified_search' => true,
        ],

        'device_type' => [
            'name' => 'device_type',
            'vname' => 'LBL_DEVICE_TYPE',
            'type' => 'enum',
            'options' => 'int_device_type_dom',
            'required' => true,
        ],

        'status' => [
            'name' => 'status',
            'vname' => 'LBL_STATUS',
            'type' => 'enum',
            'options' => 'int_device_status_dom',
            'default' => 'Active',
        ],

        'manufacturer' => [
            'name' => 'manufacturer',
            'vname' => 'LBL_MANUFACTURER',
            'type' => 'varchar',
            'len' => 100,
            'unified_search' => true,
        ],

        'model' => [
            'name' => 'model',
            'vname' => 'LBL_MODEL',
            'type' => 'varchar',
            'len' => 100,
            'unified_search' => true,
        ],

        'serial_number' => [
            'name' => 'serial_number',
            'vname' => 'LBL_SERIAL_NUMBER',
            'type' => 'varchar',
            'len' => 100,
            'unified_search' => true,
        ],

        'imei' => [
            'name' => 'imei',
            'vname' => 'LBL_IMEI',
            'type' => 'varchar',
            'len' => 30,
            'unified_search' => true,
        ],

        'purchase_date' => [
            'name' => 'purchase_date',
            'vname' => 'LBL_PURCHASE_DATE',
            'type' => 'date',
        ],

        'notes' => [
            'name' => 'notes',
            'vname' => 'LBL_NOTES',
            'type' => 'text',
        ],
    ],

    'indices' => [

        [
            'name' => 'idx_int_devices_asset_code',
            'type' => 'index',
            'fields' => ['asset_code'],
        ],

        [
            'name' => 'idx_int_devices_serial',
            'type' => 'index',
            'fields' => ['serial_number'],
        ],
    ],
];