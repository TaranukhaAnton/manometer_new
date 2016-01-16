/**
 * Created by ANTON on 07.11.2015.
 */


$().ready(
    function () {

        getVerticalLayout();
        constructTable();
    });


function getVerticalLayout() {
    /* Параметры */
    var fontFamily = "Arial";
    /* задаем шрифт */
    var fontSize = 12;
    /* задаем размер шрифта */

    var notIE = !(navigator.appVersion.indexOf("MSIE") != -1 && navigator.systemLanguage);
    var supportSVG = document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#SVG", "1.1");

    if (notIE) {
        /* Собираем все ячейки */
        var td = document.getElementsByTagName("td");

        /* Находим ячейки с классом vertical и заменяем в них текст svg-изображением */
        var objElement = document.createElement("object");

        for (i = 0; i < td.length; i++) {
            if (td[i].className.match(/vertical/i)) {
                var text = td[i].innerHTML;
                var h = td[i].clientHeight;
                var w = td[i].clientWidth;

                var obj = objElement.cloneNode(true);
                obj.height = 30;
                obj.type = "image/svg+xml";
                obj.width = fontSize + 2;
                obj.data = "data:image/svg+xml;charset=utf-8,<svg xmlns='http://www.w3.org/2000/svg'><text x='" + (-obj.height / 2) + "' y='" + fontSize + "' style='font-family:" + fontFamily + "; font-size:" + fontSize + "px; text-anchor:middle' transform='rotate(-90)'>" + text + "</text></svg>";
                td[i].replaceChild(obj, td[i].firstChild);
            }
        }
    }
}

function constructTable() {
    $.get("get_all_md", function (data) {


        for (var j = 0; j < data.length; j++) {
            var md = data[j];
            var row = '<tr> <td >' + md.id + '</td>';

            for (var i = 0; i < 5; i++) {
                row = row + '<td class="' + (($.inArray(i, md.isp) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 4) ? '_r' : '') + '">&nbsp;</td>';
            }

            for (var i = 0; i < 7; i++) {
                row = row + '<td class="' + (($.inArray(i, md.materials) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 6) ? '_r' : '') + '">&nbsp;</td>';
            }

            for (var i = 0; i < 6; i++) {
                row = row + '<td class="' + (($.inArray(i, md.errors) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 5) ? '_r' : '') + '">&nbsp;</td>';
            }

            for (var i = 1; i < 34; i++) {
                row = row + '<td class="' + (i >= md.loLimit && i <= md.hiLimit ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 4) ? '_r' : '') + '">&nbsp;</td>';
            }

            for (var i = 0; i < 10; i++) {


                var lr = ((i == 0) ? '_l' : '') + ((i == 9) ? '_r' : '');

                if (md.staticPressures.length == 0) {
                    row = row + '<td class="np' + lr + '">Н</td>';
                } else {
                    if (($.inArray(i + 1, md.staticPressures) >= 0))
                        row = row + '<td class="yes' + lr + '">&nbsp;</td>';
                    else
                        row = row + '<td class="no' + lr + '">&nbsp;</td>';
                }
            }

            for (var i = 0; i < 6; i++) {
               row = row + '<td class="' + (($.inArray(i, md.outputs) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 5) ? '_r' : '') + '">&nbsp;</td>';
            }


            for (var i = 0; i < 2; i++) {
                var lr = ((i == 0) ? '_l' : '') + ((i == 1) ? '_r' : '');

                if (md.DU) {
                    row = row + '<td class="np' + lr + '>Н</td>';
                }
                else {
                    row = row + '<td class="' + (($.inArray(i+1, md.du) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 1) ? '_r' : '') + '">&nbsp;</td>';
                }

            }


            for (var i = 1; i < 43; i++)
            {
                if (!((i > 21) & (i < 31))) {
                    row =row+'<td class="' + (($.inArray(i, md.kmch) >= 0) ? 'yes' : 'no') + ((i == 0) ? '_l' : '') + ((i == 42) ? '_r' : '') + '">&nbsp;</td>';
                }
            }

            row =row+'<td class=\"' + (md.vm ? 'yes' : 'no') + '_l">&nbsp;</td>';




            row = row + '</tr>';

            $('#compatibilityTable tr:last').after(row);



        }


    });

}
