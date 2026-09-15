<?php

$viewdefs['INT_Devices']['EditView'] = [
    'templateMeta' => [
        'form' => [
            'buttons' => [
                'SAVE',
                'CANCEL',
            ],
        ],
        'maxColumns' => '2',
        'widths' => [
            [
                'label' => '10',
                'field' => '30',
            ],
            [
                'label' => '10',
                'field' => '30',
            ],
        ],
        'includes' => [
            ['file' => 'modules/INT_Devices/javascript/int_devices.js'],
        ],
    ],

    'panels' => [
        'lbl_record_body' => [
            [
                [
                    'name' => 'asset_code',
                    'label' => 'LBL_ASSET_CODE',
                    'displayParams' => [
                        'required' => true,
                    ],
                ],
                [
                    'name' => 'device_type',
                    'label' => 'LBL_DEVICE_TYPE',
                ],
            ],
            [
                [
                    'name' => 'status',
                    'label' => 'LBL_STATUS',
                ],
                [
                    'name' => 'manufacturer',
                    'label' => 'LBL_MANUFACTURER',
                ],
            ],
            [
                [
                    'name' => 'model',
                    'label' => 'LBL_MODEL',
                ],
                [
                    'name' => 'serial_number',
                    'label' => 'LBL_SERIAL_NUMBER',
                ],
            ],
            [
                [
                    'name' => 'imei',
                    'label' => 'LBL_IMEI',
                ],
                [
                    'name' => 'purchase_date',
                    'label' => 'LBL_PURCHASE_DATE',
                ],
            ],
            [
                [
                    'name' => 'notes',
                    'label' => 'LBL_NOTES',
                    'displayParams' => [
                        'rows' => 4,
                        'cols' => 60,
                    ],
                ],
                [
                    'name' => 'int_employees_int_devices_1_name',
                ],
            ],
        ],
    ],
];
