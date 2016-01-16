package ua.com.manometer.dao.invoice;

import org.hibernate.Session;
import ua.com.manometer.model.invoice.filter.InvoiceFilter;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InvoiceFilterDAOImpl implements InvoiceFilterDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public InvoiceFilter getInvoiceFilter(Integer id) {
        return (InvoiceFilter) sessionFactory.getCurrentSession().load(InvoiceFilter.class, id);
    }

    @Override
    public void saveOrUpdateFilter(Object filter) {
        Session currentSession = null;
        try {
            currentSession = sessionFactory.getCurrentSession();

        }catch (Throwable t){
            t.printStackTrace();
        }
        if (currentSession!=null){

            currentSession.save(filter);
        } else {
            currentSession = sessionFactory.openSession();
            currentSession.save(filter);

        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<InvoiceFilter> listInvoiceFilter() {
        return sessionFactory.getCurrentSession().createQuery("from InvoiceFilter").list();
    }

    @Override
    public void removeInvoiceFilter(Integer id) {
        InvoiceFilter invoicefilter = getInvoiceFilter(id);
        if (invoicefilter != null) {
            sessionFactory.getCurrentSession().delete(invoicefilter);
        }
    }

}
