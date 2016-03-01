package ua.com.manometer.dao.invoice;
import org.hibernate.Session;
import ua.com.manometer.model.invoice.Invoice;
import ua.com.manometer.model.invoice.InvoiceItem;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InvoiceItemDAOImpl implements InvoiceItemDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveInvoiceItem(InvoiceItem invoiceitem) {
        sessionFactory.getCurrentSession().saveOrUpdate(invoiceitem);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<InvoiceItem> listInvoiceItem() {
        javassist.util.proxy.Proxy xx;
        return sessionFactory.getCurrentSession().createQuery("from InvoiceItem").list();
    }

    @Override
    public void removeInvoiceItem(Integer id) {
        Session currentSession = sessionFactory.getCurrentSession();
        InvoiceItem invoiceitem = (InvoiceItem)   currentSession.load(InvoiceItem.class, id);
        if (invoiceitem != null) {
            currentSession.delete(invoiceitem);
        }
    }

    @Override
    public InvoiceItem getInvoiceItem(Integer id) {
        return (InvoiceItem) sessionFactory.getCurrentSession().get(InvoiceItem.class, id);
    }

}
