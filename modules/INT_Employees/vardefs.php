<?php

$dictionary['INT_Employee'] = [
    'table' => 'int_employees',
    'audited' => true,

    'fields' => [

        'id' => [
            'name' => 'id',
            'vname' => 'LBL_ID',
            'type' => 'id',
            'required' => true,
            'source' => 'db',
        ],

        'date_entered' => [
            'name' => 'date_entered',
            'vname' => 'LBL_DATE_ENTERED',
            'type' => 'datetime',
            'required' => true,
            'source' => 'db',
        ],

        'date_modified' => [
            'name' => 'date_modified',
            'vname' => 'LBL_DATE_MODIFIED',
            'type' => 'datetime',
            'required' => true,
            'source' => 'db',
        ],

        'modified_user_id' => [
            'name' => 'modified_user_id',
            'vname' => 'LBL_MODIFIED_USER_ID',
            'type' => 'relate',
            'reportable' => false,
            'source' => 'db',
            'len' => 36,
        ],

        'created_by' => [
            'name' => 'created_by',
            'vname' => 'LBL_CREATED',
            'type' => 'relate',
            'reportable' => false,
            'source' => 'db',
            'len' => 36,
        ],

        'deleted' => [
            'name' => 'deleted',
            'vname' => 'LBL_DELETED',
            'type' => 'bool',
            'default' => '0',
            'required' => true,
            'source' => 'db',
        ],

        'name' => [
            'name' => 'name',
            'vname' => 'LBL_NAME',
            'type' => 'name',
            'dbType' => 'varchar',
            'len' => 255,
            'required' => true,
            'unified_search' => true,
        ],

        'employee_code' => [
            'name' => 'employee_code',
            'vname' => 'LBL_EMPLOYEE_CODE',
            'type' => 'varchar',
            'len' => 50,
            'required' => true,
            'unified_search' => true,
        ],

        'first_name' => [
            'name' => 'first_name',
            'vname' => 'LBL_FIRST_NAME',
            'type' => 'varchar',
            'len' => 100,
            'required' => true,
            'unified_search' => true,
        ],

        'last_name' => [
            'name' => 'last_name',
            'vname' => 'LBL_LAST_NAME',
            'type' => 'varchar',
            'len' => 100,
            'required' => true,
            'unified_search' => true,
        ],

        'email' => [
            'name' => 'email',
            'vname' => 'LBL_EMAIL',
            'type' => 'varchar',
            'len' => 150,
            'required' => true,
            'unified_search' => true,
        ],

        'phone' => [
            'name' => 'phone',
            'vname' => 'LBL_PHONE',
            'type' => 'varchar',
            'len' => 50,
            'unified_search' => true,
        ],

        'job_title' => [
            'name' => 'job_title',
            'vname' => 'LBL_JOB_TITLE',
            'type' => 'varchar',
            'len' => 100,
            'unified_search' => true,
        ],

        'status' => [
            'name' => 'status',
            'vname' => 'LBL_STATUS',
            'type' => 'enum',
            'options' => 'int_employee_status_dom',
            'required' => true,
            'default' => 'Active',
        ],

        'hire_date' => [
            'name' => 'hire_date',
            'vname' => 'LBL_HIRE_DATE',
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
            'name' => 'idx_int_employees_employee_code',
            'type' => 'index',
            'fields' => ['employee_code'],
        ],

        [
            'name' => 'idx_int_employees_email',
            'type' => 'index',
            'fields' => ['email'],
        ],
    ],
];