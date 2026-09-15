<?php
$viewdefs ['INT_Devices'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_record_body' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'asset_code',
            'label' => 'LBL_ASSET_CODE',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 
          array (
            'name' => 'device_type',
            'label' => 'LBL_DEVICE_TYPE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'status',
            'label' => 'LBL_STATUS',
          ),
          1 => 
          array (
            'name' => 'manufacturer',
            'label' => 'LBL_MANUFACTURER',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'model',
            'label' => 'LBL_MODEL',
          ),
          1 => 
          array (
            'name' => 'serial_number',
            'label' => 'LBL_SERIAL_NUMBER',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'imei',
            'label' => 'LBL_IMEI',
          ),
          1 => 
          array (
            'name' => 'purchase_date',
            'label' => 'LBL_PURCHASE_DATE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'notes',
            'label' => 'LBL_NOTES',
            'displayParams' => 
            array (
              'rows' => 4,
              'cols' => 60,
            ),
          ),
          1 => 
          array (
            'name' => 'int_employees_int_devices_1_name',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'int_employees_int_devices_1_name',
          ),
        ),
      ),
    ),
  ),
);
;
?>
