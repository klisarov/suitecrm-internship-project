<?php
$searchdefs['INT_Employees'] = [
    'templateMeta' => [
        'maxColumns' => 3,
        'widths' => [
            'label' => '10',
            'field' => '30',
        ],
    ],
    'layout' => [
        'basic_search' => [
            'employee_code' => [
                'name' => 'employee_code',
                'label' => 'LBL_EMPLOYEE_CODE',
            ],
            'first_name' => [
                'name' => 'first_name',
                'label' => 'LBL_FIRST_NAME',
            ],
            'last_name' => [
                'name' => 'last_name',
                'label' => 'LBL_LAST_NAME',
            ],
        ],
        'advanced_search' => [
            'employee_code' => [
                'name' => 'employee_code',
                'label' => 'LBL_EMPLOYEE_CODE',
            ],
            'first_name' => [
                'name' => 'first_name',
                'label' => 'LBL_FIRST_NAME',
            ],
            'last_name' => [
                'name' => 'last_name',
                'label' => 'LBL_LAST_NAME',
            ],
            'email' => [
                'name' => 'email',
                'label' => 'LBL_EMAIL',
            ],
            'status' => [
                'name' => 'status',
                'label' => 'LBL_STATUS',
            ],
        ],
    ],
];
