package ua.com.manometer.model.invoice;

import org.apache.commons.lang.StringUtils;
import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;


@Entity
//@DiscriminatorValue("PressureSensor")
@Table(name="pressure_sensor")
public class PressureSensor extends InvoiceItem {
    private String preamble;
    private Integer series;
    private Integer isp;
    private String model;
    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean P;
    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean VM;
    private Integer mat;
    private Integer klim;
    private Integer error;

    private Float lowLimit;
    private Float hiLimit;

    private Integer ed_izm;
    private Integer stat;
    private Integer outType;
    private Integer kmch;
    private Integer du;

    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean I;
    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean PI;
    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean HIM;
    @Column(nullable = false, length = 1)
    @Type(type = "yes_no")
    private boolean TU;
    private String afterSpec;
    @Column(name = "connector")
    private String connector;


    private static final String[] klimArray = {"\u0423\u0425\u041b3.1*", "\u0423\u0425\u041b3.1*(+5..+50)", "\u0423\u0425\u041b3.1*(+5..+80)", "\u04232*", "\u04232*(-30..+50)", "\u04232*(-40..+50)", "\u04223**", "\u04223**(-5..+80)"};
    private static final String[] outArr = {"42", "24", "\u221a42", "05", "50", "\u221a05"};
    private static final String[] matArr = {"01", "02", "05", "07", "09", "11", "12"};
    private static final String[] errArr = {"0,05","0,1", "0,15", "0,25", "0,5", "1"};
    private static final String[] ed_izmArr = {"\u043a\u041f\u0430", "\u041c\u041f\u0430", "\u043a\u0433\u0441/\u0441\u043c\u00b2", "\u043a\u0433\u0441/\u043c\u00b2", "kPa", "MPa", "kgf/cm\u00b2", "kgf/m\u00b2", "bar", "mbar"};
    private static final String[] statArr = {"", "0,16", "0,25", "1,6", "2,5", "4", "10", "16", "25", "32", "40"};
    private static final String[] duArr = {"", "50", "80"};
    private static final Integer[] koef = {1000, 1, 10, 100000, 1000, 1, 10, 100000, 10, 10000};
    private static final Map<String, String> connectorTypes = new HashMap<String, String>();
    static {
        connectorTypes.put("connector1","-Р");
        connectorTypes.put("connector2","-РГ");
        connectorTypes.put("connector3","-РТ");
        connectorTypes.put("connector4","-PD");
    }

    @Override
    public InvoiceItem getClone(BigDecimal oldExchangeRate, BigDecimal newExchangeRate) {
        PressureSensor clone = new PressureSensor();

        clone.setType(getType());
        clone.price = price;
        clone.cost = cost;
        clone.sellingPrice = sellingPrice.subtract(transportationCost).multiply(oldExchangeRate).divide(newExchangeRate, 2, RoundingMode.HALF_UP).add(transportationCost);
        clone.additionalCost = additionalCost;
        clone.transportationCost = transportationCost;
        clone.setDeliveryTime(getDeliveryTime());
        clone.setQuantity(getQuantity());
        clone.setManufacturedDate(getManufacturedDate());

        clone.setPreamble(preamble);
        clone.setSeries(series);
        clone.setIsp(isp);
        clone.setModel(model);
        clone.setP(P);
        clone.setVM(VM);
        clone.setMat(mat);
        clone.setKlim(klim);
        clone.setError(error);
        clone.setLowLimit(lowLimit);
        clone.setHiLimit(hiLimit);
        clone.setEd_izm(ed_izm);
        clone.setStat(stat);
        clone.setOutType(outType);
        clone.setKmch(kmch);
        clone.setDu(du);
        clone.setConnector(connector);
        clone.setI(I);
        clone.setPI(PI);
        clone.setHIM(HIM);
        clone.setTU(TU);
        clone.setAfterSpec(afterSpec);


        return clone;  //To change body of implemented methods use File | Settings | File Templates.
    }

    public String getName() {

        return toString();
    }

    public String getAfterSpec() {
        return afterSpec;
    }

    public void setAfterSpec(String afterSpec) {
        this.afterSpec = afterSpec;
    }

    public boolean isTU() {
        return TU;
    }

    public void setTU(boolean TU) {
        this.TU = TU;
    }

    public boolean isI() {
        return I;
    }

    public void setI(boolean i) {
        I = i;
    }

    public boolean isPI() {
        return PI;
    }

    public void setPI(boolean PI) {
        this.PI = PI;
    }

    public boolean isHIM() {
        return HIM;
    }

    public void setHIM(boolean HIM) {
        this.HIM = HIM;
    }

    public Integer getDu() {
        return du;
    }

    public void setDu(Integer du) {
        this.du = du;
    }

    public Integer getKmch() {
        return kmch;
    }

    public void setKmch(Integer kmch) {
        this.kmch = kmch;
    }

    public Integer getOutType() {
        return outType;
    }

    public void setOutType(Integer outType) {
        this.outType = outType;
    }

    public Integer getStat() {
        return stat;
    }

    public void setStat(Integer stat) {
        this.stat = stat;
    }

