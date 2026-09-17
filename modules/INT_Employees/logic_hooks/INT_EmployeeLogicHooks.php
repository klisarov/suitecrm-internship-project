<?php

class INT_EmployeeLogicHooks {

    public function setEmployeeName($bean, $event, $arguments) {
        $bean->name = trim($bean->first_name . ' ' . $bean->last_name);
    }

    public function unlinkDevicesIfInactive($bean, $event, $arguments) {
        $GLOBALS['log']->fatal('INT_EMPLOYEE HOOK: status is ' . $bean->status);

        if ($bean->status !== 'Inactive') {
            $GLOBALS['log']->fatal('INT_EMPLOYEE HOOK: status is not Inactive, skipping');
            return;
        }

        $GLOBALS['log']->fatal('INT_EMPLOYEE HOOK: unlinking devices for employee ' . $bean->id);

        $bean->load_relationship('int_employees_int_devices_1');
        $devices = $bean->int_employees_int_devices_1->getBeans();

        $GLOBALS['log']->fatal('INT_EMPLOYEE HOOK: found ' . count($devices) . ' devices');

        foreach ($devices as $device) {
            $GLOBALS['log']->fatal('INT_EMPLOYEE HOOK: unlinking device ' . $device->id);	
            $bean->int_employees_int_devices_1->remove($device);
        }
    }
}
