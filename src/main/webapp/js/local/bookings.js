$(function () {

    var row = $("#booking tr:eq(0) ");

    $(row).clone().insertAfter($(row));

    $('#booking tr:eq(0) th:eq(8)').attr("colspan", 6);
    $('#booking tr:eq(0) th:eq(8)').text("продукция");
    $('#booking tr:eq(0) th:eq(9)').remove();
    $('#booking tr:eq(0) th:eq(9)').remove();
    $('#booking tr:eq(0) th:eq(9)').remove();
    $('#booking tr:eq(0) th:eq(9)').remove();
    $('#booking tr:eq(0) th:eq(9)').remove();
    $('#booking tr:eq(0) th:eq(9)').attr("colspan", 2);
    $('#booking tr:eq(0) th:eq(9)').text("обязательства");
    $('#booking tr:eq(0) th:eq(10)').remove();

    $('#booking tr:eq(0) th:eq(0)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(1)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(2)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(3)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(4)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(5)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(6)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(7)').attr("rowspan", 2);
    $('#booking tr:eq(0) th:eq(10)').attr("rowspan", 2);

    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(0)').remove();
    $('#booking tr:eq(1) th:eq(8)').remove();

    $("#employerFilter").autocomplete(
        {
            source: "../customers/listCustomers",
            width: 260,
            selectFirst: false,
            minChars: 3
        });
    $("#booking-filter-form").dialog({
        autoOpen: false,
        height: 550,
        width: 600,
        modal: true,
        resizable: false,
        buttons: {
            'Применить': function () {

                var serialize = $("#bokingFilterForm :input[value!='']").serialize();
                //console.log(serialize);
                //alert(serialize);
                location.replace("../filters/booking/save_filter?" + serialize);

                //var arrayValues = ["users", "purposeFilter", "stateFilter", "currencyFilter"];
                //var data = $("#bokingFilterForm").serializeObject(arrayValues);
                //var value = JSON.stringify(data);
                //$.cookie("booking_filter", value);
                //location.reload();
            },
            'Очистить': function () {
                // alert($('#filterForm').serialize());
                $.removeCookie("booking_filter");

                $(this).dialog('close');
            },
            'Отмена': function () {

                $(this).dialog('close');
            }
        },
        open: function (event, ui) {
            $('body').css('overflow', 'hidden');
            $('.ui-widget-overlay').css('width', '100%');
        },
        close: function (event, ui) {
            $('body').css('overflow', 'auto');
        }
    });
    $("#tabs").tabs();

});
function openFilterWindow() {

    $.get("../filters/booking/get_filter", {},
        function (data) {
            $('#bokingFilterForm').deserialize(data);
            $('#booking-filter-form').dialog('open');
        });


    //var cookie = $.cookie("booking_filter");
    //if(cookie){
    //    var data = jQuery.parseJSON(cookie);
    //    if (typeof data != 'undefined') {
    //        $('#bokingFilterForm').deserialize(data);
    //    }
    //}
    //$("#booking-filter-form").dialog('open');
}
/*
$.fn.serializeObject = function (arrayValues) {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            if ($.inArray(this.name, arrayValues) > -1) {
                o[this.name] = [];
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        }
    });
    return o;
};
*/
