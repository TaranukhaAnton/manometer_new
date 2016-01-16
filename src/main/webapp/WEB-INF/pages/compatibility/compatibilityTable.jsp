<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple jsp page


    </title>
    <STYLE type="text/css">
        body {
            font-size: .75em;
            font-family: Arial, Helvetica, sans-serif;
        }

        table.ct {
            border: 1px solid black;
        }

        TD {
            border: 1px solid silver;
        }

        TD.b {
            border-color: black;
            text-align: center;
            font-size: 12px;
        }

        TD.fliped {
            writing-mode: tb-rl;
            filter: flipv fliph;
        }

        TD.no {
            background-color: lightcoral;

        }

        TD.no_l {
            background-color: lightcoral;
            border-left-color: black;
        }

        TD.no_r {
            background-color: lightcoral;
            border-right-color: black;
        }

        TD.yes {

        }

        TD.yes_l {
            border-left-color: black;
        }

        TD.yes_r {
            border-right-color: black;

        }

        TD.np {
            background-color: aquamarine;
        }

        TD.np_l {
            background-color: aquamarine;
            border-left-color: black;

        }

        TD.np_r {
            background-color: aquamarine;
            border-right-color: black;
        }

        td.vertical {
            width: 13px;
            height: 30px;
            writing-mode: tb-rl;
            filter: flipH flipV;
            background: #fff; /* для устранения бага с отображением текста в IE6 и ниже */
            text-align: center;
            font-size: 12px;
            font-family: Arial;
            border-bottom-color: black;
            border-top-color: black;
        }

        td.vertical_r {
            width: 13px;
            height: 30px;
            writing-mode: tb-rl;
            filter: flipH flipV;
            background: #fff; /* для устранения бага с отображением текста в IE6 и ниже */
            text-align: center;
            font-size: 12px;
            font-family: Arial;
            border-right-color: black;
            border-bottom-color: black;
            border-top-color: black;
        }

        td.vertical_l {
            width: 13px;
            height: 30px;
            writing-mode: tb-rl;
            filter: flipH flipV;
            background: #fff; /* для устранения бага с отображением текста в IE6 и ниже */
            text-align: center;
            font-size: 12px;
            font-family: Arial;
            border-left-color: black;
            border-bottom-color: black;
            border-top-color: black;
        }


    </style>

    <script src="../js/jquery-ui-1.9.1.custom/jquery-1.8.2.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/local/compatibility/compatibilityTable.js"></script>


</head>
<body >


<table cellspacing="0" class="ct" id="compatibilityTable">
<tr>
    <td class="b" rowspan="3">модель</td>
    <td class="b" colspan="5" rowspan="2">исполнение</td>
    <td class="b" colspan="7" rowspan="2">материалы</td>
    <td class="b" colspan="6" rowspan="2">погрешность</td>
    <td class="b" colspan="33">пределы</td>
    <td class="b" colspan="10" rowspan="2">статика</td>
    <td class="b" colspan="6" rowspan="2">выход</td>
    <td class="b" colspan="2" rowspan="2">ДУ</td>
    <td class="b" colspan="33" rowspan="2">КМЧ</td>
</tr>
<tr>

    <td class="b" colspan="22">кПа</td>
    <td class="b" colspan="11">МПа</td>
</tr>
<tr>
    <td class="vertical_l">общ</td>
    <td class="vertical">Вн</td>
    <td class="vertical">Ex</td>
    <td class="vertical">AC</td>
    <td class="vertical_r">K</td>
    <td class="vertical_l">01</td>
    <td class="vertical">02</td>
    <td class="vertical">05</td>
    <td class="vertical">07</td>
    <td class="vertical">09</td>
    <td class="vertical">11</td>
    <td class="vertical_r">12</td>
    <td class="vertical_l">0,05</td>
    <td class="vertical">0,1</td>
    <td class="vertical">0,15</td>
    <td class="vertical">0,25</td>
    <td class="vertical">0,5</td>
    <td class="vertical_r">1</td>
    <td class="vertical_l">0.04</td>
    <td class="vertical">0.063</td>
    <td class="vertical">0.10</td>
    <td class="vertical">0.16</td>
    <td class="vertical">0.25</td>
    <td class="vertical">0.40</td>
    <td class="vertical">0.63</td>
    <td class="vertical">1.0</td>
    <td class="vertical">1.6</td>
    <td class="vertical">2.5</td>
    <td class="vertical">4.0</td>
    <td class="vertical">6.3</td>
    <td class="vertical">10</td>
    <td class="vertical">16</td>
    <td class="vertical">25</td>
    <td class="vertical">40</td>
    <td class="vertical">63</td>
    <td class="vertical">100</td>
    <td class="vertical">160</td>
    <td class="vertical">250</td>
    <td class="vertical">400</td>
    <td class="vertical">630</td>
    <td class="vertical">1.0</td>
    <td class="vertical">1.6</td>
    <td class="vertical">2.5</td>
    <td class="vertical">4.0</td>
    <td class="vertical">6.3</td>
    <td class="vertical">10</td>
    <td class="vertical">16</td>
    <td class="vertical">25</td>
    <td class="vertical">40</td>
    <td class="vertical">63</td>
    <td class="vertical_r">100</td>
    <td class="vertical_l">0.16</td>
    <td class="vertical">0.25</td>
    <td class="vertical">1.6</td>
    <td class="vertical">2.5</td>
    <td class="vertical">4.0</td>
    <td class="vertical">10</td>
    <td class="vertical">16</td>
    <td class="vertical">25</td>
    <td class="vertical">32</td>
    <td class="vertical_r">40</td>
    <td class="vertical_l">42</td>
    <td class="vertical">24</td>
    <td class="vertical">&#8730 42</td>
    <td class="vertical">05</td>
    <td class="vertical">50</td>
    <td class="vertical_r">&#8730 05</td>
    <td class="vertical_l">50</td>
    <td class="vertical_r">80</td>
    <td class="vertical_l">H1</td>
    <td class="vertical">H2</td>
    <td class="vertical">H3</td>
    <td class="vertical">H4</td>
    <td class="vertical">H5</td>
    <td class="vertical">H6</td>
    <td class="vertical">H7</td>
    <td class="vertical">H8</td>
    <td class="vertical">H9</td>
    <td class="vertical">H10</td>
    <td class="vertical">H11</td>
    <td class="vertical">H12</td>
    <td class="vertical">H13</td>
    <td class="vertical">H14</td>
    <td class="vertical">H15</td>
    <td class="vertical">H16</td>
    <td class="vertical">H17</td>
    <td class="vertical">H18</td>
    <td class="vertical">H19</td>
    <td class="vertical">H20</td>
    <td class="vertical">H21</td>
    <td class="vertical">H31</td>
    <td class="vertical">H32</td>
    <td class="vertical">H33</td>
    <td class="vertical">H34</td>
    <td class="vertical">H35</td>
    <td class="vertical">H36</td>
    <td class="vertical">H37</td>
    <td class="vertical">H38</td>
    <td class="vertical">H39</td>
    <td class="vertical">H40</td>
    <td class="vertical">H41</td>
    <td class="vertical_r">H42</td>
    <td class="vertical_l"> ВМ </td>


