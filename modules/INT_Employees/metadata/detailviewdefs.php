<?php

$viewdefs['INT_Employees']['DetailView'] = [
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
                    'name' => 'employee_code',
                    'label' => 'LBL_EMPLOYEE_CODE',
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
                ],
                [
                    'name' => 'last_name',
                    'label' => 'LBL_LAST_NAME',
                ],
            ],

            [
                [
                    'name' => 'email',
                    'label' => 'LBL_EMAIL',
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
                ],
            ],
        ],
    ],
];