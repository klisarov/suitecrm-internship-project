<?php

require_once('data/SugarBean.php');

class INT_Device extends SugarBean
{
    public $new_schema = true;

    public $module_dir = 'INT_Devices';

    public $object_name = 'INT_Device';

    public $table_name = 'int_devices';

    public $importable = true;

    public function __construct()
    {
        parent::__construct();
    }
}