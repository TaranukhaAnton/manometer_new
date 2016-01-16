<%request.setCharacterEncoding("UTF-8");%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

    <link href="../css/addPressureSensor.css" rel="stylesheet" type="text/css"/>
    <script src="../js/local/add/addPressureSensor.js" type="text/javascript"></script>


<form action="add_pressure_sensor" name="mainForm" onsubmit="return  validate();">
<div id="parent"  >


<input type="hidden" name="invoice_id" id="invoice_id" value="<%=request.getParameter("invoice_id")%>">
<% if(request.getParameter("invoice_item_id")!=null){%>
<input type="hidden" name="invoice_item_id" id="invoice_item_id" value="<%=request.getParameter("invoice_item_id")%>">
<% }%>


<div id="head">
    <label><input type="radio" name="typeTxt" value="0" checked="checked"> &quot;Сафiр М&quot;</label>
    <label><input type="radio" name="typeTxt" value="1"> &quot;Сафiр&quot; </label>
    <label><input type="radio" name="typeTxt" value="2"> СМХ </label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    Перед спецификацией &nbsp;&nbsp;
    <input type="text" name="beforeSpec" id="beforeSpec" size="40">


</div>
<div id="model">
<table cellspacing="0" class="models">
<tbody>
<tr>
    <td class="silver_rb">  &nbsp;</td>
    <td class="silver_b">..01</td>
    <td class="silver_b">..10</td>
    <td class="silver_rb">..15</td>
    <td class="silver_b">..20</td>
    <td class="silver_rb">..24</td>
    <td class="silver_b">..30</td>
    <td class="silver_b">..33</td>
    <td class="silver_b">..34</td>
    <td class="silver_rb">..35</td>
    <td class="silver_b">..40</td>
    <td class="silver_b">..41</td>
    <td class="silver_b">..42</td>
    <td class="silver_b">..43</td>
    <td class="silver_b">..44</td>
    <td class="silver_rb">..45</td>
    <td class="silver_b">..50</td>
    <td class="silver_b">..51</td>
    <td class="silver_b">..52</td>
    <td class="silver_b">..53</td>
    <td class="silver_b">..54</td>
    <td class="silver_rb">..55</td>
    <td class="silver_b">..60</td>
    <td class="silver_b">..61</td>
    <td class="silver_b">..62</td>
    <td class="silver_b">..63</td>
    <td class="silver_rb">..64</td>
    <td class="silver_b">..70</td>
    <td class="silver_b">..71</td>
</tr>
<tr>
    <td class="silver_r">70..</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0  silver "><input type="radio" value="7020" name="model" onclick="test();"></td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0  silver "><input type="radio" value="7030" name="model" onclick="test();"></td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0  silver "><input type="radio" value="7040" name="model" onclick="test();"></td>
    <td class="row0  silver "><input type="radio" value="7041" name="model" onclick="test();"></td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0  silver "><input type="radio" value="7050" name="model" onclick="test();"></td>
    <td class="row0  silver "><input type="radio" value="7051" name="model" onclick="test();"></td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver_r">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
    <td class="row0 silver">&nbsp;</td>
</tr>
<tr>
    <td class="silver_r">71..</td>
    <td class="row1  silver "><input type="radio" value="7101" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7110" name="model" onclick="test();"></td>
    <td class="row1  silver_r "><input type="radio" value="7115" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7120" name="model" onclick="test();"></td>
    <td class="row1 silver_r">&nbsp;</td>
    <td class="row1  silver "><input type="radio" value="7130" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7133" name="model" onclick="test();"></td>
    <td class="row1 silver">&nbsp;</td>
    <td class="row1  silver_r "><input type="radio" value="7135" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7140" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7141" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7142" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7143" name="model" onclick="test();"></td>
    <td class="row1 silver">&nbsp;</td>
    <td class="row1  silver_r "><input type="radio" value="7145" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7150" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7151" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7152" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7153" name="model" onclick="test();"></td>
    <td class="row1 silver">&nbsp;</td>
    <td class="row1  silver_r "><input type="radio" value="7155" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7160" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7161" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7162" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7163" name="model" onclick="test();"></td>
    <td class="row1 silver_r">&nbsp;</td>
    <td class="row1  silver "><input type="radio" value="7170" name="model" onclick="test();"></td>
    <td class="row1  silver "><input type="radio" value="7171" name="model" onclick="test();"></td>
