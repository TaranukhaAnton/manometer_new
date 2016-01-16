package ua.com.manometer.service.invoice;

import ua.com.manometer.model.invoice.filter.BookingFilter;
import ua.com.manometer.model.invoice.filter.InvoiceFilter;

import java.util.List;

public interface InvoiceFilterService {

    void addInvoiceFilter(InvoiceFilter invoicefilter);

    List<InvoiceFilter> listInvoiceFilter();

    void removeInvoiceFilter(Integer id);

    InvoiceFilter getInvoiceFilter(Integer id);

    void addBookingFilter(BookingFilter bookingFilter);
}
