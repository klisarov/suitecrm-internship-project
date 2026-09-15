<?php

$hook_array['before_save'][] = [
    1,
    'Set employee name',
    'modules/INT_Employees/logic_hooks/INT_EmployeeLogicHooks.php',
    'INT_EmployeeLogicHooks',
    'setEmployeeName',
];