</tr>
<tr>
    <td class="silver_r">72..</td>
    <td class="row2  silver "><input type="radio" value="7201" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7210" name="model" onclick="test();"></td>
    <td class="row2  silver_r "><input type="radio" value="7215" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7220" name="model" onclick="test();"></td>
    <td class="row2 silver_r">&nbsp;</td>
    <td class="row2  silver "><input type="radio" value="7230" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7233" name="model" onclick="test();"></td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2  silver_r "><input type="radio" value="7235" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7240" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7241" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7242" name="model" onclick="test();"></td>
    <td class="row2  silver "><input type="radio" value="7243" name="model" onclick="test();"></td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2  silver_r "><input type="radio" value="7245" name="model" onclick="test();"></td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver_r">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver_r">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
    <td class="row2 silver">&nbsp;</td>
</tr>
<tr>
    <td class="silver_r">73..</td>
    <td class="row3  silver "><input type="radio" value="7301" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7310" name="model" onclick="test();"></td>
    <td class="row3  silver_r "><input type="radio" value="7315" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7320" name="model" onclick="test();"></td>
    <td class="row3 silver_r">&nbsp;</td>
    <td class="row3  silver "><input type="radio" value="7330" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7333" name="model" onclick="test();"></td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3  silver_r "><input type="radio" value="7335" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7340" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7341" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7342" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7343" name="model" onclick="test();"></td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3  silver_r "><input type="radio" value="7345" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7350" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7351" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7352" name="model" onclick="test();"></td>
    <td class="row3  silver "><input type="radio" value="7353" name="model" onclick="test();"></td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3  silver_r "><input type="radio" value="7355" name="model" onclick="test();"></td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3 silver_r">&nbsp;</td>
    <td class="row3 silver">&nbsp;</td>
    <td class="row3 silver">&nbsp;</td>
</tr>
<tr>
    <td class="silver_r">74..</td>
    <td class="row4  silver "><input type="radio" value="7401" name="model" onclick="test();"></td>
    <td class="row4  silver "><input type="radio" value="7410" name="model" onclick="test();"></td>
    <td class="row4  silver_r "><input type="radio" value="7415" name="model" onclick="test();"></td>
    <td class="row4  silver "><input type="radio" value="7420" name="model" onclick="test();"></td>
    <td class="row4  silver_r "><input type="radio" value="7424" name="model" onclick="test();"></td>
    <td class="row4  silver "><input type="radio" value="7430" name="model" onclick="test();"></td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7434" name="model" onclick="test();"></td>
    <td class="row4 silver_r">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7440" name="model" onclick="test();"></td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7444" name="model" onclick="test();"></td>
    <td class="row4 silver_r">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7450" name="model" onclick="test();"></td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7454" name="model" onclick="test();"></td>
    <td class="row4 silver_r">&nbsp;</td>
    <td class="row4  silver "><input type="radio" value="7460" name="model" onclick="test();"></td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4  silver_r "><input type="radio" value="7464" name="model" onclick="test();"></td>
    <td class="row4 silver">&nbsp;</td>
    <td class="row4 silver">&nbsp;</td>
</tr>
<tr>
    <td class="silver_r">75..</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5  silver "><input type="radio" value="7520" name="model" onclick="test();"></td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5  silver "><input type="radio" value="7530" name="model" onclick="test();"></td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5  silver "><input type="radio" value="7540" name="model" onclick="test();"></td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5  silver "><input type="radio" value="7550" name="model" onclick="test();"></td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver_r">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
    <td class="row5 silver">&nbsp;</td>
</tr>

</tbody>
</table>
</div>


