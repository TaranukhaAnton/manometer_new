package ua.com.manometer.dao.invoice;
import ua.com.manometer.model.invoice.Booking;
import ua.com.manometer.model.invoice.filter.BookingFilter;

import java.util.Date;
import java.util.List;

public interface BookingDAO {

	 void saveBooking(Booking booking);

	 List<Booking> listBooking();

	 void removeBooking(Integer id);

    Boolean checkPresence(Integer number, String numberModifier, Date date);

    List<Booking> listFilteredBooking(BookingFilter filter);
}