    public Integer getKlim() {
        return klim;
    }

    public void setKlim(Integer klim) {
        this.klim = klim;
    }

    public Integer getError() {
        return error;
    }

    public void setError(Integer error) {
        this.error = error;
    }

    public Float getHiLimit() {
        return hiLimit;
    }

    public void setHiLimit(Float hiLimit) {
        this.hiLimit = hiLimit;
    }

    public Integer getEd_izm() {
        return ed_izm;
    }

    public void setEd_izm(Integer ed_izm) {
        this.ed_izm = ed_izm;
    }

    public Integer getMat() {
        return mat;
    }

    public void setMat(Integer mat) {
        this.mat = mat;
    }

    public boolean isVM() {
        return VM;
    }

    public void setVM(boolean VM) {
        this.VM = VM;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Integer getIsp() {
        return isp;
    }

    public void setIsp(Integer isp) {
        this.isp = isp;
    }

    public Integer getSeries() {
        return series;
    }

    public void setSeries(Integer series) {
        this.series = series;
    }

    public String getPreamble() {
        return preamble;
    }

    public void setPreamble(String preamble) {
        this.preamble = preamble;
    }

    public boolean isP() {
        return P;
    }

    public void setP(boolean p) {
        P = p;
    }

    public Float getLowLimit() {
        return lowLimit;
    }

    public void setLowLimit(Float lowLimit) {
        this.lowLimit = lowLimit;
    }

    public String getConnector() {
        return connector;
    }

    public void setConnector(String connector) {
        this.connector = connector;
    }

    public String toString() {
        String typeAlias[] = {"\"\u0421\u0430\u0444i\u0440 \u041c\"", "\"\u0421\u0430\u0444i\u0440\"", "\u0421\u041c\u0425"};
        StringBuilder buffer = new StringBuilder();
        buffer.append(preamble);
        buffer.append(typeAlias[series]);
        buffer.append((isp == 1) ? "-\u0412\u043d" : "");
        buffer.append((isp == 2) ? "-Ex" : "");

        // если выполняется условие заменить первую цифру на 2
        String modelStr = "-"+model;
        if ((isp == 3) & ((model.charAt(0) == '5')||(model.charAt(0) == '7')) & (series == 1)){
            modelStr =   "-2"+ modelStr.substring(2);
        }
        buffer.append(modelStr);

       // buffer.append(((isp == 3) & ((model.charAt(0) == '5')||(model.charAt(0) == '7')) & (series == 1)) ? "-2" + model.substring(1, 4) : "-" + model);


        buffer.append((isp == 3) ? "-AC" : "");
        buffer.append((isp == 4) ? "-\u041a" : "");
        buffer.append((P) ? "-\u041f" : "");
        buffer.append((VM) ? "-\u0412\u041c" : "");

        buffer.append("-" + matArr[mat]);
        buffer.append("-" + klimArray[klim]);
        buffer.append("-" + errArr[error]);

        buffer.append("-");

        if (lowLimit != null) {
            buffer.append("(" + Float.toString(lowLimit).replace('.', ',') + "..." + Float.toString(hiLimit).replace('.', ',') + ")");
        } else {
            if (model.charAt(1) == '3') {
                Double res = ((hiLimit / 2) > (0.1 * koef[ed_izm])) ? (hiLimit - 0.1 * koef[ed_izm]) : (hiLimit / 2);
                String tmp = Double.toString(roundDownScale(res));
                buffer.append(tmp.replace('.', ','));
            } else {
                buffer.append(Float.toString(hiLimit).replace('.', ','));
            }
        }


        buffer.append(" " + ed_izmArr[ed_izm]);
        buffer.append((statArr[stat].equals("")) ? "" : "-" + statArr[stat]);

        buffer.append("-" + outArr[outType]);

        buffer.append((kmch == 0) ? "" : "-\u041d" + kmch);
        buffer.append((du == 0) ? "" : "-" + duArr[du]);
//        buffer.append((R) ? "-P" : "");

        if(StringUtils.isNotBlank(connector)){
            buffer.append(connectorTypes.get(connector));
        }


        //для цо добавляется буква Ф
        buffer.append(((isp == 3) & (model.charAt(0) == '5')) ? "-\u0424" : "");
        //для смарт добавляется буква К
        buffer.append(((isp == 3) & (model.charAt(0) == '7')) ? "-\u041A" : "");
        buffer.append((I) ? "-\u0418" : "");
        buffer.append((PI) ? "-\u041f\u0418" : "");
        buffer.append((HIM) ? "-\u0425\u0438\u043c" : "");
        buffer.append(((isp == 3) & (TU)) ? " \u0422\u0423 \u0423 24275859.002-99" : "");
        buffer.append(((isp != 3) & (TU)) ? " \u0422\u0423 \u0423 24275859.003-2000" : "");
        buffer.append((afterSpec == null) ? "" : " " + afterSpec);
        return buffer.toString();
    }

    public static double roundDownScale(double aValue) {
        BigDecimal decimal = new BigDecimal(aValue);
        decimal = decimal.setScale(4, BigDecimal.ROUND_HALF_DOWN);
        return decimal.doubleValue();
    }
}