<table>
    <tr>
        <td class="topAlig">
            <div id="ispolnenie"></div>
        </td>
        <td class="topAlig">
            <div id="materials"></div>
        </td>
        <td class="topAlig">
            <div id="klimat" style="visibility:hidden;">
                <fieldset>
                    <legend>Климатика</legend>
                    <input type="radio" checked name="klim" value="0"> &nbsp;УХЛ3.1* <br>
                    <input type="radio" name="klim" value="1"> &nbsp;УХЛ3.1* (+5..+50) <br>
                    <input type="radio" name="klim" value="2"> &nbsp;УХЛ3.1* (+5..+80) <br><br>
                    <input type="radio" name="klim" value="3"> &nbsp;У2*<br>
                    <input type="radio" name="klim" value="4"> &nbsp;У2* (-30..+50) <br>
                    <input type="radio" name="klim" value="5"> &nbsp;У2* (-40..+50) <br><br>
                    <input type="radio" name="klim" value="6"> &nbsp;Т3**<br>
                    <input type="radio" name="klim" value="7"> &nbsp;Т3** (-5..+80) <br>
                </fieldset>
            </div>
        </td>
        <td class="topAlig">
            <div id="errors"></div>
        </td>
        <td class="topAlig">
            <div id="ed_izm" style="visibility:hidden;">
                <fieldset>
                    <legend>ед. измер.</legend>
                    <input type="radio" name="ed_izm" value="0" onclick="changeEdIzm();"> &nbsp;кПа<br>
                    <input type="radio" name="ed_izm" value="1" onclick="changeEdIzm();"> &nbsp;МПа<br>
                    <input type="radio" name="ed_izm" value="2" onclick="changeEdIzm();"> &nbsp;кгс/см&sup2;<br>
                    <input type="radio" name="ed_izm" value="3" onclick="changeEdIzm();"> &nbsp;кгс/м&sup2;<br>
                    <input type="radio" name="ed_izm" value="4" onclick="changeEdIzm();"> &nbsp;kPa <br>
                    <input type="radio" name="ed_izm" value="5" onclick="changeEdIzm();"> &nbsp;MPa <br>
                    <input type="radio" name="ed_izm" value="6" onclick="changeEdIzm();"> &nbsp;kgf/сm&sup2; <br>
                    <input type="radio" name="ed_izm" value="7" onclick="changeEdIzm();">&nbsp;kgf/m&sup2; <br>
                    <input type="radio" name="ed_izm" value="8" onclick="changeEdIzm();">&nbsp;bar <br>
                    <input type="radio" name="ed_izm" value="9" onclick="changeEdIzm();">&nbsp;mbar <br>
                </fieldset>
            </div>
        </td>
        <td class="topAlig">
            <div id="stat"/>
        </td>
        <td class="topAlig">
            <div id="output"/>
        </td>
        <td class="topAlig">
            <div id="du"/>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <div id="limits">
                <table class="lim" cellspacing="0">
                    <tr>
                        <td class="width60" colspan="3">
                            Пределы измерений
                        </td>
                    </tr>
                    <tr>
                        <td class="width60">нижн</td>
                        <td class="width60" colspan="2">верх</td>
                    </tr>
                    <tr>
                        <td class="width60"><input name="low" id="low" type="text" size="8"
                                                   onkeydown="changeNsLimit()">
                        </td>
                        <td class="width60"><input type="text" name="hi" id="hi" size="8"
                                                   onkeydown="changeNsLimit()"></td>
                        <td class="width60"><select name="hid" id="hid" style="width:80px;"
                                                    onchange="changeLimit();">


                        </select></select>

                        </td>
                    </tr>
                </table>
            </div>
        </td>
        <td>
            <div id="options">
                <table class="opt" cellspacing="0">
                    <tr>
                        <td class="width60" colspan="7">
                            Опции
                        </td>
                    </tr>
                    <tr>
                        <td class="col3">КМЧ</td>
                        <td class="col3">-И</td>
                        <td class="col3">-ПИ</td>
                        <td class="col3">-П</td>
                        <td class="col3">-ВМ</td>
                        <td class="col3">-Хим</td>
                        <td class="col3">-Р</td>
                    </tr>
                    <tr>
                        <td class="col3"><select name="kmch" style="width:60px;" id="kmch"></select></td>
                        <td class="col3"><input type="checkbox" name="i" id="i"></td>
                        <td class="col3"><input type="checkbox" name="pi" id="PI"></td>
                        <td class="col3"><input type="checkbox" name="p" id="p"></td>
                        <td class="col3"><input type="checkbox" name="vm" id="vm"></td>
                        <td class="col3"><input type="checkbox" name="him" id="him"></td>
                        <td class="col3">
                            <select name="connector" id="connector">
                                <option value=""></option>
                                <option value="connector1">- Р</option>
                                <option value="connector2">- РГ</option>
                                <option value="connector3">- РТ</option>
                                <option value="connector4">- PD</option>
                            </select>
                        </td>






                    </tr>
                </table>
            </div>
        </td>
        <td>
            <div id="right">
                <label> <input type="checkbox" name="tu" id="tu"> &nbsp; ТУ </label>
                <br> После спецификации: <br>
                <input type="text" name="afterSpec" id="afterSpec" size="40">

            </div>
        </td>
    </tr>
</table>


<%--<input type="hidden" value="addPressureSensor" name="method">--%>


</div>
<div id="downButtons">
    <input type="submit" value="Отправить">
    <input type="button" value="Отменить" onclick="cancel();">

</div>
</form>