</tr>


<%--<%--%>

    <%--List<ModelDescription> result = (List<ModelDescription>) request.getAttribute("models");--%>

    <%--for ( ModelDescription md : result) {--%>
        <%--out.println("<tr> <td >" + md.getId() + "</td>");--%>
        <%--for (Integer i = 0; i < 5; i++)--%>
            <%--out.println("<td class=\"" + (md.getIsp().contains(i) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 4) ? "_r" : "") + "\">&nbsp;</td>");--%>

        <%--for (int i = 0; i < 7; i++)--%>
            <%--out.println("<td class=\"" + (md.getMaterials().contains(i) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 6) ? "_r" : "") + "\">&nbsp;</td>");--%>

        <%--for (int i = 0; i < 5; i++)--%>
            <%--out.println("<td class=\"" + (md.getErrors().contains(i) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 4) ? "_r" : "") + "\">&nbsp;</td>");--%>

        <%--for (int i = 1; i < 34; i++)--%>
            <%--out.println("<td class=\"" + ((i >= md.getLoLimit() && i <= md.getHiLimit()) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 4) ? "_r" : "") + "\">&nbsp;</td>");--%>


        <%--for (int i = 0; i < 10; i++) {--%>


            <%--lr = (i == 0) ? "_l" : "";--%>
            <%--lr += (i == 9) ? "_r" : "";--%>
            <%--if--%>
                    <%--(md.getStaticPressures().isEmpty()) {   out.println("<td class=\"np" + lr + "\">Н</td>");--%>
            <%--} else {--%>
                <%--if (md.getStaticPressures().contains(i+1))--%>
                    <%--out.println("<td class=\"yes" + lr + "\">&nbsp;</td>");--%>
                <%--else--%>
                    <%--out.println("<td class=\"no" + lr + "\">&nbsp;</td>");--%>
            <%--}--%>
        <%--}--%>

        <%--for (int i = 0; i < 6; i++)--%>
            <%--out.println("<td class=\"" + (md.getOutputs().contains(i) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 5) ? "_r" : "") + "\">&nbsp;</td>");--%>


        <%--for (int i = 0; i < 2; i++) {--%>
            <%--lr = (i == 0) ? "_l" : "";--%>
            <%--lr += (i == 1) ? "_r" : "";--%>
            <%--if (md.getDU().isEmpty()){--%>
                <%--out.println("<td class=\"np" + lr + "\">Н</td>");--%>
            <%--}--%>
            <%--else{--%>
                <%--out.println("<td class=\"" + (md.getDU().contains(i+1) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 1) ? "_r" : "") + "\">&nbsp;</td>");--%>
            <%--}--%>

        <%--}--%>


        <%--for (int i = 1; i < 43; i++)--%>

        <%--{--%>
            <%--if ((i > 21) & (i < 31)) continue;--%>
            <%--out.println("<td class=\"" + (md.getKMCH().contains(i) ? "yes" : "no") + ((i == 0) ? "_l" : "") + ((i == 42) ? "_r" : "") + "\">&nbsp;</td>");--%>
        <%--}--%>

        <%--out.println("<td class=\"" + (md.isVM() ? "yes" : "no") + "_l\">&nbsp;</td>");--%>

        <%--out.println("</tr>");--%>

    <%--}--%>
<%--%>--%>



</table>
<a href="../../invoiceAction.do?method=viewInvoices">Назад</a>

<br>
</body>
</html>