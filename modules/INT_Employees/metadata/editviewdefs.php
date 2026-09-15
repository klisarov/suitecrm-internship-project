<?php

$viewdefs['INT_Employees']['EditView'] = [
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
    ],

    'panels' => [
        'lbl_record_body' => [
            [
                [
                    'name' => 'employee_code',
                    'label' => 'LBL_EMPLOYEE_CODE',
                    'displayParams' => [
                        'required' => true,
                    ],
                ],
                [
                    'name' => 'status',
                    'label' => 'LBL_STATUS',
                ],
            ],

            [
                [
                    'name' => 'first_name',
                    'label' => 'LBL_FIRST_NAME',
                    'displayParams' => [
                        'required' => true,
                    ],
                ],
                [
                    'name' => 'last_name',
                    'label' => 'LBL_LAST_NAME',
                    'displayParams' => [
                        'required' => true,
                    ],
                ],
            ],

            [
                [
                    'name' => 'email',
                    'label' => 'LBL_EMAIL',
                    'displayParams' => [
                        'required' => true,
                    ],
                ],
                [
                    'name' => 'phone',
                    'label' => 'LBL_PHONE',
                ],
            ],

            [
                [
                    'name' => 'job_title',
                    'label' => 'LBL_JOB_TITLE',
                ],
                [
                    'name' => 'hire_date',
                    'label' => 'LBL_HIRE_DATE',
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
            ],
        ],
    ],
];
