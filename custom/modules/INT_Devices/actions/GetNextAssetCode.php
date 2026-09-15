<?php

if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

global $db;

// Get the highest existing asset code number
$query = "SELECT asset_code FROM int_devices WHERE asset_code LIKE 'DEV-%' AND deleted = 0 ORDER BY asset_code DESC LIMIT 1";
$result = $db->query($query);
$row = $db->fetchByAssoc($result);

$nextNumber = 1;
if ($row) {
    // Extract the number from DEV-XXX
    $parts = explode('-', $row['asset_code']);
    if (isset($parts[1]) && is_numeric($parts[1])) {
        $nextNumber = (int)$parts[1] + 1;
    }
}

$nextCode = 'DEV-' . str_pad($nextNumber, 3, '0', STR_PAD_LEFT);

// Return as JSON
header('Content-Type: application/json');
echo json_encode(['asset_code' => $nextCode]);
exit;
