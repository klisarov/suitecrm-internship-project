(function ($) {
    'use strict';

    var INT_Devices = {

        init: function () {
            INT_Devices.handleDeviceType();
            INT_Devices.autoGenerateAssetCode();
        },

        handleDeviceType: function () {
            var $deviceType = $('#device_type');
            var $imeiContainer = $('[data-field="imei"]');

            function toggleImei() {
                var type = $deviceType.val();
                if (type === 'Phone' || type === 'Tablet') {
                    $imeiContainer.show();
                } else {
                    $imeiContainer.hide();
                    $('input[name="imei"]').val('');
                }
            }

            toggleImei();

            $deviceType.on('change', function () {
                toggleImei();
            });
        },

        autoGenerateAssetCode: function () {
            var $assetCode = $('input[name="asset_code"]');

            if ($assetCode.val() !== '') {
                return;
            }

            $.ajax({
                url: 'index.php?entryPoint=GetNextAssetCode',
                type: 'GET',
                dataType: 'json',
                success: function (data) {
                    if (data && data.asset_code) {
                        $assetCode.val(data.asset_code);
                    }
                },
                error: function (xhr) {
                    console.error('Failed to fetch next asset code:', xhr.responseText);
                }
            });
        }
    };

    // Use setTimeout to ensure SuiteCRM's ajax page is fully rendered
    $(document).ready(function () {
        setTimeout(function() {
            INT_Devices.init();
        }, 500);
    });

}(jQuery));
