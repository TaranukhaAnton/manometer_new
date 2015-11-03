package ua.com.manometer;

import org.joda.time.DateTime;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 * Created with IntelliJ IDEA.
 * User: anton
 * Date: 10.02.13
 * Time: 19:30
 * To change this template use File | Settings | File Templates.
 */
public class test {

    public static void main(String[] args) {
        //
        // Creates an instance of DateTime.
        //
        DateTime dateTime = new DateTime().minusMonths(3).millisOfDay().withMinimumValue();

        //
        // Get the last date of the month using the dayOfMonth property
        // and get the maximum value from it.
        //
//        DateTime lastDate = dateTime.monthOfYear().setCopy(3).millisOfDay().withMinimumValue();
//        dateTime.add
//        DateTime firstDate = dateTime.millisOfDay().withMaximumValue();
       // lastDate.withLaterOffsetAtOverlap()

        System.out.println("lastDate.withLaterOffsetAtOverlap() = " + dateTime);
        System.out.println("lastDate.withLaterOffsetAtOverlap() = " + dateTime);

//
    }
}
