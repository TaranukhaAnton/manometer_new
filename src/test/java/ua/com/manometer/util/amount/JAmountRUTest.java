package ua.com.manometer.util.amount;

import org.junit.Test;

import java.math.BigDecimal;

/**
 * Created with IntelliJ IDEA.
 * User: anton
 * Date: 09.05.13
 * Time: 7:10
 * To change this template use File | Settings | File Templates.
 */
public class JAmountRUTest {
    @Test
    public void testGetAmount() throws Exception {
        JAmount amount = new JAmountUA();
        String amountStr = amount.getAmount(1, new BigDecimal("3002530142.80"));
        System.out.println("amount = " + amountStr);

    }

    @Test
    public void testGetRightPart() throws Exception {

    }

    @Test
    public void testAlignSumm() throws Exception {

    }

    @Test
    public void testToString() throws Exception {

    }

    @Test
    public void testGroupToString() throws Exception {

    }
}
