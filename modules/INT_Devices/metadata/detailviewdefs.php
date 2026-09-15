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

        [
            'name' => 'LBL_RECORD_BODY',
            'label' => 'LBL_RECORD_BODY',
            'columns' => 2,

            'fields' => [
                'asset_code',
                'device_type',
                'status',
                'manufacturer',
                'model',
                'serial_number',
                'imei',
                'purchase_date',
                'notes',
            ],
        ],
    ],
];