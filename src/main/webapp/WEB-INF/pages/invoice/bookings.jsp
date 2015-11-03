<%@ page import="ua.com.manometer.model.invoice.Invoice" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="ua.com.manometer.model.User" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="ua.com.manometer.model.invoice.Booking" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--<script type="text/javascript" src="../js/local/invoices.js"></script>--%>
<%--<link rel="stylesheet" type="text/css" href="../css/invoice.css"/>--%>
<script type="text/javascript" src="../js/jquery.deserialize.js"></script>

<script type="text/javascript">
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

                    var arrayValues = ["users", "purposeFilter", "stateFilter", "currencyFilter"];
                    var data = $("#bokingFilterForm").serializeObject(arrayValues);
                    var value = JSON.stringify(data);
                    $.cookie("booking_filter", value);
                    location.reload();
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
        var cookie = $.cookie("booking_filter");
        if(cookie){
        var data = jQuery.parseJSON(cookie);
        if (typeof data != 'undefined') {
            $('#bokingFilterForm').deserialize(data);
        }
        }
        $("#booking-filter-form").dialog('open');
    }
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
</script>


<style type="text/css">
    #content {
        margin: 10px;
    }

    #booking th {
        text-align: center;
    }

    .right {
        text-align: right;

    }

    .center {
        text-align: center;

    }

    .width100 {
        width: 100px;
    }

    .left {
        text-align: left;

    }

</style>

</head>
<body>
<%


    NumberFormat df = NumberFormat.getInstance();
    df.setMinimumFractionDigits(2);
    df.setMaximumFractionDigits(2);
    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yy");

%>


<DIV ID="content">
    <a href="javascript:void(openFilterWindow())">Фильтр</a><br>
    <display:table name="listBookings" requestURI="./" excludedParams="method"
                   requestURIcontext="false" pagesize="20" sort="list" keepStatus="true"
                   class="simple" id="booking">

        <display:column property="curStateStr" title="сост"/>

        <%--<display:column url="/bookings/view" title="№"  paramId="invoice_id" paramProperty="invoice.id" sortable="true" property="number"   >--%>
        <%--${booking.number}${(booking.numberModifier!="")? "/":""}${booking.numberModifier}--%>
        <%--</display:column>--%>


        <display:column url="/bookings/view" title="№" sortable="true" property="number" paramId="invoice_id"
                        paramProperty="invoice.id"/>
        <display:column title="#" property="numberModifier"/>


        <display:column title="открыт" sortable="true" format="{0,date,dd.MM.yyyy}" property="date"
                        headerClass="dataColumn"/>

        <display:column url="/invoices/view" title="№" paramId="invoice_id" paramProperty="invoice.id">
            ${booking.invoice.number}${(booking.invoice.numberModifier!="")? "/":""}${booking.invoice.numberModifier}
        </display:column>


        <display:column property="purposeStr" title="Назн"/>


        <display:column property="invoice.employer" title="заказчик"/>

        <display:column property="invoice.executor" title="спец<br>ОСО"/>
        <display:column property="invoice.t0" class="col30 center" title="ДД"/>
        <display:column property="invoice.t1" class="col30 center" title="БП"/>
        <display:column property="invoice.t2" class="col30 center" title="ДКС"/>
        <display:column property="invoice.t3" class="col30 center" title="ИБ"/>
        <display:column property="invoice.t4" class="col30 center" title="пр"/>
        <display:column property="invoice.t5" class="col30 center" title="стор"/>

        <display:column title="нач">
            <%= (((Booking) pageContext.getAttribute("booking")).getSupplierObligations1() != null) ? sdf.format(((Booking) pageContext.getAttribute("booking")).getSupplierObligations1()) : ""%>
        </display:column>
        <display:column title="кон">
            <%=(((Booking) pageContext.getAttribute("booking")).getSupplierObligations2() != null) ? sdf.format(((Booking) pageContext.getAttribute("booking")).getSupplierObligations2()) : ""%>
        </display:column>

        <display:column property="paymentPercentStr" title="Оплата,<br> %" class="right"/>


    </display:table>
</DIV>


<div id="booking-filter-form" title="Фильтр">

    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Номер</a></li>
            <li><a href="#tabs-2">Дата</a></li>
            <li><a href="#tabs-3">Заказчик</a></li>
        </ul>


        <form id="bokingFilterForm">


            <div id="tabs-1" class="tabdiv">

                <table>
                    <tr>
                        <td><input type="radio" name="f1" value="0"/></td>
                        <td>все</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="f1" value="1"/></td>
                        <td> c</td>
                        <td><input type="text" name="f1From" class="width100"></td>
                        <td> по</td>
                        <td><input type="text" name="f1To" class="width100"></td>
                    </tr>
                </table>

            </div>
            <div id="tabs-2" class="tabdiv">

                <table>
                    <tr>
                        <td><input type="radio" name="f2" value="0"/></td>
                        <td>все</td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="f2" value="1"/></td>
                        <td>текущий год</td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="f2" value="2"/></td>
                        <td>последние 3 мес</td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="f2" value="3"/></td>
                        <td>
                            <table>
                                <tr>
                                    <td>с</td>
                                    <td><input type="text" name="f2From" id="f2_from"></td>
                                </tr>
                                <tr>
                                    <td>по</td>
                                    <td><input type="text" name="f2To" id="f2_to"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>


            </div>
            <div id="tabs-3" class="tabdiv">
                <table>


                    <tr>
                        <td><label for="employerFilter">Заказчик</label></td>
                        <td><input type="text" id="employerFilter" name="employer" onclick="removeErrorClass()"
                                   class="text ui-widget-content ui-corner-all"/>
                        </td>
                    </tr>


                </table>
            </div>


        </form>
    </div>

</div>


</body>
</html>