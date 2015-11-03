package ua.com.manometer.service.invoice;

import ua.com.manometer.model.invoice.Booking;
import ua.com.manometer.model.invoice.BookingFilter;

import java.util.Date;
import java.util.List;

public interface BookingService {

    void saveBooking(Booking booking);

    List<Booking> listBooking();

    void removeBooking(Integer id);

    Booking getBooking(Integer id);

    Boolean checkPresence(Integer number, String numberModifier, Date date);

    List<Booking> listFilteredBooking(BookingFilter filter);
}
