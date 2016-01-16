package ua.com.manometer.service.invoice;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.com.manometer.dao.invoice.InvoiceFilterDAO;
import ua.com.manometer.model.invoice.filter.BookingFilter;
import ua.com.manometer.model.invoice.filter.InvoiceFilter;

import java.util.List;

@Service
public class InvoiceFilterServiceImpl implements InvoiceFilterService {

    @Autowired
    private InvoiceFilterDAO invoicefilterDAO;

    @Override
    @Transactional
    public InvoiceFilter getInvoiceFilter(Integer id) {
         return invoicefilterDAO.getInvoiceFilter(id);
    }

    @Override
    @Transactional
    public void addInvoiceFilter(InvoiceFilter invoicefilter) {
        invoicefilterDAO.saveOrUpdateFilter(invoicefilter);
    }

    @Override
    @Transactional
    public List<InvoiceFilter> listInvoiceFilter() {
        return invoicefilterDAO.listInvoiceFilter();
    }

    @Override
    @Transactional
    public void removeInvoiceFilter(Integer id) {
        invoicefilterDAO.removeInvoiceFilter(id);
    }

    @Override
    public void addBookingFilter(BookingFilter bookingFilter) {
        invoicefilterDAO.saveOrUpdateFilter(bookingFilter);
    }
}
