////init datepickers
//$('.date-picker').datepicker({
//    rtl: App.isRTL(),
//    autoclose: true
//});

////init datetimepickers
//$(".datetime-picker").datetimepicker({
//    isRTL: App.isRTL(),
//    autoclose: true,
//    todayBtn: true,
//    pickerPosition: (App.isRTL() ? "bottom-right" : "bottom-left"),
//    minuteStep: 10
//});

jQuery(document).ready(function() {

    $(".OrderBy").TouchSpin({
        verticalbuttons: true
    });

    //$('.ckeditor').ckeditor();
    $('.timepicker').timepicker();
    $('.datepicker').datepicker();
});
jQuery(document).ready(function() {

    $(".Price").TouchSpin({
        verticalbuttons: true,
        min: 0,
        max: 1000000000,
        step: 0.1,
        decimals: 2,
    });
});
jQuery(document).ready(function() {

    $(".Num").TouchSpin({
        verticalbuttons: true,
        min: 0,
        max: 10000000,
        step: 1
    });
});

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}




function MessageShow(msg) {
    bootbox.dialog({
        message: msg,
        buttons: {
            "success": {
                "label": "OK",
                "className": "btn-sm btn-primary"
            }
        }
    });
}


function window_open(URL, w, h) {
    // Fixes dual-screen position                         Most browsers      Firefox
    var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
    var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;

    var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

    var left = ((width / 2) - (w / 2)) + dualScreenLeft;
    var top = ((height / 2) - (h / 2)) + dualScreenTop;
    var newWindow = window.open(URL, null, "directories=no,height=" + h + ",width=" + w + ', top=' + top + ', left=' + left + ",status=no,toolbar=no,menubar=no,location=no, scrollbars=yes");

    // Puts focus on the newWindow
    if (window.focus) {
        newWindow.focus();
    }
}
