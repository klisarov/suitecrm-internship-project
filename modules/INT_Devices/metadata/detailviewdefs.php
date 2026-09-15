<?php

$viewdefs['INT_Devices']['DetailView'] = [
    'templateMeta' => [
        'form' => [
            'buttons' => [
                'EDIT',
                'DUPLICATE',
                'DELETE',
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
    ],

    'panels' => [
        'lbl_record_body' => [
            [
                [
                    'name' => 'asset_code',
                    'label' => 'LBL_ASSET_CODE',
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
                ],
            ],
        ],
    ],
];
