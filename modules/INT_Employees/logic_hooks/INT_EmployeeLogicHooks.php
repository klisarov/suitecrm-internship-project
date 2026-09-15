<?php

	class INT_EmployeeLogicHooks {
		public function setEmployeeName($bean, $event, $arguments){
			$bean->name = trim($bean->first_name . ' ' . $bean->last_name);
		}
	}
