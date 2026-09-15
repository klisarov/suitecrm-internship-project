<?php

require_once('data/SugarBean.php');

class INT_Employee extends SugarBean
{
    public $new_schema = true;

    public $module_dir = 'INT_Employees';

    public $object_name = 'INT_Employee';

    public $table_name = 'int_employees';

    public $importable = true;

    public function __construct()
    {
        parent::__construct();
    }

    public function get_summary_text()
    {
        return trim($this->first_name . ' ' . $this->last_name);
    }
}