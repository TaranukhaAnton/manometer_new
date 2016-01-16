package ua.com.manometer.dao.invoice;
import ua.com.manometer.model.invoice.filter.BookingFilter;
import ua.com.manometer.model.invoice.filter.InvoiceFilter;

import java.util.List;

public interface InvoiceFilterDAO {

	public void saveOrUpdateFilter(Object filter);

	public List<InvoiceFilter> listInvoiceFilter();

	public void removeInvoiceFilter(Integer id);

	InvoiceFilter getInvoiceFilter(Integer id);


}
