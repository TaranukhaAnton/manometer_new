$(function () {
    var row = $("#invoice tr:eq(0) ");
    $(row).clone().insertAfter($(row));

    $('#invoice tr:eq(0) th:eq(8)').remove();
    $('#invoice tr:eq(0) th:eq(8)').remove();
    $('#invoice tr:eq(0) th:eq(8)').remove();
    $('#invoice tr:eq(0) th:eq(8)').remove();
    $('#invoice tr:eq(0) th:eq(8)').remove();
    //        $('#invoice tr:eq(0) th:eq(8)').remove();
    $('#invoice tr:eq(0) th:eq(7)').attr("colspan", 6);
    $('#invoice tr:eq(0) th:eq(7)').text("продукция");

    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(0)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();
    $('#invoice tr:eq(1) th:eq(6)').remove();

    $('#invoice tr:eq(0) th:eq(0)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(1)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(2)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(3)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(4)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(5)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(6)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(8)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(9)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(10)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(11)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(12)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(13)').attr("rowspan", 2);
    $('#invoice tr:eq(0) th:eq(14)').attr("rowspan", 2);


    $("#date").datepicker({
//        showOn: 'button',
//        buttonImage: '../images/datepicker.jpg',
//        buttonImageOnly: true
    });
    var dates = $("#f2_from, #f2_to").datepicker({
        showOn: 'button',
        buttonImage: '../images/datepicker.jpg',
        buttonImageOnly: true,
        onSelect: function (selectedDate) {
            var option = this.id == "f2_from" ? "minDate" : "maxDate";
            var instance = $(this).data("datepicker");
            var date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
            dates.not(this).datepicker("option", option, date);
        }
    });


    $("#consumer").autocomplete(
        {
            source: "../customers/listCustomers",
            width: 260,
            selectFirst: false,
            minChars: 3
        });

    $("#employer").autocomplete(
        {
            source: "../customers/listCustomers",
            width: 260,
            selectFirst: false,
            minChars: 3
        });

    $("#employerFilter").autocomplete(
        {
            source: "../customers/listCustomers",
            width: 260,
            selectFirst: false,
            minChars: 3
        });


    $("#ui-datepicker-div").css("z-index", 1000000); //задаем z-index
//    $("#ui-id-1").css("z-index", 1000000); //задаем z-index
//    $("#ui-id-2").css("z-index", 1000000); //задаем z-index
//    $("#newInvoice-div").css("overflow", "hidden");
    $("#newInvoice-div").dialog({
        autoOpen: false,
        height: 400,
        width: 450,
        modal: true,
        resizable: false,
        buttons: {
            'Создать': function () {
                $('#number').removeClass("error");
                $('#numberModifier').removeClass("error");
                $('#date').removeClass("error");
                $('#consumer').removeClass("error");
                $('#employer').removeClass("error");

                $.post("verifyInvoicePresence", $('#newInvoice_form').serialize(),
                    function (data) {
                        if (data.correct) {
                            location.replace("add?" + $('#newInvoice_form').serialize());
                        } else {
                            alert(data.mes.join("\n"));
                            if (data.presence) {
                                $('#number').addClass("error");
                                $('#numberModifier').addClass("error");
                            }
                            if (!data.number) {
                                $('#number').addClass("error");
                            }
                            if (!data.employer) {
                                $('#employer').addClass("error");
                            }
                            if (!data.consumer) {
                                $('#consumer').addClass("error");
                            }
                        }
                    });


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


    $("#filter-form").dialog({
        autoOpen: false,
        height: 550,
        width: 600,
        modal: true,
        resizable: false,
        buttons: {
            'Применить': function () {

                //var arrayValues = ["users", "purposeFilter", "stateFilter", "currencyFilter"];
                //var data = $("#filterForm").serializeObject(arrayValues);
//                data.onlyByEmployer = $('#onlyByEmployer')[0].checked;


                //var value = JSON.stringify(data);

                //$.cookie("invoice_filter", value);
                //var message = JSON.stringify($('#filterForm').serializeArray());
                //alert(message);
                //$("#myForm :input[value!='']").serialize()

                var serialize = $("#filterForm :input[value!='']").serialize();
                //console.log(serialize);
                //alert(serialize);
                location.replace("../filters/invoice/save_filter?" + serialize);
//                location.reload();
            },
            'Очистить': function () {
                $.removeCookie("invoice_filter");
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
    //var cookie = $.cookie("invoice_filter");
    //if (cookie) {
    //    var data = jQuery.parseJSON(cookie);
    //    if (typeof data != 'undefined') {
    //        $('#filterForm').deserialize(data);
    //    }
    //}


    $.get("../filters/invoice/get_filter", {},
        function (data) {
            $('#filterForm').deserialize(data);
            $('#filter-form').dialog('open');
        });


}

function removeErrorClass() {
    $('#number').removeClass("error");
    $('#numberModifier').removeClass("error");
    $('#date').removeClass("error");
    $('#emploer').removeClass("error");
    $('#consumer').removeClass("error");
}